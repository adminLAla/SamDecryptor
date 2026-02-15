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
        private const string ClassNameKey = "$i.$Ye"; 

        // 日志
        private static string LogPath = Path.Combine(Directory.GetCurrentDirectory(), "decrypt_log.txt");
        private static void Log(string msg) { try { using (StreamWriter sw = new StreamWriter(LogPath, true)) { sw.WriteLine(msg); } } catch { } }

        public static void Main() { new Thread(Worker).Start(); }

        private static void Worker()
        {
            try
            {
                File.WriteAllText(LogPath, "启动自动解密 v1.0\r\n");
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
                // 自动搜索 $Zy
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
                string outputDir = Path.Combine(Directory.GetCurrentDirectory(), "DecryptedOutput");
                Directory.CreateDirectory(outputDir);

                string[] files = Directory.GetFiles(sourceDir);
                Log("开始处理 " + files.Length + " 个文件...");
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

                        // 4. 智能后缀识别
                        string extension = ".bin";
                        bool isText = false; // 标记是否为文本

                        if (fileData.Length > 8)
                        {
                            // A. 文本/脚本类
                            if (fileData[0] == 0x70 && fileData[1] == 0x61 && fileData[2] == 0x72)
                            {
                                extension = ".txt";
                                isText = true;
                            }
                            else if (fileData[0] == 0x0D && fileData[1] == 0x0A && fileData[2] == 'a' && fileData[3] == 'l')
                            {
                                extension = ".txt";
                                isText = true;
                            }
                            // B. 资源类
                            else if (fileData[0] == 'O' && fileData[1] == 'g' && fileData[2] == 'g' && fileData[3] == 'S')
                                extension = ".ogg";
                            else if (fileData[0] == 'U' && fileData[1] == 'n' && fileData[2] == 'i' && fileData[3] == 't')
                                extension = ".bundle";
                            else if (fileData[0] == 0x89 && fileData[1] == 'P' && fileData[2] == 'N' && fileData[3] == 'G')
                                extension = ".png";
                        }

                        string outPath = Path.Combine(outputDir, fileName + extension);
                        
                        if (isText)
                        {                            
                            // 创建一个新数组：长度 = 原数据 + 3字节(BOM)
                            byte[] dataWithBOM = new byte[fileData.Length + 3];

                            // 手动填入 UTF-8 BOM (EF BB BF)
                            dataWithBOM[0] = 0xEF;
                            dataWithBOM[1] = 0xBB;
                            dataWithBOM[2] = 0xBF;

                            // 把原来的数据拷贝到后面
                            Array.Copy(fileData, 0, dataWithBOM, 3, fileData.Length);

                            // 依然使用最安全的 WriteAllBytes
                            File.WriteAllBytes(outPath, dataWithBOM);
                        }
                        else
                        {
                            // 非文本文件，直接写
                            File.WriteAllBytes(outPath, fileData);
                        }
                        // ====================

                        Log("[Success] " + fileName + " -> " + extension);
                    }
                    catch (Exception ex)
                    {
                        // 尽量避免复杂的异常处理导致崩溃
                        try { Log("[Fail] " + fileName); } catch { }
                    }
                }
                Log("全部完成。");
            }
            catch (Exception ex) { Log("Fatal Error: " + ex.Message); }
        }
    }
}