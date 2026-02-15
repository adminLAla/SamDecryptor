using System;
using System.IO;
using System.Reflection;

namespace MyHack
{
	// Token: 0x020002FE RID: 766
	public class Injector
	{
		// Token: 0x06000F7B RID: 3963 RVA: 0x0006ABD8 File Offset: 0x00068DD8
		public static void Run()
		{
			string text = "hook_debug.txt";
			try
			{
				using (StreamWriter streamWriter = new StreamWriter(text, false))
				{
					streamWriter.WriteLine("[ Step 1 ] Hook 启动成功！正在检查环境...");
				}
				string currentDirectory = Directory.GetCurrentDirectory();
				string text2 = Path.Combine(currentDirectory, "SamDecryptor.dll");
				Injector.AppendText(text, "[ Step 2 ] 当前目录: " + currentDirectory);
				Injector.AppendText(text, "[ Step 2 ] 目标 DLL: " + text2);
				if (!File.Exists(text2))
				{
					Injector.AppendText(text, "[ Warning ] 根目录找不到 SamDecryptor.dll！尝试 Managed 目录...");
					string text3 = Path.Combine(currentDirectory, "if-app_Data");
					if (!Directory.Exists(text3))
					{
						text3 = Path.Combine(currentDirectory, "In Falsus Demo_Data");
					}
					string text4 = Path.Combine(Path.Combine(text3, "Managed"), "SamDecryptor.dll");
					if (!File.Exists(text4))
					{
						Injector.AppendText(text, "[ Error ] 彻底找不到 SamDecryptor.dll！请确认文件位置。");
						return;
					}
					Injector.AppendText(text, "[ Info ] 在 Managed 文件夹找到了 DLL: " + text4);
					text2 = text4;
				}
				Assembly assembly = Assembly.LoadFrom(text2);
				Injector.AppendText(text, "[ Step 3 ] DLL 加载成功: " + assembly.FullName);
				Type type = assembly.GetType("SamDecryptor.Loader");
				if (type == null)
				{
					Injector.AppendText(text, "[ Error ] 找不到 SamDecryptor.Loader 类！是否命名空间写错了？");
				}
				else
				{
					MethodInfo method = type.GetMethod("Main");
					if (method == null)
					{
						Injector.AppendText(text, "[ Error ] 找不到 Main 方法！必须是 public static void Main()");
					}
					else
					{
						method.Invoke(null, null);
						Injector.AppendText(text, "[ Success ] Main 方法已执行！去看看 decrypt_log.txt 吧。");
					}
				}
			}
			catch (Exception ex)
			{
				Injector.AppendText(text, "[ Exception ] 发生异常:\r\n" + ex.ToString());
			}
		}

		// Token: 0x06000F7D RID: 3965 RVA: 0x0006AD8C File Offset: 0x00068F8C
		private static void AppendText(string path, string content)
		{
			try
			{
				using (StreamWriter streamWriter = new StreamWriter(path, true))
				{
					streamWriter.WriteLine(content);
				}
			}
			catch
			{
			}
		}
	}
}
