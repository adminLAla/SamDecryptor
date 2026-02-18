using System;
using System.IO;
using System.Reflection;
using System.Threading;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Text;

namespace SamDecryptor
{
    public static class Loader
    {
        // 配置区
        private const string TargetAssemblyName = "Game.Common";
        private static string LogPath = Path.Combine(Directory.GetCurrentDirectory(), "final_decrypt_log.txt");

        private static void Log(string msg)
        {
            try
            {
                // 同时输出到控制台和文件，确保不用看文件也能知道进度
                Console.WriteLine(msg);
                using (StreamWriter sw = new StreamWriter(LogPath, true)) { sw.WriteLine(msg); }
            }
            catch { }
        }

        public static void Main()
        {
            // 确保日志文件被重置
            try { File.WriteAllText(LogPath, $"=== 启动自动解密与恢复工具 v2.0 ===\r\n时间: {DateTime.Now}\r\n"); } catch { }

            Thread t = new Thread(Worker);
            t.IsBackground = false; //以此防止主程序退出导致线程被杀
            t.Start();
        }

        private static void Worker()
        {
            try
            {
                // ==========================================
                // 第一步：解密 (Decryption Phase)
                // ==========================================
                Log("\r\n[阶段 1/2] 开始提取密钥与解密文件...");
                Thread.Sleep(1000); // 给一点时间让 DLL 加载稳定

                // 1.1 查找核心类型
                Assembly asm = null;
                foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
                {
                    if (a.GetName().Name == TargetAssemblyName) { asm = a; break; }
                }

                if (asm == null)
                {
                    Log($"[严重错误] 未找到程序集 {TargetAssemblyName}。请确保已将 DLL 注入到游戏进程中。");
                    return;
                }

                // 反射获取混淆类
                Type typeYe = asm.GetType("$i.$Ye") ?? asm.GetType("$Ye");
                Type typeGe = asm.GetType("$i.$gE") ?? asm.GetType("$gE");
                Type typeJe = asm.GetType("$A.$JE") ?? asm.GetType("$i.$Je") ?? asm.GetType("$Je") ?? asm.GetType("$i.$JE");

                if (typeYe == null || typeGe == null || typeJe == null)
                {
                    Log($"[错误] 无法定位解密类 ($Ye, $gE, $Je). 可能是版本更新导致混淆名变更。");
                    return;
                }

                // 1.2 提取密钥
                Log("正在提取密钥...");
                FieldInfo fieldKey = typeYe.GetField("$kGA", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
                if (fieldKey == null) { Log("无法找到 Key 字段 $kGA"); return; }

                System.Runtime.CompilerServices.RuntimeHelpers.RunClassConstructor(typeYe.TypeHandle);
                object rawKey = fieldKey.GetValue(null);

                MethodInfo methodZy = typeJe.GetMethod("$Zy", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
                if (methodZy == null)
                {
                    // 模糊搜索 $Zy 方法 (特征：1个参数，返回 object)
                    foreach (var m in typeJe.GetMethods(BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public))
                    {
                        if (m.GetParameters().Length == 1 && m.ReturnType == typeof(object)) { methodZy = m; break; }
                    }
                }

                if (methodZy == null) { Log("无法找到 Key 处理方法 $Zy"); return; }

                object realKeyObj = methodZy.Invoke(null, new object[] { rawKey });
                Log("密钥对象获取成功。");

                // --- 打印 KEY  ---
                try
                {
                    Log($"Key 对象类型: {realKeyObj.GetType().FullName}");
                    if (realKeyObj is AesCryptoServiceProvider aes)
                    {
                        byte[] keyBytes = aes.Key;
                        string keyHex = BitConverter.ToString(keyBytes).Replace("-", "");
                        Log($"[HEX KEY]: {keyHex}");
                    }
                    else if (realKeyObj is SymmetricAlgorithm sym)
                    {
                        byte[] keyBytes = sym.Key;
                        string keyHex = BitConverter.ToString(keyBytes).Replace("-", "");
                        Log($"[HEX KEY (Sym)]: {keyHex}");
                    }
                    else if (realKeyObj is byte[] kb)
                    {
                        string keyHex = BitConverter.ToString(kb).Replace("-", "");
                        Log($"[HEX KEY (Bytes)]: {keyHex}");
                    }
                }
                catch (Exception ex)
                {
                    Log($"打印 Key 失败 (不影响解密): {ex.Message}");
                }
                // -----------------------------

                // 1.3 准备解密方法
                MethodInfo decryptMethod = typeGe.GetMethod("$RaA", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
                if (decryptMethod == null) { Log("无法找到解密方法 $RaA"); return; }
                ParameterInfo[] pars = decryptMethod.GetParameters();

                // 1.4 确定源文件夹 (优先找 sam，其次找 EncryptedSource)
                string currentDir = Directory.GetCurrentDirectory();
                string sourceDir = Path.Combine(currentDir, "sam");
                if (!Directory.Exists(sourceDir)) sourceDir = Path.Combine(currentDir, "EncryptedSource");

                if (!Directory.Exists(sourceDir))
                {
                    Log($"[错误] 找不到源文件夹 'sam' 或 'EncryptedSource'。请将加密文件放入其中。");
                    return;
                }

                // 准备输出目录
                string baseOutputDir = Path.Combine(currentDir, "DecryptedOutput");
                // 暂时不删除旧目录，防止误删，直接覆盖
                if (!Directory.Exists(baseOutputDir)) Directory.CreateDirectory(baseOutputDir);

                string dirAudio = Path.Combine(baseOutputDir, "audio");
                string dirChart = Path.Combine(baseOutputDir, "chart");
                string dirParam = Path.Combine(baseOutputDir, "parameters");
                string dirTrash = Path.Combine(baseOutputDir, "trash");
                string dirMisc = Path.Combine(baseOutputDir, "misc");

                Directory.CreateDirectory(dirAudio);
                Directory.CreateDirectory(dirChart);
                Directory.CreateDirectory(dirParam);
                Directory.CreateDirectory(dirTrash);
                Directory.CreateDirectory(dirMisc);

                string[] files = Directory.GetFiles(sourceDir, "*", SearchOption.AllDirectories); // 递归查找
                Log($"准备解密 {files.Length} 个文件...");

                int countAudio = 0, countChart = 0, countParam = 0, countTrash = 0, countMisc = 0, countFail = 0;
                byte[] ivBuffer = new byte[32];

                foreach (var file in files)
                {
                    string fileName = Path.GetFileName(file);
                    // 跳过非加密文件 (如果混在里面的话)
                    if (fileName.Length < 32 && !fileName.EndsWith(".bin")) continue;

                    try
                    {
                        byte[] fileData = File.ReadAllBytes(file);
                        Array.Clear(ivBuffer, 0, 32); // IV 归零

                        // 调用游戏内部解密函数
                        object[] args = new object[5];
                        args[0] = realKeyObj;
                        args[1] = fileData;
                        args[2] = ivBuffer;
                        args[3] = Convert.ChangeType(0, pars[3].ParameterType); // offset
                        args[4] = Convert.ChangeType(512, pars[4].ParameterType); // size
                        decryptMethod.Invoke(null, args); // 原地修改 fileData

                        // 1.5 内容识别与分类
                        string extension = ".bin";
                        bool isText = false;
                        string targetSubDir = dirMisc;

                        if (fileData.Length >= 16)
                        {
                            // --- Trash Check ---
                            bool isTrash = true;
                            for (int k = 0; k < 16; k++) { if (fileData[k] != (byte)k) { isTrash = false; break; } }

                            if (isTrash)
                            {
                                extension = ".txt"; isText = true; targetSubDir = dirTrash; countTrash++;
                            }
                            // --- Parameters Check ---
                            // 'p', 'a', 'r', 'a', 'm'
                            else if (fileData[0] == 0x70 && fileData[1] == 0x61 && fileData[2] == 0x72 && fileData[3] == 0x61 && fileData[4] == 0x6D)
                            {
                                extension = ".txt"; isText = true; targetSubDir = dirParam; countParam++;
                            }
                            // --- Chart Check (chart) ---
                            // 'c', 'h', 'a', 'r', 't'
                            else if (fileData[0] == 0x63 && fileData[1] == 0x68 && fileData[2] == 0x61 && fileData[3] == 0x72 && fileData[4] == 0x74)
                            {
                                extension = ".txt"; isText = true; targetSubDir = dirChart; countChart++;
                            }
                            // --- Audio Check (OggS) ---
                            else if (fileData[0] == 'O' && fileData[1] == 'g' && fileData[2] == 'g' && fileData[3] == 'S')
                            {
                                extension = ".ogg"; targetSubDir = dirAudio; countAudio++;
                            }
                            // --- Audio Check (RIFF Wave) ---
                            else if (fileData[0] == 'R' && fileData[1] == 'I' && fileData[2] == 'F' && fileData[3] == 'F')
                            {
                                extension = ".wav"; targetSubDir = dirAudio; countAudio++;
                            }
                            else
                            {
                                countMisc++;
                            }
                        }
                        else { countMisc++; }

                        // 输出文件
                        // 保持原始 32 位哈希文件名 (例如 59db0d5a...) + 后缀
                        // 如果文件名本身包含 .ogg.bin 这种，这里只保留前面的哈希
                        string cleanHashName = fileName;
                        if (cleanHashName.Contains(".")) cleanHashName = Path.GetFileNameWithoutExtension(cleanHashName);
                        if (cleanHashName.Contains(".")) cleanHashName = Path.GetFileNameWithoutExtension(cleanHashName); // 再次尝试剥离

                        string outPath = Path.Combine(targetSubDir, cleanHashName + extension);

                        if (isText)
                        {
                            // BOM 修复
                            byte[] dataWithBOM = new byte[fileData.Length + 3];
                            dataWithBOM[0] = 0xEF; dataWithBOM[1] = 0xBB; dataWithBOM[2] = 0xBF;
                            Array.Copy(fileData, 0, dataWithBOM, 3, fileData.Length);
                            File.WriteAllBytes(outPath, dataWithBOM);
                        }
                        else
                        {
                            File.WriteAllBytes(outPath, fileData);
                        }
                    }
                    catch (Exception ex)
                    {
                        countFail++;
                        Log($"[解密失败] {fileName}: {ex.Message}");
                    }
                }

                Log($"\r\n[阶段 1 完成] 解密统计:");
                Log($"- Audio: {countAudio} | Chart: {countChart} | Param: {countParam}");
                Log($"解密文件已保存至: {baseOutputDir} (尚未重命名)");


                // ==========================================
                // 第二步：恢复文件名 (Restoration Phase)
                // ==========================================
                Log("\r\n[阶段 2/2] 开始解析 Mapping 并恢复文件名...");

                string jsonPath = Path.Combine(currentDir, "StreamingAssetsMapping.json");
                if (!File.Exists(jsonPath))
                {
                    Log("[警告] 未找到 StreamingAssetsMapping.json！解密已完成但无法重命名。");
                    return;
                }

                string jsonContent = File.ReadAllText(jsonPath);
                Dictionary<string, string> map = new Dictionary<string, string>();

                Regex regexPaths = new Regex("\"FullLookupPath\":\\s*\"(.*?)\"", RegexOptions.IgnoreCase);
                Regex regexGuids = new Regex("\"Guid\":\\s*\"(.*?)\"", RegexOptions.IgnoreCase);
                MatchCollection matchesPath = regexPaths.Matches(jsonContent);
                MatchCollection matchesGuid = regexGuids.Matches(jsonContent);

                if (matchesPath.Count == 0)
                {
                    Log("[错误] Mapping 文件格式不正确或为空。");
                    return;
                }

                // 建立 GUID -> 路径 的映射
                int mapLimit = Math.Min(matchesPath.Count, matchesGuid.Count);
                for (int i = 0; i < mapLimit; i++)
                {
                    string path = matchesPath[i].Groups[1].Value;
                    string guid = matchesGuid[i].Groups[1].Value.ToLower(); // 统一小写
                    if (!map.ContainsKey(guid))
                    {
                        map.Add(guid, path);
                    }
                }
                Log($"映射表加载完毕，共 {map.Count} 条数据。");

                string outputBaseDir = Path.Combine(currentDir, "RestoredAssets");
                if (!Directory.Exists(outputBaseDir)) Directory.CreateDirectory(outputBaseDir);

                // 遍历刚才解密出来的所有 output 文件夹
                string[] decryptedFiles = Directory.GetFiles(baseOutputDir, "*.*", SearchOption.AllDirectories);
                int restoreCount = 0;

                foreach (var file in decryptedFiles)
                {
                    string fileNameNoExt = Path.GetFileNameWithoutExtension(file);
                    // 确保只有 32 位 hash (不管原来有多少个后缀)
                    if (fileNameNoExt.Contains(".")) fileNameNoExt = Path.GetFileNameWithoutExtension(fileNameNoExt);

                    string hash = fileNameNoExt.ToLower();

                    if (hash.Length == 32 && map.ContainsKey(hash))
                    {
                        string originalPath = map[hash];
                        string currentExtension = Path.GetExtension(file);

                        // 构建最终目标路径
                        string restoredPath = Path.Combine(outputBaseDir, originalPath);

                        // --- 智能修正扩展名 ---
                        // 如果映射表里是 .wav，但我们手头是 .ogg，强行改为 .ogg
                        if (currentExtension == ".ogg" && restoredPath.EndsWith(".wav", StringComparison.OrdinalIgnoreCase))
                        {
                            restoredPath = Path.ChangeExtension(restoredPath, ".ogg");
                        }
                        // 如果是谱面文件，映射表里通常是 .spc/.sps，我们保持解密的 .txt 后缀以便查看
                        // 或者想还原成 sps 也可以，这里我选择加上 .txt 以便直接打开
                        if (currentExtension == ".txt" && !restoredPath.EndsWith(".txt"))
                        {
                            restoredPath += ".txt";
                        }
                        // ---------------------

                        try
                        {
                            string targetDir = Path.GetDirectoryName(restoredPath);
                            if (!Directory.Exists(targetDir)) Directory.CreateDirectory(targetDir);

                            if (!File.Exists(restoredPath))
                            {
                                File.Copy(file, restoredPath);
                                restoreCount++;
                                Log($"[恢复] {hash} -> {originalPath}");
                            }
                        }
                        catch (Exception ex)
                        {
                            Log($"[文件移动失败] {hash}: {ex.Message}");
                        }
                    }
                }

                Log($"\r\n========================================");
                Log($"所有任务完成！");
                Log($"1. 解密文件位于: {baseOutputDir} (原始 Hash 名)");
                Log($"2. 分类还原位于: {outputBaseDir} (完美目录结构)");
                Log($"共恢复: {restoreCount} 个文件");
                Log($"========================================");

            }
            catch (Exception ex)
            {
                Log("\r\n[Fatal Error] 程序运行中发生严重错误:\r\n" + ex.ToString());
            }
        }
    }
}