using System;
using System.IO;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Numerics;
using System.Text;
using System.Threading;

namespace SamDecryptor
{
    public static class Loader
    {
        private static string LogPath = Path.Combine(Directory.GetCurrentDirectory(), "decrypt_log.txt");

        private static void Log(string msg)
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
            Console.Title = "In Falsus Demo - 独立解密还原工具 v2.1";
            try { File.WriteAllText(LogPath, $"=== 启动解密工具 v2.1 ===\r\n时间: {DateTime.Now}\r\n"); } catch { }

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
                                // 添加 UTF-8 BOM (EF BB BF) 以便记事本正常显示中文
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

    // ...existing code... (XtsCore class remains unchanged)
    public static class XtsCore
    {
        private static readonly string[] I_GA_STRINGS = new string[] {
            "4824486181995125173639538061768666194264666758055713984862930155186099005153308433721967964864086593489869790803618292212471008421163222360440783541836134497866990203323332377188839104143926142392360855153547595329183897557314847542104737664180950160400387066489303834682515445997344003164836878322828453715989978680882878974169302966714292025854364814935865053834727459671096432867707519727549207376834467961980703389998379537561621483347319380041100889890961442863496462080000",
            "-18177437175562536783026305265337327666361038124383674285699492848982734221352520345239138176965676606548389152664107115329449244202765070600929857310620280735795309539412796598315449379691743627035586322704313847852733365162365788693144617766772252206745701886206369027350920693903194380040074545333197891577842560987171675340009121352121091741596056646022237126073808404439167080094892509425503347987040024853015934805340629809376227640315460824331683899644311369081308160",
            "5697557915877829173632356811289962829014452354569122432365796113947018464768462639625840149066396068104806363016566912367293152254400943949837285045855494715591435010370726023728734130083777744968054948756225420781661017394236738599282257477719998161610946590123913066385809287358360206821907759295914674590880303913039118125459913707590913245407542662046697244664311872477954295958438849613153080454451128983928691968138988018467561724536374673706363221984483577504",
            "-718243637592879517975778522768039537009382142133219174247788014334673394349391029771476596006336223717197577170595707832521868350197505797305090944043235096278859526995757712471821118884364739174672799484883604179576928244780896568350635951919519689855382210052983323634974792565623223126464092058099704290612747983681534128718176179440642683940141729246870387782329888595310207149404849841770836563733389470602266262031784136528122901412719790639222458370920",
            "45817388814966542989407469096244294482030958122120859634576914679397408176687297750756232084275984169504990683932677773055282299762433939497764447039595873374017759372149174480567000436479897312458414433852216603526906392706774849813024794012592685932513706356695775762593542244187898104093914470045650267539413383118319633164693034273195363315337216056336899161075606580424793670230441466123353288786424297340110777724836458861143291241602509618763212",
            "-1563620734875452440889764915887965674484119752347815316377825350687099220791399668882779368336201952126530482733304067765826237227178299128314382770457620205507077684041455192898007925447774151849075192934142489660288291839250671140843757869442162914610463663782726008974874113057656051971731983629504198560081373201350504231455936838964686647155709010608473843461750758241379172616052096828978261515400993865113291519371805672671983363300425618",
            "27791655177892007118875570480554411375961571757744768737172912870510775772664658358588806987689501806672013504443327219530759680113564144736079103626400611541244628636637799239846816322965412064877775165709307418594501678365622373936774941112891842952441322570273517839888888523082040098882970101703227794753714287275632551811470442055894909118316766946307399582790866372432506057894535262265933055634550444661045085844153204012310161459",
            "-232772526301504344169883018461223857525586877467996430399137018604621744178995321902734423799948609665752634095414862305912916341143604977825333718206501833251617743661775765383764085780856771900657317242395202072386863590320245759285842473993339206334993711295644109849373172512773686421566834655456746594029834610698179565885654423221269534473258566036188344320402394857883510214864081851870578952633482804775735594378667644073",
            "791654154295162910406775655918683599140357361679865025191766471271257110004569567344070659630891778902701796394083586651880954751514221554559625919646159668237916431920721742614558411909001522086490479622530395936236456958870666805366776077963311067060119026978611174654567609982894220253070683969252016066934998403235093524580284819910417057736143874297953021420269663665299050204657577686908724245567460837986273883678",
            "-1242589307743897871847995358898627706297076062027805767683677711227533341397978543791790994814917381789310119143991109829588507100018277134985937454737704505883138033808242331427124407292112713908495018599943027636764047387650243260433567677337944087836293143755361228907821172882652812629099115728112266644879636789938406622975118651847909753545290044435288279808960524788077835543376375940766456928800188730432",
            "894514766095820596906064210983351693993396392227873747848077220854690684734029268647722065471062942390504727910246330606876161240255252126337902179957171071049289842504576396168983771008736896682054372011764872708920295557266325578616391902530175042587431775938528820071346302712474729708000034810131233262740602302281522465083148752449574370739607587307341873230358893006096129422358768902251782265027",
            "-233728997849927134033561046446255970752539891689752056183828230753304028146140449710979464518527236227698073470704462785348502446056097870427282936524215767809197118711958291150812722021404079055582231150746390739953971416569276394963191468192106621111682526218102636492496648543611237338405423777942224947839705276183486458538175787939391628839199163168780208130146418699970024781169752789917"
        };
        private static readonly string HGA_STRING = "105317163705622880765840521786162023371198954989823266518570175875323431443884159874295971284426309224143279306936842529471693440117884982651578195415567021101989667615290915549774852832481728709767264008813514348175896541580340261343009356698192605468105360524365936416645026476915119286667015471156345341666065108594222447354187857717561534053201897348704870528667753788437395040254605267381589576889793300779762718902922574466507045921074654331486188800000";

        private static Aes _aesData;
        private static Aes _aesTweak;

        public static void Initialize()
        {
            if (_aesData != null) return;
            BigInteger[] I_GA = new BigInteger[I_GA_STRINGS.Length];
            for (int i = 0; i < I_GA_STRINGS.Length; i++) I_GA[i] = BigInteger.Parse(I_GA_STRINGS[i]);
            BigInteger HGA = BigInteger.Parse(HGA_STRING);
            BigInteger HashInt(int x)
            {
                BigInteger result = 0;
                for (int i = I_GA.Length - 1; i >= 0; i--) result = result * x + I_GA[i];
                result = result / HGA;
                return result & ((BigInteger.One << 64) - 1);
            }
            byte[] GetKey(int seed1, int seed2)
            {
                BigInteger p1 = HashInt(seed1);
                BigInteger p2 = HashInt(seed2);
                byte[] key = new byte[16];
                Array.Copy(BitConverter.GetBytes((ulong)p1), 0, key, 0, 8);
                Array.Copy(BitConverter.GetBytes((ulong)p2), 0, key, 8, 8);
                return key;
            }
            _aesData = Aes.Create(); _aesData.Mode = CipherMode.ECB; _aesData.Padding = PaddingMode.None; _aesData.Key = GetKey(612346124, 8671344);
            _aesTweak = Aes.Create(); _aesTweak.Mode = CipherMode.ECB; _aesTweak.Padding = PaddingMode.None; _aesTweak.Key = GetKey(1611115665, 23545672);
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