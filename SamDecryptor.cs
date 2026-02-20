using System;
using System.IO;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Text;
using System.Threading;

namespace SamDecryptor
{
    public static class Loader
    {
        private static string LogPath = Path.Combine(Directory.GetCurrentDirectory(), "decrypt_log.txt");

        internal static void Log(string msg)
        {
            try
            {
                Console.WriteLine(msg);
                using (StreamWriter sw = new StreamWriter(LogPath, true)) { sw.WriteLine(msg); }
            }
            catch { }
        }

        public static void Main()
        {
            Console.Title = "In Falsus Demo - 独立解密还原工具 v2.2";
            try { File.WriteAllText(LogPath, $"=== 启动解密工具 v2.2 ===\r\n时间: {DateTime.Now}\r\n"); } catch { }

            Thread t = new Thread(Worker);
            t.IsBackground = false;
            t.Start();
        }

        private static void Worker()
        {
            try
            {
                Log("[阶段 0] 初始化算法...");
                XtsCore.Initialize();

                string currentDir = Directory.GetCurrentDirectory();

                Log("\r\n[阶段 1] 加载映射表...");
                string jsonPath = FindFile(currentDir, "StreamingAssetsMapping.json");
                if (jsonPath == null)
                {
                    Log("[错误] 未找到 StreamingAssetsMapping.json。");
                    Console.ReadKey();
                    return;
                }

                Dictionary<string, string> map = LoadMapping(jsonPath);
                if (map.Count == 0) { Log("[错误] 映射表为空或解析失败。"); Console.ReadKey(); return; }

                string sourceDir = Path.Combine(currentDir, "sam");
                if (!Directory.Exists(sourceDir))
                {
                    if (Directory.Exists("EncryptedSource")) sourceDir = "EncryptedSource";
                    else if (Directory.Exists(Path.Combine("In Falsus Demo_Data", "StreamingAssets", "sam")))
                        sourceDir = Path.Combine("In Falsus Demo_Data", "StreamingAssets", "sam");
                }

                if (!Directory.Exists(sourceDir))
                {
                    Log("[错误] 未找到加密文件夹 'sam'。");
                    Console.ReadKey();
                    return;
                }

                string outputBaseDir = Path.Combine(currentDir, "RestoredAssets");
                if (!Directory.Exists(outputBaseDir)) Directory.CreateDirectory(outputBaseDir);

                string[] files = Directory.GetFiles(sourceDir, "*", SearchOption.AllDirectories);
                Log($"\r\n[阶段 2] 开始处理 {files.Length} 个文件...");

                int countOgg = 0, countTxt = 0, countMisc = 0;

                foreach (var file in files)
                {
                    string fileName = Path.GetFileName(file);
                    // 兼容文件名可能带后缀的情况，提取纯GUID
                    string hashKey = Path.GetFileNameWithoutExtension(fileName).ToLower();
                    if (hashKey.Contains(".")) hashKey = Path.GetFileNameWithoutExtension(hashKey);

                    // 只处理在映射表里的文件
                    if (map.ContainsKey(hashKey))
                    {
                        try
                        {
                            // 1. 先解密
                            byte[] data = XtsCore.DecryptFile(file);
                            if (data == null || data.Length == 0) continue;

                            // 2. 从 Mapping 获取原始路径信息
                            string originalPath = map[hashKey];
                            string dirName = Path.GetDirectoryName(originalPath);
                            string fileNameNoExt = Path.GetFileNameWithoutExtension(originalPath);
                            string originalExt = Path.GetExtension(originalPath).ToLower();

                            // 3. 基于文件头的类型修正
                            string finalExt = originalExt;
                            bool needBom = false;

                            // --- 检查 OGG ---
                            if (data.Length >= 4 && data[0] == 'O' && data[1] == 'g' && data[2] == 'g' && data[3] == 'S')
                            {
                                finalExt = ".ogg";
                                countOgg++;
                            }

                            // --- 其他文本/数据处理 ---
                            else
                            {
                                // 常见的文本格式，或者谱面文件
                                if (originalExt == ".spc" || originalExt == ".sps" ||
                                    originalExt == ".xml" || originalExt == ".json" ||
                                    originalExt == ".txt")
                                {
                                    // 给 spc/sps 加上 .txt 让用户可以直接打开编辑
                                    if (originalExt == ".spc" || originalExt == ".sps")
                                        finalExt = originalExt + ".txt";

                                    needBom = true; // 可以在这里控制是否添加 BOM
                                    countTxt++;
                                }
                                else
                                {
                                    countMisc++;
                                }
                            }

                            // 4. 组合最终路径
                            string finalFileName = fileNameNoExt + finalExt;
                            string finalFullPath = Path.Combine(outputBaseDir, dirName, finalFileName);

                            // 5. 写入
                            string targetDir = Path.GetDirectoryName(finalFullPath);
                            if (!Directory.Exists(targetDir)) Directory.CreateDirectory(targetDir);

                            if (needBom)
                            {
                                // 添加 UTF-8 BOM (EF BB BF) 以便记事本正常显示
                                byte[] dataWithBOM = new byte[data.Length + 3];
                                dataWithBOM[0] = 0xEF; dataWithBOM[1] = 0xBB; dataWithBOM[2] = 0xBF;
                                Array.Copy(data, 0, dataWithBOM, 3, data.Length);
                                File.WriteAllBytes(finalFullPath, dataWithBOM);
                            }
                            else
                            {
                                File.WriteAllBytes(finalFullPath, data);
                            }

                            Log($"[OK] {hashKey} -> {Path.GetFileName(finalFullPath)}");
                        }
                        catch (Exception ex)
                        {
                            Log($"[Error] {hashKey}: {ex.Message}");
                        }
                    }
                }

                Log($"\r\n=== 完成 ===\r\nOGG: {countOgg}, Text/Chart: {countTxt}, Misc: {countMisc}");
                Console.WriteLine("按任意键退出...");
                Console.ReadKey();
            }
            catch (Exception ex)
            {
                Log($"[致命错误] {ex}");
                Console.ReadKey();
            }
        }

        private static string FindFile(string startDir, string name)
        {
            if (File.Exists(Path.Combine(startDir, name))) return Path.Combine(startDir, name);
            string[] subDirs = new[] { "In Falsus Demo_Data/StreamingAssets", "StreamingAssets" };
            foreach (var d in subDirs)
            {
                string p = Path.Combine(startDir, d, name);
                if (File.Exists(p)) return p;
            }
            return null;
        }

        private static Dictionary<string, string> LoadMapping(string path)
        {
            var map = new Dictionary<string, string>();
            try
            {
                string jsonContent = File.ReadAllText(path);

                // 修复后的正则：先匹配 FullLookupPath，再匹配 Guid
                // 原始 JSON 结构： "FullLookupPath": "...", "Guid": "...",
                Regex regex = new Regex("\"FullLookupPath\"\\s*:\\s*\"(.*?)\"[\\s\\S]*?\"Guid\"\\s*:\\s*\"([a-fA-F0-9]{32})\"", RegexOptions.IgnoreCase);

                MatchCollection matches = regex.Matches(jsonContent);

                foreach (Match m in matches)
                {
                    string p = m.Groups[1].Value;       // Group 1: Path
                    string guid = m.Groups[2].Value.ToLower(); // Group 2: Guid

                    if (!map.ContainsKey(guid))
                    {
                        map.Add(guid, p);
                    }
                }
                Log($"映射表加载完毕，解析到 {map.Count} 条记录。");
            }
            catch (Exception ex)
            {
                Log($"解析 JSON 失败: {ex.Message}");
            }
            return map;
        }
    }

    public static class XtsCore
    {
        private static Aes _aesData;
        private static Aes _aesTweak;

        public static void Initialize()
        {
            if (_aesData != null) return;
            
            byte[] HexToBytes(string hex)
            {
                int NumberChars = hex.Length;
                byte[] bytes = new byte[NumberChars / 2];
                for (int i = 0; i < NumberChars; i += 2)
                    bytes[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);
                return bytes;
            }

            byte[] dataKey = HexToBytes("D98633AC10EB3D600FBECBA023FADF58");
            byte[] tweakKey = HexToBytes("B3BC4F5C8FBFC6B2126A50EFAE032210");

            _aesData = Aes.Create(); _aesData.Mode = CipherMode.ECB; _aesData.Padding = PaddingMode.None; _aesData.Key = dataKey;
            _aesTweak = Aes.Create(); _aesTweak.Mode = CipherMode.ECB; _aesTweak.Padding = PaddingMode.None; _aesTweak.Key = tweakKey;

            Loader.Log($"[KeyInfo] DataKey: {BitConverter.ToString(dataKey).Replace("-", "")}");
            Loader.Log($"[KeyInfo] TweakKey: {BitConverter.ToString(tweakKey).Replace("-", "")}");
        }
        private static byte[] TweakMul2(byte[] t)
        {
            bool c = (t[15] & 0x80) != 0;
            byte[] r = new byte[16];
            byte s = 0;
            for (int i = 0; i < 16; i++) { byte n = (byte)((t[i] & 0x80) >> 7); r[i] = (byte)((t[i] << 1) | s); s = n; }
            if (c) r[0] ^= 0x87;
            return r;
        }
        private static void XorBlock(byte[] b, byte[] k) { for (int i = 0; i < 16; i++) b[i] ^= k[i]; }
        public static byte[] DecryptFile(string filePath)
        {
            if (_aesData == null) Initialize();
            byte[] fileData = File.ReadAllBytes(filePath);
            if (fileData.Length == 0) return fileData;
            using (ICryptoTransform decData = _aesData.CreateDecryptor())
            using (ICryptoTransform encTweak = _aesTweak.CreateEncryptor())
            {
                int blockSize = 16, chunkSize = 512, sector = 0;
                byte[] finalResult = new byte[fileData.Length];
                for (int offset = 0; offset < fileData.Length; offset += chunkSize)
                {
                    int len = Math.Min(chunkSize, fileData.Length - offset);
                    byte[] chunk = new byte[len];
                    Array.Copy(fileData, offset, chunk, 0, len);
                    byte[] sb = new byte[16]; Array.Copy(BitConverter.GetBytes(sector), 0, sb, 0, 4);
                    byte[] tw = new byte[16]; encTweak.TransformBlock(sb, 0, 16, tw, 0);
                    int nf = len / blockSize, rem = len % blockSize;
                    byte[] curTw = new byte[16]; Array.Copy(tw, curTw, 16);
                    int stdBlocks = (rem > 0) ? nf - 1 : nf;
                    byte[] resChunk = new byte[len];
                    for (int i = 0; i < stdBlocks; i++)
                    {
                        int off = i * blockSize;
                        byte[] blk = new byte[blockSize]; Array.Copy(chunk, off, blk, 0, blockSize);
                        XorBlock(blk, curTw);
                        byte[] dec = new byte[blockSize]; decData.TransformBlock(blk, 0, blockSize, dec, 0);
                        XorBlock(dec, curTw);
                        Array.Copy(dec, 0, resChunk, off, blockSize);
                        curTw = TweakMul2(curTw);
                    }
                    if (rem > 0)
                    {
                        byte[] twMm1 = new byte[16]; Array.Copy(curTw, twMm1, 16);
                        byte[] twM = TweakMul2(twMm1);
                        int offMm1 = stdBlocks * blockSize, offM = offMm1 + blockSize;
                        byte[] C_Mm1 = new byte[blockSize]; Array.Copy(chunk, offMm1, C_Mm1, 0, blockSize);
                        byte[] C_Mp = new byte[rem]; Array.Copy(chunk, offM, C_Mp, 0, rem);
                        byte[] temp = new byte[blockSize]; Array.Copy(C_Mm1, temp, blockSize);
                        XorBlock(temp, twM);
                        byte[] TT = new byte[blockSize]; decData.TransformBlock(temp, 0, blockSize, TT, 0);
                        XorBlock(TT, twM);
                        Array.Copy(TT, 0, resChunk, offM, rem);
                        byte[] Cp = new byte[blockSize];
                        Array.Copy(C_Mp, 0, Cp, 0, rem); Array.Copy(TT, rem, Cp, rem, blockSize - rem);
                        XorBlock(Cp, twMm1);
                        byte[] PMm1 = new byte[blockSize]; decData.TransformBlock(Cp, 0, blockSize, PMm1, 0);
                        XorBlock(PMm1, twMm1);
                        Array.Copy(PMm1, 0, resChunk, offMm1, blockSize);
                    }
                    else if (stdBlocks < nf)
                    {
                        int off = stdBlocks * blockSize;
                    }
                    Array.Copy(resChunk, 0, finalResult, offset, resChunk.Length);
                    sector++;
                }
                return finalResult;
            }
        }
    }
}