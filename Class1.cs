using System;
using System.IO;
using System.Reflection;
using System.Threading;

namespace SamDecryptor
{
    public static class Loader
    {
        // 配置区
        private const string TargetAssemblyName = "Game.Common";
        
        // 日志
        private static string LogPath = Path.Combine(Directory.GetCurrentDirectory(), "decrypt_log.txt");
        private static void Log(string msg) { try { using (StreamWriter sw = new StreamWriter(LogPath, true)) { sw.WriteLine(msg); } } catch { } }

        public static void Main() { new Thread(Worker).Start(); }

        private static void Worker()
        {
            try
            {
                File.WriteAllText(LogPath, "启动自动解密与分类 v1.1 \r\n");
                Thread.Sleep(3000);

                // 1. 查找核心类型 
                Assembly asm = null;
                foreach (var a in AppDomain.CurrentDomain.GetAssemblies()) if (a.GetName().Name == TargetAssemblyName) { asm = a; break; }
                if (asm == null) { Log("未找到 " + TargetAssemblyName); return; }

                Type typeYe = asm.GetType("$i.$Ye") ?? asm.GetType("$Ye");
                Type typeGe = asm.GetType("$i.$gE") ?? asm.GetType("$gE");
                Type typeJe = asm.GetType("$A.$JE") ?? asm.GetType("$i.$Je") ?? asm.GetType("$Je") ?? asm.GetType("$i.$JE");

                if (typeYe == null || typeGe == null || typeJe == null) { Log("类查找失败"); return; }

                // 2. 提取并转换 Key 
                FieldInfo fieldKey = typeYe.GetField("$kGA", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
                System.Runtime.CompilerServices.RuntimeHelpers.RunClassConstructor(typeYe.TypeHandle);
                object rawKey = fieldKey.GetValue(null);

                MethodInfo methodZy = typeJe.GetMethod("$Zy", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
                if (methodZy == null)
                {
                    foreach (var m in typeJe.GetMethods(BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public))
                    {
                        if (m.GetParameters().Length == 1 && m.ReturnType == typeof(object)) { methodZy = m; break; }
                    }
                }
                object realKey = methodZy.Invoke(null, new object[] { rawKey });
                Log("Key OK.");

                // 3. 准备解密 
                MethodInfo decryptMethod = typeGe.GetMethod("$RaA", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
                ParameterInfo[] pars = decryptMethod.GetParameters();

                string sourceDir = Path.Combine(Directory.GetCurrentDirectory(), "EncryptedSource");
                if (!Directory.Exists(sourceDir)) Directory.CreateDirectory(sourceDir);
                
                // 准备输出目录
                string baseOutputDir = Path.Combine(Directory.GetCurrentDirectory(), "DecryptedOutput");
                if (!Directory.Exists(baseOutputDir)) Directory.CreateDirectory(baseOutputDir);

                string dirAudio = Path.Combine(baseOutputDir, "audio");
                string dirChart = Path.Combine(baseOutputDir, "chart");
                string dirParam = Path.Combine(baseOutputDir, "parameters");
                string dirTrash = Path.Combine(baseOutputDir, "trash");
                string dirMisc  = Path.Combine(baseOutputDir, "misc"); 

                Directory.CreateDirectory(dirAudio);
                Directory.CreateDirectory(dirChart);
                Directory.CreateDirectory(dirParam);
                Directory.CreateDirectory(dirTrash);
                Directory.CreateDirectory(dirMisc);

                string[] files = Directory.GetFiles(sourceDir);
                Log("开始处理 " + files.Length + " 个文件...");
                
                // 统计计数器
                int countAudio = 0;
                int countChart = 0;
                int countParam = 0;
                int countTrash = 0;
                int countMisc = 0;
                int countFail = 0;

                byte[] ivBuffer = new byte[32];

                foreach (var file in files)
                {
                    string fileName = Path.GetFileName(file);
                    try
                    {
                        byte[] fileData = File.ReadAllBytes(file);
                        Array.Clear(ivBuffer, 0, 32);

                        // Invoke
                        object[] args = new object[5];
                        args[0] = realKey;
                        args[1] = fileData;
                        args[2] = ivBuffer;
                        args[3] = Convert.ChangeType(0, pars[3].ParameterType);
                        args[4] = Convert.ChangeType(512, pars[4].ParameterType);
                        decryptMethod.Invoke(null, args);

                        // 4. 内容识别与分类
                        string extension = ".bin";
                        bool isText = false;
                        string targetDir = dirMisc;

                        if (fileData.Length >= 16)
                        {
                            // --- Trash Check ---
                            bool isTrash = true;
                            for(int k=0; k<16; k++) {
                                if(fileData[k] != (byte)k) { isTrash = false; break; }
                            }

                            if (isTrash)
                            {
                                extension = ".txt"; 
                                isText = true;
                                targetDir = dirTrash;
                                countTrash++;
                            }
                            // --- Parameters Check ---
                            else if (fileData[0] == 0x70 && fileData[1] == 0x61 && fileData[2] == 0x72 && fileData[3] == 0x61 && fileData[4] == 0x6D)
                            {
                                extension = ".txt";
                                isText = true;
                                targetDir = dirParam;
                                countParam++;
                            }
                            // --- Chart Check 1 (chart) ---
                            else if (fileData[0] == 0x63 && fileData[1] == 0x68 && fileData[2] == 0x61 && fileData[3] == 0x72 && fileData[4] == 0x74)
                            {
                                extension = ".txt";
                                isText = true;
                                targetDir = dirChart;
                                countChart++;
                            }
                            // --- Audio Check (OggS) ---
                            else if (fileData[0] == 'O' && fileData[1] == 'g' && fileData[2] == 'g' && fileData[3] == 'S')
                            {
                                extension = ".ogg";
                                targetDir = dirAudio;
                                countAudio++;
                            }
                            // --- Audio Check (RIFF Wave) ---
                            else if (fileData[0] == 'R' && fileData[1] == 'I' && fileData[2] == 'F' && fileData[3] == 'F')
                            {
                                extension = ".wav";
                                targetDir = dirAudio;
                                countAudio++;
                            }
                            else 
                            {
                                // 未识别归类到 Misc
                                countMisc++;
                            }
                        }
                        else
                        {
                            countMisc++;
                        }

                        string outPath = Path.Combine(targetDir, fileName + extension);
                        
                        if (isText)
                        {    
                            // 手动添加 UTF-8 BOM，防止记事本乱码
                            byte[] dataWithBOM = new byte[fileData.Length + 3];
                            dataWithBOM[0] = 0xEF;
                            dataWithBOM[1] = 0xBB;
                            dataWithBOM[2] = 0xBF;
                            Array.Copy(fileData, 0, dataWithBOM, 3, fileData.Length);
                            
                            File.WriteAllBytes(outPath, dataWithBOM);
                        }
                        else
                        {
                            File.WriteAllBytes(outPath, fileData);
                        }
                    }
                    catch (Exception)
                    {
                        countFail++;
                        try { Log("[Fail] " + fileName); } catch { }
                    }
                }

                // 5. 输出统计信息
                Log("\r\n=== 解密统计 ===");
                Log("总文件数: " + files.Length);
                Log("- Audio (音频): " + countAudio);
                Log("- Chart (谱面): " + countChart);
                Log("- Parameters (配置): " + countParam);
                Log("- Trash (垃圾数据): " + countTrash);
                Log("- Misc (其他/未识别): " + countMisc);
                if (countFail > 0) Log("- Fail (失败): " + countFail);
                Log("==================");
                Log("全部完成。");
            }
            catch (Exception ex) { Log("Fatal Error: " + ex.Message); }
        }
    }
}