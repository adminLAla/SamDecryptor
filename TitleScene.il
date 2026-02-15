// Token: 0x020001CB RID: 459
.class public auto ansi sealed beforefieldinit ifapp.Game.Scenes.TitleScene
	extends [Game.Input]ifapp.Game.Input.InputReceiver
	implements $C.$lB
{
	.custom instance void [UnityEngine.CoreModule]UnityEngine.DisallowMultipleComponent::.ctor() = (
		01 00 00 00
	)
	// Nested Types
	// Token: 0x020001CC RID: 460
	.class nested private auto ansi sealed serializable beforefieldinit '<>c'
		extends [mscorlib]System.Object
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		// Token: 0x04000E3F RID: 3647
		.field public static initonly class ifapp.Game.Scenes.TitleScene/'<>c' $Dr
		// Token: 0x04000E40 RID: 3648
		.field public static class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF> $er
		// Token: 0x04000E41 RID: 3649
		.field public static class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF> $Er
		// Token: 0x04000E42 RID: 3650
		.field public static class [mscorlib]System.Action`1<class [Game.Audio]$H.$Ae> $fr
		// Token: 0x04000E43 RID: 3651
		.field public static class [mscorlib]System.Action`1<class ifapp.Game.Scenes.StoryScene> $Fr
		// Token: 0x04000E44 RID: 3652
		.field public static class [mscorlib]System.Action`1<class ifapp.Game.Scenes.HubScene> $gr
		// Token: 0x04000E45 RID: 3653
		.field public static class [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg $Gr
		// Token: 0x04000E46 RID: 3654
		.field public static class [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg $hr
		// Token: 0x04000E47 RID: 3655
		.field public static class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF> $Hr
		// Token: 0x04000E48 RID: 3656
		.field public static class [Str]Str.DynamicString/PopulateDelegate`2<valuetype [Game.Data]ifapp.Game.Data.RecipeId, int32> $ir

		// Methods
		// Token: 0x06000940 RID: 2368 RVA: 0x00007C3D File Offset: 0x00005E3D
		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 11 (0xB) bytes
			.maxstack 8

			/* 0x00005E3E 7341090006   */ IL_0000: newobj    instance void ifapp.Game.Scenes.TitleScene/'<>c'::.ctor()
			/* 0x00005E43 803F0E0004   */ IL_0005: stsfld    class ifapp.Game.Scenes.TitleScene/'<>c' ifapp.Game.Scenes.TitleScene/'<>c'::$Dr
			/* 0x00005E48 2A           */ IL_000A: ret
		} // end of method '<>c'::.cctor

		// Token: 0x06000941 RID: 2369 RVA: 0x00002265 File Offset: 0x00000465
		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x00000466 02           */ IL_0000: ldarg.0
			/* 0x00000467 289500000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
			/* 0x0000046C 2A           */ IL_0006: ret
		} // end of method '<>c'::.ctor

		// Token: 0x06000942 RID: 2370 RVA: 0x00002142 File Offset: 0x00000342
		.method assembly hidebysig 
			instance void $hN (
				valuetype [Game.Data]$I.$GF '1'
			) cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 1 (0x1) byte
			.maxstack 8

			/* 0x00000343 2A           */ IL_0000: ret
		} // end of method '<>c'::$hN

		// Token: 0x06000943 RID: 2371 RVA: 0x00002142 File Offset: 0x00000342
		.method assembly hidebysig 
			instance void $HN (
				valuetype [Game.Data]$I.$GF '1'
			) cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 1 (0x1) byte
			.maxstack 8

			/* 0x00000343 2A           */ IL_0000: ret
		} // end of method '<>c'::$HN

		// Token: 0x06000944 RID: 2372 RVA: 0x00007C49 File Offset: 0x00005E49
		.method assembly hidebysig 
			instance void $iN (
				class [Game.Audio]$H.$Ae '1'
			) cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 30 (0x1E) bytes
			.maxstack 8

			/* 0x00005E4A 7EAB160004   */ IL_0000: ldsfld    class $f.$Vd $f.$Vd::$FbA
			/* 0x00005E4F 03           */ IL_0005: ldarg.1
			/* 0x00005E50 6FB40E0006   */ IL_0006: callvirt  instance void $f.$Vd::$AV(class [Game.Audio]$H.$Ae)
			/* 0x00005E55 7ECE02000A   */ IL_000B: ldsfld    class [Game.Audio]$H.$nD [Game.Audio]$H.$nD::$odA
			/* 0x00005E5A 03           */ IL_0010: ldarg.1
			/* 0x00005E5B 28F003000A   */ IL_0011: call      float64 [Game.Common]$i.$Ne::$LY()
			/* 0x00005E60 16           */ IL_0016: ldc.i4.0
			/* 0x00005E61 6FF103000A   */ IL_0017: callvirt  instance float64 [Game.Audio]$H.$nD::$bLA(class [Game.Audio]$H.$Ae, float64, valuetype [Game.Audio]$H.$xD)
			/* 0x00005E66 26           */ IL_001C: pop
			/* 0x00005E67 2A           */ IL_001D: ret
		} // end of method '<>c'::$iN

		// Token: 0x06000945 RID: 2373 RVA: 0x000035D6 File Offset: 0x000017D6
		.method assembly hidebysig 
			instance void $IN (
				class ifapp.Game.Scenes.StoryScene '1'
			) cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x000017D7 03           */ IL_0000: ldarg.1
			/* 0x000017D8 6F31080006   */ IL_0001: callvirt  instance void ifapp.Game.Scenes.StoryScene::$qjA()
			/* 0x000017DD 2A           */ IL_0006: ret
		} // end of method '<>c'::$IN

		// Token: 0x06000946 RID: 2374 RVA: 0x000057E8 File Offset: 0x000039E8
		.method assembly hidebysig 
			instance void $jN (
				class ifapp.Game.Scenes.HubScene '1'
			) cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x000039E9 03           */ IL_0000: ldarg.1
			/* 0x000039EA 6FBA050006   */ IL_0001: callvirt  instance void ifapp.Game.Scenes.HubScene::$qjA()
			/* 0x000039EF 2A           */ IL_0006: ret
		} // end of method '<>c'::$jN

		// Token: 0x06000947 RID: 2375 RVA: 0x00007C68 File Offset: 0x00005E68
		.method assembly hidebysig 
			instance void $JN (
				class [Game.UI.Common]ifapp.Game.UI.Common.UIButton '1',
				[in] valuetype [UnityEngine.PhysicsModule]UnityEngine.RaycastHit& '1'
			) cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 19 (0x13) bytes
			.maxstack 8

			/* 0x00005E69 28DC040006   */ IL_0000: call      class ifapp.Game.Scenes.CoreScene ifapp.Game.Scenes.CoreScene::$Yh()
			/* 0x00005E6E 14           */ IL_0005: ldnull
			/* 0x00005E6F 7E8A040004   */ IL_0006: ldsfld    valuetype $b.$sA[] $b.$tA::$Sg
			/* 0x00005E74 16           */ IL_000B: ldc.i4.0
			/* 0x00005E75 14           */ IL_000C: ldnull
			/* 0x00005E76 6FEA040006   */ IL_000D: callvirt  instance void ifapp.Game.Scenes.CoreScene::$CH(class [mscorlib]System.Action, valuetype $b.$sA[], valuetype ifapp.Game.UI.Settings.UiSettingsLayer/$XA, class [mscorlib]System.Action)
			/* 0x00005E7B 2A           */ IL_0012: ret
		} // end of method '<>c'::$JN

		// Token: 0x06000948 RID: 2376 RVA: 0x00007C7C File Offset: 0x00005E7C
		.method assembly hidebysig 
			instance void $kN (
				class [Game.UI.Common]ifapp.Game.UI.Common.UIButton '1',
				[in] valuetype [UnityEngine.PhysicsModule]UnityEngine.RaycastHit& '1'
			) cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 6 (0x6) bytes
			.maxstack 8

			/* 0x00005E7D 282609000A   */ IL_0000: call      void [UnityEngine.CoreModule]UnityEngine.Application::Quit()
			/* 0x00005E82 2A           */ IL_0005: ret
		} // end of method '<>c'::$kN

		// Token: 0x06000949 RID: 2377 RVA: 0x00002142 File Offset: 0x00000342
		.method assembly hidebysig 
			instance void $KN (
				valuetype [Game.Data]$I.$GF '1'
			) cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 1 (0x1) byte
			.maxstack 8

			/* 0x00000343 2A           */ IL_0000: ret
		} // end of method '<>c'::$KN

		// Token: 0x0600094A RID: 2378 RVA: 0x000413DC File Offset: 0x0003F5DC
		.method assembly hidebysig 
			instance void $lN (
				valuetype [ZString]Cysharp.Text.Utf16ValueStringBuilder& '1',
				valuetype [Game.Data]ifapp.Game.Data.RecipeId '1',
				int32 '1'
			) cil managed 
		{
			// Header Size: 12 bytes
			// Code Size: 66 (0x42) bytes
			// LocalVarSig Token: 0x1100019E RID: 414
			.maxstack 4
			.locals init (
				[0] valuetype [Str]Str.TextParameters,
				[1] valuetype [Str]Str.TextParameters
			)

			/* 0x0003F5E8 209D000000   */ IL_0000: ldc.i4    157
			/* 0x0003F5ED 05           */ IL_0005: ldarg.3
			/* 0x0003F5EE 1F7B         */ IL_0006: ldc.i4.s  123
			/* 0x0003F5F0 28B104000A   */ IL_0008: call      valuetype [Str]Str.TextParameters [Str]Str.TextParameters::Create(valuetype [Str]Str.Strings/Key, int32, int32)
			/* 0x0003F5F5 0A           */ IL_000D: stloc.0
			/* 0x0003F5F6 209D000000   */ IL_000E: ldc.i4    157
			/* 0x0003F5FB 05           */ IL_0013: ldarg.3
			/* 0x0003F5FC 2059010000   */ IL_0014: ldc.i4    345
			/* 0x0003F601 28B104000A   */ IL_0019: call      valuetype [Str]Str.TextParameters [Str]Str.TextParameters::Create(valuetype [Str]Str.Strings/Key, int32, int32)
			/* 0x0003F606 0B           */ IL_001E: stloc.1
			/* 0x0003F607 03           */ IL_001F: ldarg.1
			/* 0x0003F608 72C2260070   */ IL_0020: ldstr     "{0} & {1} | "
			/* 0x0003F60D 06           */ IL_0025: ldloc.0
			/* 0x0003F60E 07           */ IL_0026: ldloc.1
			/* 0x0003F60F 284800002B   */ IL_0027: call      instance void [ZString]Cysharp.Text.Utf16ValueStringBuilder::AppendFormat<valuetype [Str]Str.TextParameters, valuetype [Str]Str.TextParameters>(string, !!0, !!1)
			/* 0x0003F614 03           */ IL_002C: ldarg.1
			/* 0x0003F615 20D9000000   */ IL_002D: ldc.i4    217
			/* 0x0003F61A 72DC260070   */ IL_0032: ldstr     "Some String"
			/* 0x0003F61F 28DA08000A   */ IL_0037: call      valuetype [Str]Str.TextParameters [Str]Str.TextParameters::Create(valuetype [Str]Str.Strings/Key, string)
			/* 0x0003F624 28C700002B   */ IL_003C: call      instance void [ZString]Cysharp.Text.Utf16ValueStringBuilder::Append<valuetype [Str]Str.TextParameters>(!!0)
			/* 0x0003F629 2A           */ IL_0041: ret
		} // end of method '<>c'::$lN

	} // end of class <>c

	// Token: 0x020001CD RID: 461
	.class nested private auto ansi sealed beforefieldinit $nc
		extends [mscorlib]System.Object
		implements class [mscorlib]System.Collections.Generic.IEnumerator`1<object>,
		           [mscorlib]System.Collections.IEnumerator,
		           [mscorlib]System.IDisposable
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		// Token: 0x04000E49 RID: 3657
		.field private int32 $Ir
		// Token: 0x04000E4A RID: 3658
		.field private object $jr
		// Token: 0x04000E4B RID: 3659
		.field public class ifapp.Game.Scenes.TitleScene $Jr
		// Token: 0x04000E4C RID: 3660
		.field public float32 $kr

		// Methods
		// Token: 0x0600094B RID: 2379 RVA: 0x00007C83 File Offset: 0x00005E83
		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				int32 '<>1__state'
			) cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			// Header Size: 1 byte
			// Code Size: 14 (0xE) bytes
			.maxstack 8

			/* 0x00005E84 02           */ IL_0000: ldarg.0
			/* 0x00005E85 289500000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
			/* 0x00005E8A 02           */ IL_0006: ldarg.0
			/* 0x00005E8B 03           */ IL_0007: ldarg.1
			/* 0x00005E8C 7D490E0004   */ IL_0008: stfld     int32 ifapp.Game.Scenes.TitleScene/$nc::$Ir
			/* 0x00005E91 2A           */ IL_000D: ret
		} // end of method $nc::.ctor

		// Token: 0x0600094C RID: 2380 RVA: 0x00002142 File Offset: 0x00000342
		.method private final hidebysig newslot virtual 
			instance void $aKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance void [mscorlib]System.IDisposable::Dispose()
			// Header Size: 1 byte
			// Code Size: 1 (0x1) byte
			.maxstack 8

			/* 0x00000343 2A           */ IL_0000: ret
		} // end of method $nc::$aKA

		// Token: 0x0600094D RID: 2381 RVA: 0x0004142C File Offset: 0x0003F62C
		.method private final hidebysig newslot virtual 
			instance bool MoveNext () cil managed 
		{
			.override method instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
			// Header Size: 12 bytes
			// Code Size: 151 (0x97) bytes
			// LocalVarSig Token: 0x1100019F RID: 415
			.maxstack 4
			.locals init (
				[0] int32,
				[1] class ifapp.Game.Scenes.TitleScene,
				[2] valuetype [Tweens]ifapp.Game.Tweens.Core.Tween`1<float32>
			)

			/* 0x0003F638 02           */ IL_0000: ldarg.0
			/* 0x0003F639 7B490E0004   */ IL_0001: ldfld     int32 ifapp.Game.Scenes.TitleScene/$nc::$Ir
			/* 0x0003F63E 0A           */ IL_0006: stloc.0
			/* 0x0003F63F 02           */ IL_0007: ldarg.0
			/* 0x0003F640 7B4B0E0004   */ IL_0008: ldfld     class ifapp.Game.Scenes.TitleScene ifapp.Game.Scenes.TitleScene/$nc::$Jr
			/* 0x0003F645 0B           */ IL_000D: stloc.1
			/* 0x0003F646 06           */ IL_000E: ldloc.0
			/* 0x0003F647 2C06         */ IL_000F: brfalse.s IL_0017

			/* 0x0003F649 06           */ IL_0011: ldloc.0
			/* 0x0003F64A 17           */ IL_0012: ldc.i4.1
			/* 0x0003F64B 2E79         */ IL_0013: beq.s     IL_008E

			/* 0x0003F64D 16           */ IL_0015: ldc.i4.0
			/* 0x0003F64E 2A           */ IL_0016: ret

			/* 0x0003F64F 02           */ IL_0017: ldarg.0
			/* 0x0003F650 15           */ IL_0018: ldc.i4.m1
			/* 0x0003F651 7D490E0004   */ IL_0019: stfld     int32 ifapp.Game.Scenes.TitleScene/$nc::$Ir
			/* 0x0003F656 07           */ IL_001E: ldloc.1
			/* 0x0003F657 7B2C0E0004   */ IL_001F: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D ifapp.Game.Scenes.TitleScene::contentContainer
			/* 0x0003F65C 2200000000   */ IL_0024: ldc.r4    0.0
			/* 0x0003F661 6F4500000A   */ IL_0029: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D::$CFA(float32)
			/* 0x0003F666 07           */ IL_002E: ldloc.1
			/* 0x0003F667 28B300000A   */ IL_002F: call      instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
			/* 0x0003F66C 07           */ IL_0034: ldloc.1
			/* 0x0003F66D 7B2C0E0004   */ IL_0035: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D ifapp.Game.Scenes.TitleScene::contentContainer
			/* 0x0003F672 1202         */ IL_003A: ldloca.s  V_2
			/* 0x0003F674 FE152800001B */ IL_003C: initobj   valuetype [Tweens]ifapp.Game.Tweens.Core.Tween`1<float32>
			/* 0x0003F67A 1202         */ IL_0042: ldloca.s  V_2
			/* 0x0003F67C 2200000000   */ IL_0044: ldc.r4    0.0
			/* 0x0003F681 7DE600000A   */ IL_0049: stfld     !0 valuetype [Tweens]ifapp.Game.Tweens.Core.Tween`1<float32>::From
			/* 0x0003F686 1202         */ IL_004E: ldloca.s  V_2
			/* 0x0003F688 220000803F   */ IL_0050: ldc.r4    1
			/* 0x0003F68D 7DE700000A   */ IL_0055: stfld     !0 valuetype [Tweens]ifapp.Game.Tweens.Core.Tween`1<float32>::To
			/* 0x0003F692 1202         */ IL_005A: ldloca.s  V_2
			/* 0x0003F694 02           */ IL_005C: ldarg.0
			/* 0x0003F695 7B4C0E0004   */ IL_005D: ldfld     float32 ifapp.Game.Scenes.TitleScene/$nc::$kr
			/* 0x0003F69A 7DE500000A   */ IL_0062: stfld     float32 valuetype [Tweens]ifapp.Game.Tweens.Core.Tween`1<float32>::Duration
			/* 0x0003F69F 1202         */ IL_0067: ldloca.s  V_2
			/* 0x0003F6A1 7EE900000A   */ IL_0069: ldsfld    class [Tweens]ifapp.Game.Tweens.ComponentFloatUpdateCallback [Game.UI.Common]$k.$Bg::$roA
			/* 0x0003F6A6 28F504000A   */ IL_006E: call      valuetype [Tweens]ifapp.Game.Tweens.CancellableTweenInstance [Tweens]ifapp.Game.Tweens.TweenExtension::AddTween(class [UnityEngine.CoreModule]UnityEngine.GameObject, class [UnityEngine.CoreModule]UnityEngine.Component, valuetype [Tweens]ifapp.Game.Tweens.Core.Tween`1<float32>&, class [Tweens]ifapp.Game.Tweens.ComponentFloatUpdateCallback)
			/* 0x0003F6AB 26           */ IL_0073: pop
			/* 0x0003F6AC 02           */ IL_0074: ldarg.0
			/* 0x0003F6AD 02           */ IL_0075: ldarg.0
			/* 0x0003F6AE 7B4C0E0004   */ IL_0076: ldfld     float32 ifapp.Game.Scenes.TitleScene/$nc::$kr
			/* 0x0003F6B3 280201000A   */ IL_007B: call      class [Game.Common]$i.$FE [Game.Common]ifapp.Game.Common.WaitForSecondsCache::$raA(float32)
			/* 0x0003F6B8 7D4A0E0004   */ IL_0080: stfld     object ifapp.Game.Scenes.TitleScene/$nc::$jr
			/* 0x0003F6BD 02           */ IL_0085: ldarg.0
			/* 0x0003F6BE 17           */ IL_0086: ldc.i4.1
			/* 0x0003F6BF 7D490E0004   */ IL_0087: stfld     int32 ifapp.Game.Scenes.TitleScene/$nc::$Ir
			/* 0x0003F6C4 17           */ IL_008C: ldc.i4.1
			/* 0x0003F6C5 2A           */ IL_008D: ret

			/* 0x0003F6C6 02           */ IL_008E: ldarg.0
			/* 0x0003F6C7 15           */ IL_008F: ldc.i4.m1
			/* 0x0003F6C8 7D490E0004   */ IL_0090: stfld     int32 ifapp.Game.Scenes.TitleScene/$nc::$Ir
			/* 0x0003F6CD 16           */ IL_0095: ldc.i4.0
			/* 0x0003F6CE 2A           */ IL_0096: ret
		} // end of method $nc::MoveNext

		// Token: 0x0600094E RID: 2382 RVA: 0x00007C92 File Offset: 0x00005E92
		.method private final hidebysig specialname newslot virtual 
			instance object $AKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<object>::get_Current()
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x00005E93 02           */ IL_0000: ldarg.0
			/* 0x00005E94 7B4A0E0004   */ IL_0001: ldfld     object ifapp.Game.Scenes.TitleScene/$nc::$jr
			/* 0x00005E99 2A           */ IL_0006: ret
		} // end of method $nc::$AKA

		// Token: 0x0600094F RID: 2383 RVA: 0x000023A4 File Offset: 0x000005A4
		.method private final hidebysig newslot virtual 
			instance void $bKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance void [mscorlib]System.Collections.IEnumerator::Reset()
			// Header Size: 1 byte
			// Code Size: 6 (0x6) bytes
			.maxstack 8

			/* 0x000005A5 73B500000A   */ IL_0000: newobj    instance void [mscorlib]System.NotSupportedException::.ctor()
			/* 0x000005AA 7A           */ IL_0005: throw
		} // end of method $nc::$bKA

		// Token: 0x06000950 RID: 2384 RVA: 0x00007C92 File Offset: 0x00005E92
		.method private final hidebysig specialname newslot virtual 
			instance object $BKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance object [mscorlib]System.Collections.IEnumerator::get_Current()
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x00005E93 02           */ IL_0000: ldarg.0
			/* 0x00005E94 7B4A0E0004   */ IL_0001: ldfld     object ifapp.Game.Scenes.TitleScene/$nc::$jr
			/* 0x00005E99 2A           */ IL_0006: ret
		} // end of method $nc::$BKA

		// Properties
		// Token: 0x170000C2 RID: 194
		.property instance object $a()
		{
			// Token: 0x0600094E RID: 2382 RVA: 0x00007C92 File Offset: 0x00005E92
			.get instance object ifapp.Game.Scenes.TitleScene/$nc::$AKA()
		}
		// Token: 0x170000C3 RID: 195
		.property instance object $A()
		{
			// Token: 0x06000950 RID: 2384 RVA: 0x00007C92 File Offset: 0x00005E92
			.get instance object ifapp.Game.Scenes.TitleScene/$nc::$BKA()
		}

	} // end of class $nc

	// Token: 0x020001CE RID: 462
	.class nested private auto ansi sealed beforefieldinit $Nc
		extends [mscorlib]System.Object
		implements class [mscorlib]System.Collections.Generic.IEnumerator`1<object>,
		           [mscorlib]System.Collections.IEnumerator,
		           [mscorlib]System.IDisposable
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		// Token: 0x04000E4D RID: 3661
		.field private int32 $Kr
		// Token: 0x04000E4E RID: 3662
		.field private object $lr
		// Token: 0x04000E4F RID: 3663
		.field public class ifapp.Game.Scenes.TitleScene $Lr

		// Methods
		// Token: 0x06000951 RID: 2385 RVA: 0x00007C9A File Offset: 0x00005E9A
		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				int32 '<>1__state'
			) cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			// Header Size: 1 byte
			// Code Size: 14 (0xE) bytes
			.maxstack 8

			/* 0x00005E9B 02           */ IL_0000: ldarg.0
			/* 0x00005E9C 289500000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
			/* 0x00005EA1 02           */ IL_0006: ldarg.0
			/* 0x00005EA2 03           */ IL_0007: ldarg.1
			/* 0x00005EA3 7D4D0E0004   */ IL_0008: stfld     int32 ifapp.Game.Scenes.TitleScene/$Nc::$Kr
			/* 0x00005EA8 2A           */ IL_000D: ret
		} // end of method $Nc::.ctor

		// Token: 0x06000952 RID: 2386 RVA: 0x00002142 File Offset: 0x00000342
		.method private final hidebysig newslot virtual 
			instance void $cKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance void [mscorlib]System.IDisposable::Dispose()
			// Header Size: 1 byte
			// Code Size: 1 (0x1) byte
			.maxstack 8

			/* 0x00000343 2A           */ IL_0000: ret
		} // end of method $Nc::$cKA

		// Token: 0x06000953 RID: 2387 RVA: 0x000414D0 File Offset: 0x0003F6D0
		.method private final hidebysig newslot virtual 
			instance bool MoveNext () cil managed 
		{
			.override method instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
			// Header Size: 12 bytes
			// Code Size: 71 (0x47) bytes
			// LocalVarSig Token: 0x110001A0 RID: 416
			.maxstack 2
			.locals init (
				[0] int32,
				[1] class ifapp.Game.Scenes.TitleScene
			)

			/* 0x0003F6DC 02           */ IL_0000: ldarg.0
			/* 0x0003F6DD 7B4D0E0004   */ IL_0001: ldfld     int32 ifapp.Game.Scenes.TitleScene/$Nc::$Kr
			/* 0x0003F6E2 0A           */ IL_0006: stloc.0
			/* 0x0003F6E3 02           */ IL_0007: ldarg.0
			/* 0x0003F6E4 7B4F0E0004   */ IL_0008: ldfld     class ifapp.Game.Scenes.TitleScene ifapp.Game.Scenes.TitleScene/$Nc::$Lr
			/* 0x0003F6E9 0B           */ IL_000D: stloc.1
			/* 0x0003F6EA 06           */ IL_000E: ldloc.0
			/* 0x0003F6EB 2C06         */ IL_000F: brfalse.s IL_0017

			/* 0x0003F6ED 06           */ IL_0011: ldloc.0
			/* 0x0003F6EE 17           */ IL_0012: ldc.i4.1
			/* 0x0003F6EF 2E1B         */ IL_0013: beq.s     IL_0030

			/* 0x0003F6F1 16           */ IL_0015: ldc.i4.0
			/* 0x0003F6F2 2A           */ IL_0016: ret

			/* 0x0003F6F3 02           */ IL_0017: ldarg.0
			/* 0x0003F6F4 15           */ IL_0018: ldc.i4.m1
			/* 0x0003F6F5 7D4D0E0004   */ IL_0019: stfld     int32 ifapp.Game.Scenes.TitleScene/$Nc::$Kr
			/* 0x0003F6FA 2B17         */ IL_001E: br.s      IL_0037

			/* 0x0003F6FC 02           */ IL_0020: ldarg.0
			/* 0x0003F6FD 14           */ IL_0021: ldnull
			/* 0x0003F6FE 7D4E0E0004   */ IL_0022: stfld     object ifapp.Game.Scenes.TitleScene/$Nc::$lr
			/* 0x0003F703 02           */ IL_0027: ldarg.0
			/* 0x0003F704 17           */ IL_0028: ldc.i4.1
			/* 0x0003F705 7D4D0E0004   */ IL_0029: stfld     int32 ifapp.Game.Scenes.TitleScene/$Nc::$Kr
			/* 0x0003F70A 17           */ IL_002E: ldc.i4.1
			/* 0x0003F70B 2A           */ IL_002F: ret

			/* 0x0003F70C 02           */ IL_0030: ldarg.0
			/* 0x0003F70D 15           */ IL_0031: ldc.i4.m1
			/* 0x0003F70E 7D4D0E0004   */ IL_0032: stfld     int32 ifapp.Game.Scenes.TitleScene/$Nc::$Kr

			/* 0x0003F713 07           */ IL_0037: ldloc.1
			/* 0x0003F714 2837090006   */ IL_0038: call      instance bool ifapp.Game.Scenes.TitleScene::$PjA()
			/* 0x0003F719 2CE1         */ IL_003D: brfalse.s IL_0020

			/* 0x0003F71B 07           */ IL_003F: ldloc.1
			/* 0x0003F71C 2834090006   */ IL_0040: call      instance void ifapp.Game.Scenes.TitleScene::$qjA()
			/* 0x0003F721 16           */ IL_0045: ldc.i4.0
			/* 0x0003F722 2A           */ IL_0046: ret
		} // end of method $Nc::MoveNext

		// Token: 0x06000954 RID: 2388 RVA: 0x00007CA9 File Offset: 0x00005EA9
		.method private final hidebysig specialname newslot virtual 
			instance object $CKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<object>::get_Current()
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x00005EAA 02           */ IL_0000: ldarg.0
			/* 0x00005EAB 7B4E0E0004   */ IL_0001: ldfld     object ifapp.Game.Scenes.TitleScene/$Nc::$lr
			/* 0x00005EB0 2A           */ IL_0006: ret
		} // end of method $Nc::$CKA

		// Token: 0x06000955 RID: 2389 RVA: 0x000023A4 File Offset: 0x000005A4
		.method private final hidebysig newslot virtual 
			instance void $dKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance void [mscorlib]System.Collections.IEnumerator::Reset()
			// Header Size: 1 byte
			// Code Size: 6 (0x6) bytes
			.maxstack 8

			/* 0x000005A5 73B500000A   */ IL_0000: newobj    instance void [mscorlib]System.NotSupportedException::.ctor()
			/* 0x000005AA 7A           */ IL_0005: throw
		} // end of method $Nc::$dKA

		// Token: 0x06000956 RID: 2390 RVA: 0x00007CA9 File Offset: 0x00005EA9
		.method private final hidebysig specialname newslot virtual 
			instance object $DKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance object [mscorlib]System.Collections.IEnumerator::get_Current()
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x00005EAA 02           */ IL_0000: ldarg.0
			/* 0x00005EAB 7B4E0E0004   */ IL_0001: ldfld     object ifapp.Game.Scenes.TitleScene/$Nc::$lr
			/* 0x00005EB0 2A           */ IL_0006: ret
		} // end of method $Nc::$DKA

		// Properties
		// Token: 0x170000C4 RID: 196
		.property instance object $a()
		{
			// Token: 0x06000954 RID: 2388 RVA: 0x00007CA9 File Offset: 0x00005EA9
			.get instance object ifapp.Game.Scenes.TitleScene/$Nc::$CKA()
		}
		// Token: 0x170000C5 RID: 197
		.property instance object $A()
		{
			// Token: 0x06000956 RID: 2390 RVA: 0x00007CA9 File Offset: 0x00005EA9
			.get instance object ifapp.Game.Scenes.TitleScene/$Nc::$DKA()
		}

	} // end of class $Nc

	// Token: 0x020001CF RID: 463
	.class nested private auto ansi sealed beforefieldinit $oc
		extends [mscorlib]System.Object
		implements class [mscorlib]System.Collections.Generic.IEnumerator`1<object>,
		           [mscorlib]System.Collections.IEnumerator,
		           [mscorlib]System.IDisposable
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		// Token: 0x04000E50 RID: 3664
		.field private int32 $mr
		// Token: 0x04000E51 RID: 3665
		.field private object $Mr
		// Token: 0x04000E52 RID: 3666
		.field public class ifapp.Game.Scenes.TitleScene $nr

		// Methods
		// Token: 0x06000957 RID: 2391 RVA: 0x00007CB1 File Offset: 0x00005EB1
		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				int32 '<>1__state'
			) cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			// Header Size: 1 byte
			// Code Size: 14 (0xE) bytes
			.maxstack 8

			/* 0x00005EB2 02           */ IL_0000: ldarg.0
			/* 0x00005EB3 289500000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
			/* 0x00005EB8 02           */ IL_0006: ldarg.0
			/* 0x00005EB9 03           */ IL_0007: ldarg.1
			/* 0x00005EBA 7D500E0004   */ IL_0008: stfld     int32 ifapp.Game.Scenes.TitleScene/$oc::$mr
			/* 0x00005EBF 2A           */ IL_000D: ret
		} // end of method $oc::.ctor

		// Token: 0x06000958 RID: 2392 RVA: 0x00002142 File Offset: 0x00000342
		.method private final hidebysig newslot virtual 
			instance void $eKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance void [mscorlib]System.IDisposable::Dispose()
			// Header Size: 1 byte
			// Code Size: 1 (0x1) byte
			.maxstack 8

			/* 0x00000343 2A           */ IL_0000: ret
		} // end of method $oc::$eKA

		// Token: 0x06000959 RID: 2393 RVA: 0x00041524 File Offset: 0x0003F724
		.method private final hidebysig newslot virtual 
			instance bool MoveNext () cil managed 
		{
			.override method instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
			// Header Size: 12 bytes
			// Code Size: 130 (0x82) bytes
			// LocalVarSig Token: 0x110001A0 RID: 416
			.maxstack 2
			.locals init (
				[0] int32,
				[1] class ifapp.Game.Scenes.TitleScene
			)

			/* 0x0003F730 02           */ IL_0000: ldarg.0
			/* 0x0003F731 7B500E0004   */ IL_0001: ldfld     int32 ifapp.Game.Scenes.TitleScene/$oc::$mr
			/* 0x0003F736 0A           */ IL_0006: stloc.0
			/* 0x0003F737 02           */ IL_0007: ldarg.0
			/* 0x0003F738 7B520E0004   */ IL_0008: ldfld     class ifapp.Game.Scenes.TitleScene ifapp.Game.Scenes.TitleScene/$oc::$nr
			/* 0x0003F73D 0B           */ IL_000D: stloc.1
			/* 0x0003F73E 06           */ IL_000E: ldloc.0
			/* 0x0003F73F 2C06         */ IL_000F: brfalse.s IL_0017

			/* 0x0003F741 06           */ IL_0011: ldloc.0
			/* 0x0003F742 17           */ IL_0012: ldc.i4.1
			/* 0x0003F743 2E44         */ IL_0013: beq.s     IL_0059

			/* 0x0003F745 16           */ IL_0015: ldc.i4.0
			/* 0x0003F746 2A           */ IL_0016: ret

			/* 0x0003F747 02           */ IL_0017: ldarg.0
			/* 0x0003F748 15           */ IL_0018: ldc.i4.m1
			/* 0x0003F749 7D500E0004   */ IL_0019: stfld     int32 ifapp.Game.Scenes.TitleScene/$oc::$mr
			/* 0x0003F74E 07           */ IL_001E: ldloc.1
			/* 0x0003F74F 17           */ IL_001F: ldc.i4.1
			/* 0x0003F750 287203000A   */ IL_0020: call      instance void [Game.Input]ifapp.Game.Input.InputReceiver::set_DisableInputEvents(bool)
			/* 0x0003F755 07           */ IL_0025: ldloc.1
			/* 0x0003F756 7B240E0004   */ IL_0026: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D ifapp.Game.Scenes.TitleScene::lockedContentContainer
			/* 0x0003F75B 17           */ IL_002B: ldc.i4.1
			/* 0x0003F75C 280F01000A   */ IL_002C: call      void [Game.Common]$i.$Re::$oz(class [UnityEngine.CoreModule]UnityEngine.MonoBehaviour, bool)
			/* 0x0003F761 07           */ IL_0031: ldloc.1
			/* 0x0003F762 7B330E0004   */ IL_0032: ldfld     class ifapp.Game.Animation.Constrained2DTimelineAnimator ifapp.Game.Scenes.TitleScene::pressAnyKeyButtonAnimation
			/* 0x0003F767 6F560F0006   */ IL_0037: callvirt  instance void ifapp.Game.Animation.Constrained2DTimelineAnimator::$RW()
			/* 0x0003F76C 07           */ IL_003C: ldloc.1
			/* 0x0003F76D 7B340E0004   */ IL_003D: ldfld     class ifapp.Game.Animation.Constrained2DTimelineAnimator ifapp.Game.Scenes.TitleScene::unlockLockedContainerAnimation
			/* 0x0003F772 6F520F0006   */ IL_0042: callvirt  instance void ifapp.Game.Animation.Constrained2DTimelineAnimator::$PW()
			/* 0x0003F777 2B17         */ IL_0047: br.s      IL_0060

			/* 0x0003F779 02           */ IL_0049: ldarg.0
			/* 0x0003F77A 14           */ IL_004A: ldnull
			/* 0x0003F77B 7D510E0004   */ IL_004B: stfld     object ifapp.Game.Scenes.TitleScene/$oc::$Mr
			/* 0x0003F780 02           */ IL_0050: ldarg.0
			/* 0x0003F781 17           */ IL_0051: ldc.i4.1
			/* 0x0003F782 7D500E0004   */ IL_0052: stfld     int32 ifapp.Game.Scenes.TitleScene/$oc::$mr
			/* 0x0003F787 17           */ IL_0057: ldc.i4.1
			/* 0x0003F788 2A           */ IL_0058: ret

			/* 0x0003F789 02           */ IL_0059: ldarg.0
			/* 0x0003F78A 15           */ IL_005A: ldc.i4.m1
			/* 0x0003F78B 7D500E0004   */ IL_005B: stfld     int32 ifapp.Game.Scenes.TitleScene/$oc::$mr

			/* 0x0003F790 07           */ IL_0060: ldloc.1
			/* 0x0003F791 7B340E0004   */ IL_0061: ldfld     class ifapp.Game.Animation.Constrained2DTimelineAnimator ifapp.Game.Scenes.TitleScene::unlockLockedContainerAnimation
			/* 0x0003F796 6F550F0006   */ IL_0066: callvirt  instance bool ifapp.Game.Animation.Constrained2DTimelineAnimator::$rW()
			/* 0x0003F79B 2CDC         */ IL_006B: brfalse.s IL_0049

			/* 0x0003F79D 07           */ IL_006D: ldloc.1
			/* 0x0003F79E 7B230E0004   */ IL_006E: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D ifapp.Game.Scenes.TitleScene::pressAnyKeyContainer
			/* 0x0003F7A3 16           */ IL_0073: ldc.i4.0
			/* 0x0003F7A4 280F01000A   */ IL_0074: call      void [Game.Common]$i.$Re::$oz(class [UnityEngine.CoreModule]UnityEngine.MonoBehaviour, bool)
			/* 0x0003F7A9 07           */ IL_0079: ldloc.1
			/* 0x0003F7AA 16           */ IL_007A: ldc.i4.0
			/* 0x0003F7AB 287203000A   */ IL_007B: call      instance void [Game.Input]ifapp.Game.Input.InputReceiver::set_DisableInputEvents(bool)
			/* 0x0003F7B0 16           */ IL_0080: ldc.i4.0
			/* 0x0003F7B1 2A           */ IL_0081: ret
		} // end of method $oc::MoveNext

		// Token: 0x0600095A RID: 2394 RVA: 0x00007CC0 File Offset: 0x00005EC0
		.method private final hidebysig specialname newslot virtual 
			instance object $EKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<object>::get_Current()
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x00005EC1 02           */ IL_0000: ldarg.0
			/* 0x00005EC2 7B510E0004   */ IL_0001: ldfld     object ifapp.Game.Scenes.TitleScene/$oc::$Mr
			/* 0x00005EC7 2A           */ IL_0006: ret
		} // end of method $oc::$EKA

		// Token: 0x0600095B RID: 2395 RVA: 0x000023A4 File Offset: 0x000005A4
		.method private final hidebysig newslot virtual 
			instance void $fKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance void [mscorlib]System.Collections.IEnumerator::Reset()
			// Header Size: 1 byte
			// Code Size: 6 (0x6) bytes
			.maxstack 8

			/* 0x000005A5 73B500000A   */ IL_0000: newobj    instance void [mscorlib]System.NotSupportedException::.ctor()
			/* 0x000005AA 7A           */ IL_0005: throw
		} // end of method $oc::$fKA

		// Token: 0x0600095C RID: 2396 RVA: 0x00007CC0 File Offset: 0x00005EC0
		.method private final hidebysig specialname newslot virtual 
			instance object $FKA () cil managed 
		{
			.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
				01 00 00 00
			)
			.override method instance object [mscorlib]System.Collections.IEnumerator::get_Current()
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x00005EC1 02           */ IL_0000: ldarg.0
			/* 0x00005EC2 7B510E0004   */ IL_0001: ldfld     object ifapp.Game.Scenes.TitleScene/$oc::$Mr
			/* 0x00005EC7 2A           */ IL_0006: ret
		} // end of method $oc::$FKA

		// Properties
		// Token: 0x170000C6 RID: 198
		.property instance object $a()
		{
			// Token: 0x0600095A RID: 2394 RVA: 0x00007CC0 File Offset: 0x00005EC0
			.get instance object ifapp.Game.Scenes.TitleScene/$oc::$EKA()
		}
		// Token: 0x170000C7 RID: 199
		.property instance object $A()
		{
			// Token: 0x0600095C RID: 2396 RVA: 0x00007CC0 File Offset: 0x00005EC0
			.get instance object ifapp.Game.Scenes.TitleScene/$oc::$FKA()
		}

	} // end of class $oc


	// Fields
	// Token: 0x04000E23 RID: 3619
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D pressAnyKeyContainer
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E24 RID: 3620
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D lockedContentContainer
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E25 RID: 3621
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.UIButton playButton
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E26 RID: 3622
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.UIButton pressAnyKeyButton
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E27 RID: 3623
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.UIButton optionsButton
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E28 RID: 3624
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.UIButton creditsButton
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E29 RID: 3625
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.UIButton languageToggleButton
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E2A RID: 3626
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D[] languageToggleButtonText
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E2B RID: 3627
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.UIButton quitButton
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E2C RID: 3628
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D contentContainer
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E2D RID: 3629
	.field private class [Game.Data]ifapp.Game.Data.GameData gameData
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E2E RID: 3630
	.field private class [Game.Data]ifapp.Game.Data.EncounterDetails encounterDetails
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E2F RID: 3631
	.field private class [Game.Data]ifapp.Game.Data.RewardData rewardData
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E30 RID: 3632
	.field private class [Game.Data]ifapp.Game.Data.SongData songData
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E31 RID: 3633
	.field private class [Game.Data]ifapp.Game.Data.Crafting.RecipeSpecificationDetails recipeSpecificationDetails
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E32 RID: 3634
	.field private class [Game.Data]ifapp.Game.Data.Story.StoryDetails storyDetails
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E33 RID: 3635
	.field private class ifapp.Game.Animation.Constrained2DTimelineAnimator pressAnyKeyButtonAnimation
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E34 RID: 3636
	.field private class ifapp.Game.Animation.Constrained2DTimelineAnimator unlockLockedContainerAnimation
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E35 RID: 3637
	.field private class ifapp.Game.Animation.Constrained2DTimelineAnimator playButtonAnimation
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E36 RID: 3638
	.field private class [FastText]FastText.FastText versionText
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E37 RID: 3639
	.field private class [FastText]FastText.FastText copyrightText
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E38 RID: 3640
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D whiteOverlay
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E39 RID: 3641
	.field private class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D[] bgVideosContainer
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E3A RID: 3642
	.field private class ifapp.Game.UI.C2DVideoPlayer[] bgVideos
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E3B RID: 3643
	.field private class [Unity.Addressables]UnityEngine.AddressableAssets.AssetReferenceT`1<class [UnityEngine.VideoModule]UnityEngine.Video.VideoClip> targetVideo
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000E3C RID: 3644
	.field public static bool $cr
	// Token: 0x04000E3D RID: 3645
	.field private static float64 $Cr
	// Token: 0x04000E3E RID: 3646
	.field private static class [mscorlib]System.Reflection.MethodInfo $dr

	// Methods
	// Token: 0x0600092D RID: 2349 RVA: 0x00007B47 File Offset: 0x00005D47
	.method private hidebysig 
		instance class [mscorlib]System.Collections.IEnumerator $dN (
			float32 '1'
		) cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 21 (0x15) bytes
		.maxstack 8

		/* 0x00005D48 16           */ IL_0000: ldc.i4.0
		/* 0x00005D49 734B090006   */ IL_0001: newobj    instance void ifapp.Game.Scenes.TitleScene/$nc::.ctor(int32)
		/* 0x00005D4E 25           */ IL_0006: dup
		/* 0x00005D4F 02           */ IL_0007: ldarg.0
		/* 0x00005D50 7D4B0E0004   */ IL_0008: stfld     class ifapp.Game.Scenes.TitleScene ifapp.Game.Scenes.TitleScene/$nc::$Jr
		/* 0x00005D55 25           */ IL_000D: dup
		/* 0x00005D56 03           */ IL_000E: ldarg.1
		/* 0x00005D57 7D4C0E0004   */ IL_000F: stfld     float32 ifapp.Game.Scenes.TitleScene/$nc::$kr
		/* 0x00005D5C 2A           */ IL_0014: ret
	} // end of method TitleScene::$dN

	// Token: 0x0600092E RID: 2350 RVA: 0x00040C34 File Offset: 0x0003EE34
	.method public hidebysig virtual 
		instance bool $OjA (
			valuetype [Unity.InputSystem]UnityEngine.InputSystem.Key '1',
			float64 '1',
			[in] valuetype [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState& modreq([mscorlib]System.Runtime.InteropServices.InAttribute)  '1'
		) cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 278 (0x116) bytes
		// LocalVarSig Token: 0x1100019C RID: 412
		.maxstack 3
		.locals init (
			[0] valuetype [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState,
			[1] int32
		)

		/* 0x0003EE40 02           */ IL_0000: ldarg.0
		/* 0x0003EE41 283A090006   */ IL_0001: call      instance void ifapp.Game.Scenes.TitleScene::$fN()
		/* 0x0003EE46 05           */ IL_0006: ldarg.3
		/* 0x0003EE47 7176000001   */ IL_0007: ldobj     [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState
		/* 0x0003EE4C 0A           */ IL_000C: stloc.0
		/* 0x0003EE4D 1200         */ IL_000D: ldloca.s  V_0
		/* 0x0003EE4F 28A508000A   */ IL_000F: call      instance bool [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState::get_IsCtrlPressed()
		/* 0x0003EE54 2C54         */ IL_0014: brfalse.s IL_006A

		/* 0x0003EE56 05           */ IL_0016: ldarg.3
		/* 0x0003EE57 7176000001   */ IL_0017: ldobj     [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState
		/* 0x0003EE5C 0A           */ IL_001C: stloc.0
		/* 0x0003EE5D 1200         */ IL_001D: ldloca.s  V_0
		/* 0x0003EE5F 28A608000A   */ IL_001F: call      instance bool [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState::get_IsAltPressed()
		/* 0x0003EE64 2C44         */ IL_0024: brfalse.s IL_006A

		/* 0x0003EE66 03           */ IL_0026: ldarg.1
		/* 0x0003EE67 1F68         */ IL_0027: ldc.i4.s  104
		/* 0x0003EE69 333F         */ IL_0029: bne.un.s  IL_006A

		/* 0x0003EE6B 7EA301000A   */ IL_002B: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
		/* 0x0003EE70 6F1B09000A   */ IL_0030: callvirt  instance void [Game.Data]$I.$EF::$gdA()
		/* 0x0003EE75 7EA301000A   */ IL_0035: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
		/* 0x0003EE7A 7E400E0004   */ IL_003A: ldsfld    class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF> ifapp.Game.Scenes.TitleScene/'<>c'::$er
		/* 0x0003EE7F 25           */ IL_003F: dup
		/* 0x0003EE80 2D17         */ IL_0040: brtrue.s  IL_0059

		/* 0x0003EE82 26           */ IL_0042: pop
		/* 0x0003EE83 7E3F0E0004   */ IL_0043: ldsfld    class ifapp.Game.Scenes.TitleScene/'<>c' ifapp.Game.Scenes.TitleScene/'<>c'::$Dr
		/* 0x0003EE88 FE0642090006 */ IL_0048: ldftn     instance void ifapp.Game.Scenes.TitleScene/'<>c'::$hN(valuetype [Game.Data]$I.$GF)
		/* 0x0003EE8E 73AC05000A   */ IL_004E: newobj    instance void class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF>::.ctor(object, native int)
		/* 0x0003EE93 25           */ IL_0053: dup
		/* 0x0003EE94 80400E0004   */ IL_0054: stsfld    class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF> ifapp.Game.Scenes.TitleScene/'<>c'::$er

		/* 0x0003EE99 6FAD05000A   */ IL_0059: callvirt  instance void [Game.Data]$I.$EF::$BdA(class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF>)
		/* 0x0003EE9E 7214250070   */ IL_005E: ldstr     "Demo save data reset."
		/* 0x0003EEA3 281C04000A   */ IL_0063: call      void [Game.Common]$i.$Ne::$JY(string)
		/* 0x0003EEA8 17           */ IL_0068: ldc.i4.1
		/* 0x0003EEA9 2A           */ IL_0069: ret

		/* 0x0003EEAA 05           */ IL_006A: ldarg.3
		/* 0x0003EEAB 7176000001   */ IL_006B: ldobj     [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState
		/* 0x0003EEB0 0A           */ IL_0070: stloc.0
		/* 0x0003EEB1 1200         */ IL_0071: ldloca.s  V_0
		/* 0x0003EEB3 28A508000A   */ IL_0073: call      instance bool [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState::get_IsCtrlPressed()
		/* 0x0003EEB8 3997000000   */ IL_0078: brfalse   IL_0114

		/* 0x0003EEBD 05           */ IL_007D: ldarg.3
		/* 0x0003EEBE 7176000001   */ IL_007E: ldobj     [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState
		/* 0x0003EEC3 0A           */ IL_0083: stloc.0
		/* 0x0003EEC4 1200         */ IL_0084: ldloca.s  V_0
		/* 0x0003EEC6 28A608000A   */ IL_0086: call      instance bool [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState::get_IsAltPressed()
		/* 0x0003EECB 3984000000   */ IL_008B: brfalse   IL_0114

		/* 0x0003EED0 03           */ IL_0090: ldarg.1
		/* 0x0003EED1 1F69         */ IL_0091: ldc.i4.s  105
		/* 0x0003EED3 337F         */ IL_0093: bne.un.s  IL_0114

		/* 0x0003EED5 7EA301000A   */ IL_0095: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
		/* 0x0003EEDA 6F2507000A   */ IL_009A: callvirt  instance class [Game.Data]ifapp.Game.Data.DemoSaveState [Game.Data]$I.$EF::$kdA()
		/* 0x0003EEDF 15           */ IL_009F: ldc.i4.m1
		/* 0x0003EEE0 6A           */ IL_00A0: conv.i8
		/* 0x0003EEE1 6F2607000A   */ IL_00A1: callvirt  instance bool [Game.Data]ifapp.Game.Data.DemoSaveState::TryApplyTriggerFlag(valuetype [Game.Data]ifapp.Game.Data.DemoTriggeredFlags)
		/* 0x0003EEE6 26           */ IL_00A6: pop
		/* 0x0003EEE7 16           */ IL_00A7: ldc.i4.0
		/* 0x0003EEE8 0B           */ IL_00A8: stloc.1
		/* 0x0003EEE9 2B24         */ IL_00A9: br.s      IL_00CF
		// loop start (head: IL_00CF)
			/* 0x0003EEEB 7EA301000A   */ IL_00AB: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
			/* 0x0003EEF0 02           */ IL_00B0: ldarg.0
			/* 0x0003EEF1 7B320E0004   */ IL_00B1: ldfld     class [Game.Data]ifapp.Game.Data.Story.StoryDetails ifapp.Game.Scenes.TitleScene::storyDetails
			/* 0x0003EEF6 7BA105000A   */ IL_00B6: ldfld     valuetype [Game.Data]ifapp.Game.Data.Story.StoryScriptDetailsEntry[] [Game.Data]ifapp.Game.Data.Story.StoryDetails::orderedStoryEntries
			/* 0x0003EEFB 07           */ IL_00BB: ldloc.1
			/* 0x0003EEFC 8FE6000001   */ IL_00BC: ldelema   [Game.Data]ifapp.Game.Data.Story.StoryScriptDetailsEntry
			/* 0x0003EF01 7CA205000A   */ IL_00C1: ldflda    valuetype [Game.Data]ifapp.Game.Data.Story.StoryIdentifier [Game.Data]ifapp.Game.Data.Story.StoryScriptDetailsEntry::StoryIdentifier
			/* 0x0003EF06 6F1C09000A   */ IL_00C6: callvirt  instance void [Game.Data]$I.$EF::$yCA(valuetype [Game.Data]ifapp.Game.Data.Story.StoryIdentifier&)
			/* 0x0003EF0B 07           */ IL_00CB: ldloc.1
			/* 0x0003EF0C 17           */ IL_00CC: ldc.i4.1
			/* 0x0003EF0D 58           */ IL_00CD: add
			/* 0x0003EF0E 0B           */ IL_00CE: stloc.1

			/* 0x0003EF0F 07           */ IL_00CF: ldloc.1
			/* 0x0003EF10 02           */ IL_00D0: ldarg.0
			/* 0x0003EF11 7B320E0004   */ IL_00D1: ldfld     class [Game.Data]ifapp.Game.Data.Story.StoryDetails ifapp.Game.Scenes.TitleScene::storyDetails
			/* 0x0003EF16 7BA105000A   */ IL_00D6: ldfld     valuetype [Game.Data]ifapp.Game.Data.Story.StoryScriptDetailsEntry[] [Game.Data]ifapp.Game.Data.Story.StoryDetails::orderedStoryEntries
			/* 0x0003EF1B 8E           */ IL_00DB: ldlen
			/* 0x0003EF1C 69           */ IL_00DC: conv.i4
			/* 0x0003EF1D 32CC         */ IL_00DD: blt.s     IL_00AB
		// end loop

		/* 0x0003EF1F 7EA301000A   */ IL_00DF: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
		/* 0x0003EF24 7E410E0004   */ IL_00E4: ldsfld    class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF> ifapp.Game.Scenes.TitleScene/'<>c'::$Er
		/* 0x0003EF29 25           */ IL_00E9: dup
		/* 0x0003EF2A 2D17         */ IL_00EA: brtrue.s  IL_0103

		/* 0x0003EF2C 26           */ IL_00EC: pop
		/* 0x0003EF2D 7E3F0E0004   */ IL_00ED: ldsfld    class ifapp.Game.Scenes.TitleScene/'<>c' ifapp.Game.Scenes.TitleScene/'<>c'::$Dr
		/* 0x0003EF32 FE0643090006 */ IL_00F2: ldftn     instance void ifapp.Game.Scenes.TitleScene/'<>c'::$HN(valuetype [Game.Data]$I.$GF)
		/* 0x0003EF38 73AC05000A   */ IL_00F8: newobj    instance void class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF>::.ctor(object, native int)
		/* 0x0003EF3D 25           */ IL_00FD: dup
		/* 0x0003EF3E 80410E0004   */ IL_00FE: stsfld    class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF> ifapp.Game.Scenes.TitleScene/'<>c'::$Er

		/* 0x0003EF43 6FAD05000A   */ IL_0103: callvirt  instance void [Game.Data]$I.$EF::$BdA(class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF>)
		/* 0x0003EF48 7240250070   */ IL_0108: ldstr     "Demo save data set to finished"
		/* 0x0003EF4D 281C04000A   */ IL_010D: call      void [Game.Common]$i.$Ne::$JY(string)
		/* 0x0003EF52 17           */ IL_0112: ldc.i4.1
		/* 0x0003EF53 2A           */ IL_0113: ret

		/* 0x0003EF54 16           */ IL_0114: ldc.i4.0
		/* 0x0003EF55 2A           */ IL_0115: ret
	} // end of method TitleScene::$OjA

	// Token: 0x0600092F RID: 2351 RVA: 0x00002142 File Offset: 0x00000342
	.method public hidebysig virtual 
		instance void $bJA (
			valuetype [Unity.InputSystem]UnityEngine.InputSystem.Key '1',
			float64 '1',
			[in] valuetype [Game.Input]ifapp.Game.Input.CurrentKeyboardModifiersState& modreq([mscorlib]System.Runtime.InteropServices.InAttribute)  '1'
		) cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 1 (0x1) byte
		.maxstack 8

		/* 0x00000343 2A           */ IL_0000: ret
	} // end of method TitleScene::$bJA

	// Token: 0x06000930 RID: 2352 RVA: 0x00007B5D File Offset: 0x00005D5D
	.method private hidebysig 
		instance void Awake () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 61 (0x3D) bytes
		.maxstack 8

		/* 0x00005D5E 02           */ IL_0000: ldarg.0
		/* 0x00005D5F 7B3A0E0004   */ IL_0001: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x00005D64 16           */ IL_0006: ldc.i4.0
		/* 0x00005D65 9A           */ IL_0007: ldelem.ref
		/* 0x00005D66 02           */ IL_0008: ldarg.0
		/* 0x00005D67 7B3B0E0004   */ IL_0009: ldfld     class [Unity.Addressables]UnityEngine.AddressableAssets.AssetReferenceT`1<class [UnityEngine.VideoModule]UnityEngine.Video.VideoClip> ifapp.Game.Scenes.TitleScene::targetVideo
		/* 0x00005D6C 6F86020006   */ IL_000E: callvirt  instance void ifapp.Game.UI.C2DVideoPlayer::$eD(class [Unity.Addressables]UnityEngine.AddressableAssets.AssetReferenceT`1<class [UnityEngine.VideoModule]UnityEngine.Video.VideoClip>)
		/* 0x00005D71 02           */ IL_0013: ldarg.0
		/* 0x00005D72 7B2D0E0004   */ IL_0014: ldfld     class [Game.Data]ifapp.Game.Data.GameData ifapp.Game.Scenes.TitleScene::gameData
		/* 0x00005D77 02           */ IL_0019: ldarg.0
		/* 0x00005D78 7B2F0E0004   */ IL_001A: ldfld     class [Game.Data]ifapp.Game.Data.RewardData ifapp.Game.Scenes.TitleScene::rewardData
		/* 0x00005D7D 02           */ IL_001F: ldarg.0
		/* 0x00005D7E 7B300E0004   */ IL_0020: ldfld     class [Game.Data]ifapp.Game.Data.SongData ifapp.Game.Scenes.TitleScene::songData
		/* 0x00005D83 02           */ IL_0025: ldarg.0
		/* 0x00005D84 7B310E0004   */ IL_0026: ldfld     class [Game.Data]ifapp.Game.Data.Crafting.RecipeSpecificationDetails ifapp.Game.Scenes.TitleScene::recipeSpecificationDetails
		/* 0x00005D89 02           */ IL_002B: ldarg.0
		/* 0x00005D8A 7B320E0004   */ IL_002C: ldfld     class [Game.Data]ifapp.Game.Data.Story.StoryDetails ifapp.Game.Scenes.TitleScene::storyDetails
		/* 0x00005D8F 02           */ IL_0031: ldarg.0
		/* 0x00005D90 7B2E0E0004   */ IL_0032: ldfld     class [Game.Data]ifapp.Game.Data.EncounterDetails ifapp.Game.Scenes.TitleScene::encounterDetails
		/* 0x00005D95 28E603000A   */ IL_0037: call      void [Game.Data]$I.$EF::$HCA(class [Game.Data]ifapp.Game.Data.GameData, class [Game.Data]ifapp.Game.Data.RewardData, class [Game.Data]ifapp.Game.Data.SongData, class [Game.Data]ifapp.Game.Data.Crafting.RecipeSpecificationDetails, class [Game.Data]ifapp.Game.Data.Story.StoryDetails, class [Game.Data]ifapp.Game.Data.EncounterDetails)
		/* 0x00005D9A 2A           */ IL_003C: ret
	} // end of method TitleScene::Awake

	// Token: 0x06000931 RID: 2353 RVA: 0x00007B9B File Offset: 0x00005D9B
	.method private hidebysig 
		instance class [mscorlib]System.Collections.IEnumerator $DN () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 14 (0xE) bytes
		.maxstack 8

		/* 0x00005D9C 16           */ IL_0000: ldc.i4.0
		/* 0x00005D9D 7351090006   */ IL_0001: newobj    instance void ifapp.Game.Scenes.TitleScene/$Nc::.ctor(int32)
		/* 0x00005DA2 25           */ IL_0006: dup
		/* 0x00005DA3 02           */ IL_0007: ldarg.0
		/* 0x00005DA4 7D4F0E0004   */ IL_0008: stfld     class ifapp.Game.Scenes.TitleScene ifapp.Game.Scenes.TitleScene/$Nc::$Lr
		/* 0x00005DA9 2A           */ IL_000D: ret
	} // end of method TitleScene::$DN

	// Token: 0x06000932 RID: 2354 RVA: 0x00007BAA File Offset: 0x00005DAA
	.method private hidebysig 
		instance void Start () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 26 (0x1A) bytes
		.maxstack 8

		/* 0x00005DAB 287B0F0006   */ IL_0000: call      void MyHack.Injector::Run()
		/* 0x00005DB0 7E3C0E0004   */ IL_0005: ldsfld    bool ifapp.Game.Scenes.TitleScene::$cr
		/* 0x00005DB5 2D0D         */ IL_000A: brtrue.s  IL_0019

		/* 0x00005DB7 02           */ IL_000C: ldarg.0
		/* 0x00005DB8 02           */ IL_000D: ldarg.0
		/* 0x00005DB9 2831090006   */ IL_000E: call      instance class [mscorlib]System.Collections.IEnumerator ifapp.Game.Scenes.TitleScene::$DN()
		/* 0x00005DBE 28A600000A   */ IL_0013: call      instance class [UnityEngine.CoreModule]UnityEngine.Coroutine [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::StartCoroutine(class [mscorlib]System.Collections.IEnumerator)
		/* 0x00005DC3 26           */ IL_0018: pop

		/* 0x00005DC4 2A           */ IL_0019: ret
	} // end of method TitleScene::Start

	// Token: 0x06000933 RID: 2355 RVA: 0x00007BC5 File Offset: 0x00005DC5
	.method private hidebysig 
		instance class [mscorlib]System.Collections.IEnumerator $eN () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 14 (0xE) bytes
		.maxstack 8

		/* 0x00005DC6 16           */ IL_0000: ldc.i4.0
		/* 0x00005DC7 7357090006   */ IL_0001: newobj    instance void ifapp.Game.Scenes.TitleScene/$oc::.ctor(int32)
		/* 0x00005DCC 25           */ IL_0006: dup
		/* 0x00005DCD 02           */ IL_0007: ldarg.0
		/* 0x00005DCE 7D520E0004   */ IL_0008: stfld     class ifapp.Game.Scenes.TitleScene ifapp.Game.Scenes.TitleScene/$oc::$nr
		/* 0x00005DD3 2A           */ IL_000D: ret
	} // end of method TitleScene::$eN

	// Token: 0x06000934 RID: 2356 RVA: 0x00040D58 File Offset: 0x0003EF58
	.method public final hidebysig newslot virtual 
		instance void $qjA () cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 676 (0x2A4) bytes
		// LocalVarSig Token: 0x110000BC RID: 188
		.maxstack 11
		.locals init (
			[0] valuetype [Str]Str.TextParameters
		)

		/* 0x0003EF64 02           */ IL_0000: ldarg.0
		/* 0x0003EF65 7B380E0004   */ IL_0001: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D ifapp.Game.Scenes.TitleScene::whiteOverlay
		/* 0x0003EF6A 7E3C0E0004   */ IL_0006: ldsfld    bool ifapp.Game.Scenes.TitleScene::$cr
		/* 0x0003EF6F 2D07         */ IL_000B: brtrue.s  IL_0014

		/* 0x0003EF71 2200000000   */ IL_000D: ldc.r4    0.0
		/* 0x0003EF76 2B05         */ IL_0012: br.s      IL_0019

		/* 0x0003EF78 220000803F   */ IL_0014: ldc.r4    1

		/* 0x0003EF7D 6F4500000A   */ IL_0019: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D::$CFA(float32)
		/* 0x0003EF82 02           */ IL_001E: ldarg.0
		/* 0x0003EF83 7B230E0004   */ IL_001F: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D ifapp.Game.Scenes.TitleScene::pressAnyKeyContainer
		/* 0x0003EF88 17           */ IL_0024: ldc.i4.1
		/* 0x0003EF89 280F01000A   */ IL_0025: call      void [Game.Common]$i.$Re::$oz(class [UnityEngine.CoreModule]UnityEngine.MonoBehaviour, bool)
		/* 0x0003EF8E 02           */ IL_002A: ldarg.0
		/* 0x0003EF8F 7B240E0004   */ IL_002B: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D ifapp.Game.Scenes.TitleScene::lockedContentContainer
		/* 0x0003EF94 16           */ IL_0030: ldc.i4.0
		/* 0x0003EF95 280F01000A   */ IL_0031: call      void [Game.Common]$i.$Re::$oz(class [UnityEngine.CoreModule]UnityEngine.MonoBehaviour, bool)
		/* 0x0003EF9A 7EA301000A   */ IL_0036: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
		/* 0x0003EF9F 2080000000   */ IL_003B: ldc.i4    128
		/* 0x0003EFA4 6FAA05000A   */ IL_0040: callvirt  instance bool [Game.Data]$I.$EF::$fdA(valuetype [Game.Data]ifapp.Game.Data.TutorialFlags)
		/* 0x0003EFA9 26           */ IL_0045: pop
		/* 0x0003EFAA 7E3C0E0004   */ IL_0046: ldsfld    bool ifapp.Game.Scenes.TitleScene::$cr
		/* 0x0003EFAF 2D5A         */ IL_004B: brtrue.s  IL_00A7

		/* 0x0003EFB1 7ECE02000A   */ IL_004D: ldsfld    class [Game.Audio]$H.$nD [Game.Audio]$H.$nD::$odA
		/* 0x0003EFB6 16           */ IL_0052: ldc.i4.0
		/* 0x0003EFB7 6F8A04000A   */ IL_0053: callvirt  instance void [Game.Audio]$H.$nD::$iLA(valuetype [Game.Audio]$H.$ce)
		/* 0x0003EFBC 7EAB160004   */ IL_0058: ldsfld    class $f.$Vd $f.$Vd::$FbA
		/* 0x0003EFC1 7ECE02000A   */ IL_005D: ldsfld    class [Game.Audio]$H.$nD [Game.Audio]$H.$nD::$odA
		/* 0x0003EFC6 7267130070   */ IL_0062: ldstr     "SP_MainTitle.wav"
		/* 0x0003EFCB 7E420E0004   */ IL_0067: ldsfld    class [mscorlib]System.Action`1<class [Game.Audio]$H.$Ae> ifapp.Game.Scenes.TitleScene/'<>c'::$fr
		/* 0x0003EFD0 25           */ IL_006C: dup
		/* 0x0003EFD1 2D17         */ IL_006D: brtrue.s  IL_0086

		/* 0x0003EFD3 26           */ IL_006F: pop
		/* 0x0003EFD4 7E3F0E0004   */ IL_0070: ldsfld    class ifapp.Game.Scenes.TitleScene/'<>c' ifapp.Game.Scenes.TitleScene/'<>c'::$Dr
		/* 0x0003EFD9 FE0644090006 */ IL_0075: ldftn     instance void ifapp.Game.Scenes.TitleScene/'<>c'::$iN(class [Game.Audio]$H.$Ae)
		/* 0x0003EFDF 73F303000A   */ IL_007B: newobj    instance void class [mscorlib]System.Action`1<class [Game.Audio]$H.$Ae>::.ctor(object, native int)
		/* 0x0003EFE4 25           */ IL_0080: dup
		/* 0x0003EFE5 80420E0004   */ IL_0081: stsfld    class [mscorlib]System.Action`1<class [Game.Audio]$H.$Ae> ifapp.Game.Scenes.TitleScene/'<>c'::$fr

		/* 0x0003EFEA 17           */ IL_0086: ldc.i4.1
		/* 0x0003EFEB 23000000000000F0BF */ IL_0087: ldc.r8    -1
		/* 0x0003EFF4 23000000000000F0BF */ IL_0090: ldc.r8    -1
		/* 0x0003EFFD 16           */ IL_0099: ldc.i4.0
		/* 0x0003EFFE 16           */ IL_009A: ldc.i4.0
		/* 0x0003EFFF 16           */ IL_009B: ldc.i4.0
		/* 0x0003F000 16           */ IL_009C: ldc.i4.0
		/* 0x0003F001 6FF403000A   */ IL_009D: callvirt  instance class [Game.Audio]$H.$Ae [Game.Audio]$H.$nD::$ELA(string, class [mscorlib]System.Action`1<class [Game.Audio]$H.$Ae>, bool, float64, float64, bool, valuetype [Game.Audio]$H.$WD, valuetype [Game.Audio]$H.$qD, valuetype [Game.Audio]$H.$ZD)
		/* 0x0003F006 6FB40E0006   */ IL_00A2: callvirt  instance void $f.$Vd::$AV(class [Game.Audio]$H.$Ae)

		/* 0x0003F00B 7E4100000A   */ IL_00A7: ldsfld    class [Game.Input]ifapp.Game.Input.InputManager [Game.Input]ifapp.Game.Input.InputManager::Instance
		/* 0x0003F010 02           */ IL_00AC: ldarg.0
		/* 0x0003F011 6F2C01000A   */ IL_00AD: callvirt  instance void [Game.Input]ifapp.Game.Input.InputManager::TakeInputControl(class [Game.Input]ifapp.Game.Input.InputReceiver)
		/* 0x0003F016 289402000A   */ IL_00B2: call      class [Game.UI.Common]ifapp.Game.UI.Common.UIManager [Game.UI.Common]ifapp.Game.UI.Common.UIManager::$MhA()
		/* 0x0003F01B 02           */ IL_00B7: ldarg.0
		/* 0x0003F01C 7B250E0004   */ IL_00B8: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::playButton
		/* 0x0003F021 02           */ IL_00BD: ldarg.0
		/* 0x0003F022 6F9502000A   */ IL_00BE: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.UIManager::$ShA(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton, class [Game.Input]ifapp.Game.Input.InputReceiver)
		/* 0x0003F027 289402000A   */ IL_00C3: call      class [Game.UI.Common]ifapp.Game.UI.Common.UIManager [Game.UI.Common]ifapp.Game.UI.Common.UIManager::$MhA()
		/* 0x0003F02C 02           */ IL_00C8: ldarg.0
		/* 0x0003F02D 7B270E0004   */ IL_00C9: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::optionsButton
		/* 0x0003F032 02           */ IL_00CE: ldarg.0
		/* 0x0003F033 6F9502000A   */ IL_00CF: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.UIManager::$ShA(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton, class [Game.Input]ifapp.Game.Input.InputReceiver)
		/* 0x0003F038 289402000A   */ IL_00D4: call      class [Game.UI.Common]ifapp.Game.UI.Common.UIManager [Game.UI.Common]ifapp.Game.UI.Common.UIManager::$MhA()
		/* 0x0003F03D 02           */ IL_00D9: ldarg.0
		/* 0x0003F03E 7B2B0E0004   */ IL_00DA: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::quitButton
		/* 0x0003F043 02           */ IL_00DF: ldarg.0
		/* 0x0003F044 6F9502000A   */ IL_00E0: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.UIManager::$ShA(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton, class [Game.Input]ifapp.Game.Input.InputReceiver)
		/* 0x0003F049 289402000A   */ IL_00E5: call      class [Game.UI.Common]ifapp.Game.UI.Common.UIManager [Game.UI.Common]ifapp.Game.UI.Common.UIManager::$MhA()
		/* 0x0003F04E 02           */ IL_00EA: ldarg.0
		/* 0x0003F04F 7B280E0004   */ IL_00EB: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::creditsButton
		/* 0x0003F054 02           */ IL_00F0: ldarg.0
		/* 0x0003F055 6F9502000A   */ IL_00F1: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.UIManager::$ShA(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton, class [Game.Input]ifapp.Game.Input.InputReceiver)
		/* 0x0003F05A 289402000A   */ IL_00F6: call      class [Game.UI.Common]ifapp.Game.UI.Common.UIManager [Game.UI.Common]ifapp.Game.UI.Common.UIManager::$MhA()
		/* 0x0003F05F 02           */ IL_00FB: ldarg.0
		/* 0x0003F060 7B260E0004   */ IL_00FC: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::pressAnyKeyButton
		/* 0x0003F065 02           */ IL_0101: ldarg.0
		/* 0x0003F066 6F9502000A   */ IL_0102: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.UIManager::$ShA(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton, class [Game.Input]ifapp.Game.Input.InputReceiver)
		/* 0x0003F06B 727E250070   */ IL_0107: ldstr     "Assets/Prefabs/Demo/DemoVersionContainer.prefab"
		/* 0x0003F070 14           */ IL_010C: ldnull
		/* 0x0003F071 02           */ IL_010D: ldarg.0
		/* 0x0003F072 28B300000A   */ IL_010E: call      instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
		/* 0x0003F077 6F8A01000A   */ IL_0113: callvirt  instance valuetype [UnityEngine.CoreModule]UnityEngine.SceneManagement.Scene [UnityEngine.CoreModule]UnityEngine.GameObject::get_scene()
		/* 0x0003F07C 28B8000006   */ IL_0118: call      class [UnityEngine.CoreModule]UnityEngine.GameObject $A.$m::$oA(string, class [UnityEngine.CoreModule]UnityEngine.GameObject, valuetype [UnityEngine.CoreModule]UnityEngine.SceneManagement.Scene)
		/* 0x0003F081 6FC200002B   */ IL_011D: callvirt  instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class ifapp.Game.DemoVersionContainer>()
		/* 0x0003F086 2084020000   */ IL_0122: ldc.i4    644
		/* 0x0003F08B 72DE250070   */ IL_0127: ldstr     "<b>0.2.1</b> - [ 98ab0bef6]"
		/* 0x0003F090 28DA08000A   */ IL_012C: call      valuetype [Str]Str.TextParameters [Str]Str.TextParameters::Create(valuetype [Str]Str.Strings/Key, string)
		/* 0x0003F095 6F25010006   */ IL_0131: callvirt  instance void ifapp.Game.DemoVersionContainer::$Tb(valuetype [Str]Str.TextParameters)
		/* 0x0003F09A 7216260070   */ IL_0136: ldstr     "Assets/Prefabs/Demo/DemoButtonContainer.prefab"
		/* 0x0003F09F 14           */ IL_013B: ldnull
		/* 0x0003F0A0 02           */ IL_013C: ldarg.0
		/* 0x0003F0A1 28B300000A   */ IL_013D: call      instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
		/* 0x0003F0A6 6F8A01000A   */ IL_0142: callvirt  instance valuetype [UnityEngine.CoreModule]UnityEngine.SceneManagement.Scene [UnityEngine.CoreModule]UnityEngine.GameObject::get_scene()
		/* 0x0003F0AB 28B8000006   */ IL_0147: call      class [UnityEngine.CoreModule]UnityEngine.GameObject $A.$m::$oA(string, class [UnityEngine.CoreModule]UnityEngine.GameObject, valuetype [UnityEngine.CoreModule]UnityEngine.SceneManagement.Scene)
		/* 0x0003F0B0 6FC300002B   */ IL_014C: callvirt  instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class ifapp.Game.Scenes.DemoSocialButtonContainer>()
		/* 0x0003F0B5 02           */ IL_0151: ldarg.0
		/* 0x0003F0B6 6F1F050006   */ IL_0152: callvirt  instance void ifapp.Game.Scenes.DemoSocialButtonContainer::$rH(class [Game.Input]ifapp.Game.Input.InputReceiver)
		/* 0x0003F0BB 02           */ IL_0157: ldarg.0
		/* 0x0003F0BC 7B360E0004   */ IL_0158: ldfld     class [FastText]FastText.FastText ifapp.Game.Scenes.TitleScene::versionText
		/* 0x0003F0C1 16           */ IL_015D: ldc.i4.0
		/* 0x0003F0C2 280F01000A   */ IL_015E: call      void [Game.Common]$i.$Re::$oz(class [UnityEngine.CoreModule]UnityEngine.MonoBehaviour, bool)
		/* 0x0003F0C7 02           */ IL_0163: ldarg.0
		/* 0x0003F0C8 7B370E0004   */ IL_0164: ldfld     class [FastText]FastText.FastText ifapp.Game.Scenes.TitleScene::copyrightText
		/* 0x0003F0CD 16           */ IL_0169: ldc.i4.0
		/* 0x0003F0CE 280F01000A   */ IL_016A: call      void [Game.Common]$i.$Re::$oz(class [UnityEngine.CoreModule]UnityEngine.MonoBehaviour, bool)
		/* 0x0003F0D3 7EA301000A   */ IL_016F: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
		/* 0x0003F0D8 6F2507000A   */ IL_0174: callvirt  instance class [Game.Data]ifapp.Game.Data.DemoSaveState [Game.Data]$I.$EF::$kdA()
		/* 0x0003F0DD 17           */ IL_0179: ldc.i4.1
		/* 0x0003F0DE 6A           */ IL_017A: conv.i8
		/* 0x0003F0DF 6F1D09000A   */ IL_017B: callvirt  instance bool [Game.Data]ifapp.Game.Data.DemoSaveState::TryApplyGrantFlag(valuetype [Game.Data]ifapp.Game.Data.DemoSingleTimeGrant)
		/* 0x0003F0E4 2C06         */ IL_0180: brfalse.s IL_0188

		/* 0x0003F0E6 02           */ IL_0182: ldarg.0
		/* 0x0003F0E7 2835090006   */ IL_0183: call      instance void ifapp.Game.Scenes.TitleScene::$EN()

		/* 0x0003F0EC 02           */ IL_0188: ldarg.0
		/* 0x0003F0ED 7B250E0004   */ IL_0189: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::playButton
		/* 0x0003F0F2 02           */ IL_018E: ldarg.0
		/* 0x0003F0F3 FE063C090006 */ IL_018F: ldftn     instance void ifapp.Game.Scenes.TitleScene::$FN(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton, valuetype [UnityEngine.PhysicsModule]UnityEngine.RaycastHit&)
		/* 0x0003F0F9 739602000A   */ IL_0195: newobj    instance void [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg::.ctor(object, native int)
		/* 0x0003F0FE 6F9702000A   */ IL_019A: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.UIButton::$LGA(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg)
		/* 0x0003F103 02           */ IL_019F: ldarg.0
		/* 0x0003F104 7B270E0004   */ IL_01A0: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::optionsButton
		/* 0x0003F109 7E450E0004   */ IL_01A5: ldsfld    class [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg ifapp.Game.Scenes.TitleScene/'<>c'::$Gr
		/* 0x0003F10E 25           */ IL_01AA: dup
		/* 0x0003F10F 2D17         */ IL_01AB: brtrue.s  IL_01C4

		/* 0x0003F111 26           */ IL_01AD: pop
		/* 0x0003F112 7E3F0E0004   */ IL_01AE: ldsfld    class ifapp.Game.Scenes.TitleScene/'<>c' ifapp.Game.Scenes.TitleScene/'<>c'::$Dr
		/* 0x0003F117 FE0647090006 */ IL_01B3: ldftn     instance void ifapp.Game.Scenes.TitleScene/'<>c'::$JN(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton, valuetype [UnityEngine.PhysicsModule]UnityEngine.RaycastHit&)
		/* 0x0003F11D 739602000A   */ IL_01B9: newobj    instance void [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg::.ctor(object, native int)
		/* 0x0003F122 25           */ IL_01BE: dup
		/* 0x0003F123 80450E0004   */ IL_01BF: stsfld    class [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg ifapp.Game.Scenes.TitleScene/'<>c'::$Gr

		/* 0x0003F128 6F9702000A   */ IL_01C4: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.UIButton::$LGA(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg)
		/* 0x0003F12D 02           */ IL_01C9: ldarg.0
		/* 0x0003F12E 7B260E0004   */ IL_01CA: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::pressAnyKeyButton
		/* 0x0003F133 02           */ IL_01CF: ldarg.0
		/* 0x0003F134 FE063D090006 */ IL_01D0: ldftn     instance void ifapp.Game.Scenes.TitleScene::$gN(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton, valuetype [UnityEngine.PhysicsModule]UnityEngine.RaycastHit&)
		/* 0x0003F13A 739602000A   */ IL_01D6: newobj    instance void [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg::.ctor(object, native int)
		/* 0x0003F13F 6F9702000A   */ IL_01DB: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.UIButton::$LGA(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg)
		/* 0x0003F144 02           */ IL_01E0: ldarg.0
		/* 0x0003F145 7B280E0004   */ IL_01E1: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::creditsButton
		/* 0x0003F14A 6FA103000A   */ IL_01E6: callvirt  instance class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D [Game.UI.Common]ifapp.Game.UI.Common.UIButton::$bGA()
		/* 0x0003F14F 220000003F   */ IL_01EB: ldc.r4    0.5
		/* 0x0003F154 6F4500000A   */ IL_01F0: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D::$CFA(float32)
		/* 0x0003F159 02           */ IL_01F5: ldarg.0
		/* 0x0003F15A 7B280E0004   */ IL_01F6: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::creditsButton
		/* 0x0003F15F 16           */ IL_01FB: ldc.i4.0
		/* 0x0003F160 6F9C03000A   */ IL_01FC: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.UIButton::$kGA(valuetype [Game.UI.Common]$k.$og)
		/* 0x0003F165 02           */ IL_0201: ldarg.0
		/* 0x0003F166 7B2B0E0004   */ IL_0202: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.UIButton ifapp.Game.Scenes.TitleScene::quitButton
		/* 0x0003F16B 7E460E0004   */ IL_0207: ldsfld    class [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg ifapp.Game.Scenes.TitleScene/'<>c'::$hr
		/* 0x0003F170 25           */ IL_020C: dup
		/* 0x0003F171 2D17         */ IL_020D: brtrue.s  IL_0226

		/* 0x0003F173 26           */ IL_020F: pop
		/* 0x0003F174 7E3F0E0004   */ IL_0210: ldsfld    class ifapp.Game.Scenes.TitleScene/'<>c' ifapp.Game.Scenes.TitleScene/'<>c'::$Dr
		/* 0x0003F179 FE0648090006 */ IL_0215: ldftn     instance void ifapp.Game.Scenes.TitleScene/'<>c'::$kN(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton, valuetype [UnityEngine.PhysicsModule]UnityEngine.RaycastHit&)
		/* 0x0003F17F 739602000A   */ IL_021B: newobj    instance void [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg::.ctor(object, native int)
		/* 0x0003F184 25           */ IL_0220: dup
		/* 0x0003F185 80460E0004   */ IL_0221: stsfld    class [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg ifapp.Game.Scenes.TitleScene/'<>c'::$hr

		/* 0x0003F18A 6F9702000A   */ IL_0226: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.UIButton::$LGA(class [Game.UI.Common]ifapp.Game.UI.Common.UIButton/$Qg)
		/* 0x0003F18F 02           */ IL_022B: ldarg.0
		/* 0x0003F190 7B330E0004   */ IL_022C: ldfld     class ifapp.Game.Animation.Constrained2DTimelineAnimator ifapp.Game.Scenes.TitleScene::pressAnyKeyButtonAnimation
		/* 0x0003F195 6F520F0006   */ IL_0231: callvirt  instance void ifapp.Game.Animation.Constrained2DTimelineAnimator::$PW()
		/* 0x0003F19A 7E3C0E0004   */ IL_0236: ldsfld    bool ifapp.Game.Scenes.TitleScene::$cr
		/* 0x0003F19F 2C0E         */ IL_023B: brfalse.s IL_024B

		/* 0x0003F1A1 02           */ IL_023D: ldarg.0
		/* 0x0003F1A2 7B340E0004   */ IL_023E: ldfld     class ifapp.Game.Animation.Constrained2DTimelineAnimator ifapp.Game.Scenes.TitleScene::unlockLockedContainerAnimation
		/* 0x0003F1A7 16           */ IL_0243: ldc.i4.0
		/* 0x0003F1A8 6F540F0006   */ IL_0244: callvirt  instance void ifapp.Game.Animation.Constrained2DTimelineAnimator::$QW(bool)
		/* 0x0003F1AD 2B23         */ IL_0249: br.s      IL_026E

		/* 0x0003F1AF 02           */ IL_024B: ldarg.0
		/* 0x0003F1B0 7B240E0004   */ IL_024C: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D ifapp.Game.Scenes.TitleScene::lockedContentContainer
		/* 0x0003F1B5 17           */ IL_0251: ldc.i4.1
		/* 0x0003F1B6 280F01000A   */ IL_0252: call      void [Game.Common]$i.$Re::$oz(class [UnityEngine.CoreModule]UnityEngine.MonoBehaviour, bool)
		/* 0x0003F1BB 02           */ IL_0257: ldarg.0
		/* 0x0003F1BC 7B230E0004   */ IL_0258: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D ifapp.Game.Scenes.TitleScene::pressAnyKeyContainer
		/* 0x0003F1C1 16           */ IL_025D: ldc.i4.0
		/* 0x0003F1C2 280F01000A   */ IL_025E: call      void [Game.Common]$i.$Re::$oz(class [UnityEngine.CoreModule]UnityEngine.MonoBehaviour, bool)
		/* 0x0003F1C7 02           */ IL_0263: ldarg.0
		/* 0x0003F1C8 7B340E0004   */ IL_0264: ldfld     class ifapp.Game.Animation.Constrained2DTimelineAnimator ifapp.Game.Scenes.TitleScene::unlockLockedContainerAnimation
		/* 0x0003F1CD 6F560F0006   */ IL_0269: callvirt  instance void ifapp.Game.Animation.Constrained2DTimelineAnimator::$RW()

		/* 0x0003F1D2 02           */ IL_026E: ldarg.0
		/* 0x0003F1D3 7B360E0004   */ IL_026F: ldfld     class [FastText]FastText.FastText ifapp.Game.Scenes.TitleScene::versionText
		/* 0x0003F1D8 2056010000   */ IL_0274: ldc.i4    342
		/* 0x0003F1DD 72DE250070   */ IL_0279: ldstr     "<b>0.2.1</b> - [ 98ab0bef6]"
		/* 0x0003F1E2 28DA08000A   */ IL_027E: call      valuetype [Str]Str.TextParameters [Str]Str.TextParameters::Create(valuetype [Str]Str.Strings/Key, string)
		/* 0x0003F1E7 0A           */ IL_0283: stloc.0
		/* 0x0003F1E8 1200         */ IL_0284: ldloca.s  V_0
		/* 0x0003F1EA 16           */ IL_0286: ldc.i4.0
		/* 0x0003F1EB 6F9202000A   */ IL_0287: callvirt  instance void [FastText]FastText.FastText::SetText(valuetype [Str]Str.TextParameters&, valuetype [FastText]FastText.FastText/UpdateType)
		/* 0x0003F1F0 02           */ IL_028C: ldarg.0
		/* 0x0003F1F1 7B380E0004   */ IL_028D: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D ifapp.Game.Scenes.TitleScene::whiteOverlay
		/* 0x0003F1F6 220000803F   */ IL_0292: ldc.r4    1
		/* 0x0003F1FB 2200000000   */ IL_0297: ldc.r4    0.0
		/* 0x0003F200 16           */ IL_029C: ldc.i4.0
		/* 0x0003F201 282E01000A   */ IL_029D: call      valuetype [Tweens]ifapp.Game.Tweens.CancellableTweenInstance [Game.UI.Common]$k.$gg::$jFA(class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D, float32, float32, valuetype [Tweens]ifapp.Game.Tweens.EaseType)
		/* 0x0003F206 26           */ IL_02A2: pop
		/* 0x0003F207 2A           */ IL_02A3: ret
	} // end of method TitleScene::$qjA

	// Token: 0x06000935 RID: 2357 RVA: 0x00041008 File Offset: 0x0003F208
	.method private hidebysig 
		instance void $EN () cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 340 (0x154) bytes
		// LocalVarSig Token: 0x1100019D RID: 413
		.maxstack 3
		.locals init (
			[0] class [Game.Data]ifapp.Game.Data.CardInventory,
			[1] valuetype [mscorlib]System.ReadOnlySpan`1<valuetype [Game.Data]ifapp.Game.Data.Crafting.RecipeDetails>,
			[2] valuetype [Game.Data]ifapp.Game.Data.EncounterId,
			[3] valuetype [Game.Data]ifapp.Game.Data.EncounterId,
			[4] valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.EncounterId>,
			[5] valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.CardInstance>,
			[6] int32,
			[7] int32,
			[8] valuetype [Game.Data]ifapp.Game.Data.SavedDeck&,
			[9] int32
		)

		/* 0x0003F214 7EA301000A   */ IL_0000: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
		/* 0x0003F219 6F8F03000A   */ IL_0005: callvirt  instance class [Game.Data]ifapp.Game.Data.CardInventory [Game.Data]$I.$EF::$kCA()
		/* 0x0003F21E 0A           */ IL_000A: stloc.0
		/* 0x0003F21F 02           */ IL_000B: ldarg.0
		/* 0x0003F220 7B310E0004   */ IL_000C: ldfld     class [Game.Data]ifapp.Game.Data.Crafting.RecipeSpecificationDetails ifapp.Game.Scenes.TitleScene::recipeSpecificationDetails
		/* 0x0003F225 6F9206000A   */ IL_0011: callvirt  instance valuetype [mscorlib]System.ReadOnlySpan`1<valuetype [Game.Data]ifapp.Game.Data.Crafting.RecipeDetails> [Game.Data]ifapp.Game.Data.Crafting.RecipeSpecificationDetails::$GEA()
		/* 0x0003F22A 0B           */ IL_0016: stloc.1
		/* 0x0003F22B 02           */ IL_0017: ldarg.0
		/* 0x0003F22C 7B2E0E0004   */ IL_0018: ldfld     class [Game.Data]ifapp.Game.Data.EncounterDetails ifapp.Game.Scenes.TitleScene::encounterDetails
		/* 0x0003F231 7E9606000A   */ IL_001D: ldsfld    string [Game.Data]$I.$df::$ZIA
		/* 0x0003F236 1202         */ IL_0022: ldloca.s  V_2
		/* 0x0003F238 6F9706000A   */ IL_0024: callvirt  instance bool [Game.Data]ifapp.Game.Data.EncounterDetails::$mbA(string, valuetype [Game.Data]ifapp.Game.Data.EncounterId&)
		/* 0x0003F23D 2D0B         */ IL_0029: brtrue.s  IL_0036

		/* 0x0003F23F 72E81C0070   */ IL_002B: ldstr     "Demo Intro Encounter Id is invalid."
		/* 0x0003F244 735B01000A   */ IL_0030: newobj    instance void [mscorlib]System.Exception::.ctor(string)
		/* 0x0003F249 7A           */ IL_0035: throw

		/* 0x0003F24A 02           */ IL_0036: ldarg.0
		/* 0x0003F24B 7B2E0E0004   */ IL_0037: ldfld     class [Game.Data]ifapp.Game.Data.EncounterDetails ifapp.Game.Scenes.TitleScene::encounterDetails
		/* 0x0003F250 7E1E09000A   */ IL_003C: ldsfld    string [Game.Data]$I.$df::$ajA
		/* 0x0003F255 1203         */ IL_0041: ldloca.s  V_3
		/* 0x0003F257 6F9706000A   */ IL_0043: callvirt  instance bool [Game.Data]ifapp.Game.Data.EncounterDetails::$mbA(string, valuetype [Game.Data]ifapp.Game.Data.EncounterId&)
		/* 0x0003F25C 2D0B         */ IL_0048: brtrue.s  IL_0055

		/* 0x0003F25E 7274260070   */ IL_004A: ldstr     "Post Crafting Encounter Id is invalid."
		/* 0x0003F263 735B01000A   */ IL_004F: newobj    instance void [mscorlib]System.Exception::.ctor(string)
		/* 0x0003F268 7A           */ IL_0054: throw

		/* 0x0003F269 18           */ IL_0055: ldc.i4.2
		/* 0x0003F26A E0           */ IL_0056: conv.u
		/* 0x0003F26B FE1C4D000001 */ IL_0057: sizeof    [Game.Data]ifapp.Game.Data.EncounterId
		/* 0x0003F271 D9           */ IL_005D: mul.ovf.un
		/* 0x0003F272 FE0F         */ IL_005E: localloc
		/* 0x0003F274 18           */ IL_0060: ldc.i4.2
		/* 0x0003F275 731F09000A   */ IL_0061: newobj    instance void valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.EncounterId>::.ctor(void*, int32)
		/* 0x0003F27A 1304         */ IL_0066: stloc.s   V_4
		/* 0x0003F27C 1204         */ IL_0068: ldloca.s  V_4
		/* 0x0003F27E 16           */ IL_006A: ldc.i4.0
		/* 0x0003F27F 282009000A   */ IL_006B: call      instance !0& valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.EncounterId>::get_Item(int32)
		/* 0x0003F284 08           */ IL_0070: ldloc.2
		/* 0x0003F285 814D000001   */ IL_0071: stobj     [Game.Data]ifapp.Game.Data.EncounterId
		/* 0x0003F28A 1204         */ IL_0076: ldloca.s  V_4
		/* 0x0003F28C 17           */ IL_0078: ldc.i4.1
		/* 0x0003F28D 282009000A   */ IL_0079: call      instance !0& valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.EncounterId>::get_Item(int32)
		/* 0x0003F292 09           */ IL_007E: ldloc.3
		/* 0x0003F293 814D000001   */ IL_007F: stobj     [Game.Data]ifapp.Game.Data.EncounterId
		/* 0x0003F298 1B           */ IL_0084: ldc.i4.5
		/* 0x0003F299 E0           */ IL_0085: conv.u
		/* 0x0003F29A FE1C6B000001 */ IL_0086: sizeof    [Game.Data]ifapp.Game.Data.CardInstance
		/* 0x0003F2A0 D9           */ IL_008C: mul.ovf.un
		/* 0x0003F2A1 FE0F         */ IL_008D: localloc
		/* 0x0003F2A3 1B           */ IL_008F: ldc.i4.5
		/* 0x0003F2A4 738D03000A   */ IL_0090: newobj    instance void valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.CardInstance>::.ctor(void*, int32)
		/* 0x0003F2A9 1305         */ IL_0095: stloc.s   V_5
		/* 0x0003F2AB 02           */ IL_0097: ldarg.0
		/* 0x0003F2AC 7B2D0E0004   */ IL_0098: ldfld     class [Game.Data]ifapp.Game.Data.GameData ifapp.Game.Scenes.TitleScene::gameData
		/* 0x0003F2B1 07           */ IL_009D: ldloc.1
		/* 0x0003F2B2 1105         */ IL_009E: ldloc.s   V_5
		/* 0x0003F2B4 289906000A   */ IL_00A0: call      void [Game.Data]$I.$df::$HbA(class [Game.Data]ifapp.Game.Data.GameData, valuetype [mscorlib]System.ReadOnlySpan`1<valuetype [Game.Data]ifapp.Game.Data.Crafting.RecipeDetails>, valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.CardInstance>)
		/* 0x0003F2B9 16           */ IL_00A5: ldc.i4.0
		/* 0x0003F2BA 1306         */ IL_00A6: stloc.s   V_6
		/* 0x0003F2BC 2B15         */ IL_00A8: br.s      IL_00BF
		// loop start (head: IL_00BF)
			/* 0x0003F2BE 06           */ IL_00AA: ldloc.0
			/* 0x0003F2BF 1205         */ IL_00AB: ldloca.s  V_5
			/* 0x0003F2C1 1106         */ IL_00AD: ldloc.s   V_6
			/* 0x0003F2C3 282701000A   */ IL_00AF: call      instance !0& valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.CardInstance>::get_Item(int32)
			/* 0x0003F2C8 6F2109000A   */ IL_00B4: callvirt  instance void [Game.Data]ifapp.Game.Data.CardInventory::Add(valuetype [Game.Data]ifapp.Game.Data.CardInstance&)
			/* 0x0003F2CD 1106         */ IL_00B9: ldloc.s   V_6
			/* 0x0003F2CF 17           */ IL_00BB: ldc.i4.1
			/* 0x0003F2D0 58           */ IL_00BC: add
			/* 0x0003F2D1 1306         */ IL_00BD: stloc.s   V_6

			/* 0x0003F2D3 1106         */ IL_00BF: ldloc.s   V_6
			/* 0x0003F2D5 1B           */ IL_00C1: ldc.i4.5
			/* 0x0003F2D6 32E6         */ IL_00C2: blt.s     IL_00AA
		// end loop

		/* 0x0003F2D8 16           */ IL_00C4: ldc.i4.0
		/* 0x0003F2D9 1307         */ IL_00C5: stloc.s   V_7
		/* 0x0003F2DB 2B56         */ IL_00C7: br.s      IL_011F
		// loop start (head: IL_011F)
			/* 0x0003F2DD 7EA301000A   */ IL_00C9: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
			/* 0x0003F2E2 6F8F03000A   */ IL_00CE: callvirt  instance class [Game.Data]ifapp.Game.Data.CardInventory [Game.Data]$I.$EF::$kCA()
			/* 0x0003F2E7 1204         */ IL_00D3: ldloca.s  V_4
			/* 0x0003F2E9 1107         */ IL_00D5: ldloc.s   V_7
			/* 0x0003F2EB 282009000A   */ IL_00D7: call      instance !0& valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.EncounterId>::get_Item(int32)
			/* 0x0003F2F0 714D000001   */ IL_00DC: ldobj     [Game.Data]ifapp.Game.Data.EncounterId
			/* 0x0003F2F5 6F9103000A   */ IL_00E1: callvirt  instance valuetype [Game.Data]ifapp.Game.Data.SavedDeck& [Game.Data]ifapp.Game.Data.CardInventory::GetSavedDeck(valuetype [Game.Data]ifapp.Game.Data.EncounterId)
			/* 0x0003F2FA 1308         */ IL_00E6: stloc.s   V_8
			/* 0x0003F2FC 16           */ IL_00E8: ldc.i4.0
			/* 0x0003F2FD 1309         */ IL_00E9: stloc.s   V_9
			/* 0x0003F2FF 2B27         */ IL_00EB: br.s      IL_0114
			// loop start (head: IL_0114)
				/* 0x0003F301 1108         */ IL_00ED: ldloc.s   V_8
				/* 0x0003F303 7C9403000A   */ IL_00EF: ldflda    valuetype [Game.Data]ifapp.Game.Data.SavedDeck/'<CardIds>e__FixedBuffer' [Game.Data]ifapp.Game.Data.SavedDeck::CardIds
				/* 0x0003F308 7C9503000A   */ IL_00F4: ldflda    int32 [Game.Data]ifapp.Game.Data.SavedDeck/'<CardIds>e__FixedBuffer'::FixedElementField
				/* 0x0003F30D 1109         */ IL_00F9: ldloc.s   V_9
				/* 0x0003F30F D3           */ IL_00FB: conv.i
				/* 0x0003F310 1A           */ IL_00FC: ldc.i4.4
				/* 0x0003F311 5A           */ IL_00FD: mul
				/* 0x0003F312 58           */ IL_00FE: add
				/* 0x0003F313 1205         */ IL_00FF: ldloca.s  V_5
				/* 0x0003F315 1109         */ IL_0101: ldloc.s   V_9
				/* 0x0003F317 282701000A   */ IL_0103: call      instance !0& valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.CardInstance>::get_Item(int32)
				/* 0x0003F31C 7B9303000A   */ IL_0108: ldfld     int32 [Game.Data]ifapp.Game.Data.CardInstance::CardId
				/* 0x0003F321 54           */ IL_010D: stind.i4
				/* 0x0003F322 1109         */ IL_010E: ldloc.s   V_9
				/* 0x0003F324 17           */ IL_0110: ldc.i4.1
				/* 0x0003F325 58           */ IL_0111: add
				/* 0x0003F326 1309         */ IL_0112: stloc.s   V_9

				/* 0x0003F328 1109         */ IL_0114: ldloc.s   V_9
				/* 0x0003F32A 1B           */ IL_0116: ldc.i4.5
				/* 0x0003F32B 32D4         */ IL_0117: blt.s     IL_00ED
			// end loop

			/* 0x0003F32D 1107         */ IL_0119: ldloc.s   V_7
			/* 0x0003F32F 17           */ IL_011B: ldc.i4.1
			/* 0x0003F330 58           */ IL_011C: add
			/* 0x0003F331 1307         */ IL_011D: stloc.s   V_7

			/* 0x0003F333 1107         */ IL_011F: ldloc.s   V_7
			/* 0x0003F335 1204         */ IL_0121: ldloca.s  V_4
			/* 0x0003F337 282209000A   */ IL_0123: call      instance int32 valuetype [mscorlib]System.Span`1<valuetype [Game.Data]ifapp.Game.Data.EncounterId>::get_Length()
			/* 0x0003F33C 329F         */ IL_0128: blt.s     IL_00C9
		// end loop

		/* 0x0003F33E 7EA301000A   */ IL_012A: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
		/* 0x0003F343 7E470E0004   */ IL_012F: ldsfld    class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF> ifapp.Game.Scenes.TitleScene/'<>c'::$Hr
		/* 0x0003F348 25           */ IL_0134: dup
		/* 0x0003F349 2D17         */ IL_0135: brtrue.s  IL_014E

		/* 0x0003F34B 26           */ IL_0137: pop
		/* 0x0003F34C 7E3F0E0004   */ IL_0138: ldsfld    class ifapp.Game.Scenes.TitleScene/'<>c' ifapp.Game.Scenes.TitleScene/'<>c'::$Dr
		/* 0x0003F351 FE0649090006 */ IL_013D: ldftn     instance void ifapp.Game.Scenes.TitleScene/'<>c'::$KN(valuetype [Game.Data]$I.$GF)
		/* 0x0003F357 73AC05000A   */ IL_0143: newobj    instance void class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF>::.ctor(object, native int)
		/* 0x0003F35C 25           */ IL_0148: dup
		/* 0x0003F35D 80470E0004   */ IL_0149: stsfld    class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF> ifapp.Game.Scenes.TitleScene/'<>c'::$Hr

		/* 0x0003F362 6FAD05000A   */ IL_014E: callvirt  instance void [Game.Data]$I.$EF::$BdA(class [mscorlib]System.Action`1<valuetype [Game.Data]$I.$GF>)
		/* 0x0003F367 2A           */ IL_0153: ret
	} // end of method TitleScene::$EN

	// Token: 0x06000936 RID: 2358 RVA: 0x00002142 File Offset: 0x00000342
	.method public final hidebysig newslot virtual 
		instance void $QjA () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 1 (0x1) byte
		.maxstack 8

		/* 0x00000343 2A           */ IL_0000: ret
	} // end of method TitleScene::$QjA

	// Token: 0x06000937 RID: 2359 RVA: 0x00041168 File Offset: 0x0003F368
	.method public final hidebysig newslot virtual 
		instance bool $PjA () cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 111 (0x6F) bytes
		.maxstack 4

		/* 0x0003F374 02           */ IL_0000: ldarg.0
		/* 0x0003F375 7B3A0E0004   */ IL_0001: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F37A 16           */ IL_0006: ldc.i4.0
		/* 0x0003F37B 9A           */ IL_0007: ldelem.ref
		/* 0x0003F37C 6F80020006   */ IL_0008: callvirt  instance valuetype ifapp.Game.UI.C2DVideoPlayer/$OA ifapp.Game.UI.C2DVideoPlayer::$BD()
		/* 0x0003F381 2C20         */ IL_000D: brfalse.s IL_002F

		/* 0x0003F383 02           */ IL_000F: ldarg.0
		/* 0x0003F384 7B3A0E0004   */ IL_0010: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F389 16           */ IL_0015: ldc.i4.0
		/* 0x0003F38A 9A           */ IL_0016: ldelem.ref
		/* 0x0003F38B 6F80020006   */ IL_0017: callvirt  instance valuetype ifapp.Game.UI.C2DVideoPlayer/$OA ifapp.Game.UI.C2DVideoPlayer::$BD()
		/* 0x0003F390 17           */ IL_001C: ldc.i4.1
		/* 0x0003F391 2E10         */ IL_001D: beq.s     IL_002F

		/* 0x0003F393 02           */ IL_001F: ldarg.0
		/* 0x0003F394 7B3A0E0004   */ IL_0020: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F399 16           */ IL_0025: ldc.i4.0
		/* 0x0003F39A 9A           */ IL_0026: ldelem.ref
		/* 0x0003F39B 6F80020006   */ IL_0027: callvirt  instance valuetype ifapp.Game.UI.C2DVideoPlayer/$OA ifapp.Game.UI.C2DVideoPlayer::$BD()
		/* 0x0003F3A0 18           */ IL_002C: ldc.i4.2
		/* 0x0003F3A1 3302         */ IL_002D: bne.un.s  IL_0031

		/* 0x0003F3A3 16           */ IL_002F: ldc.i4.0
		/* 0x0003F3A4 2A           */ IL_0030: ret

		/* 0x0003F3A5 02           */ IL_0031: ldarg.0
		/* 0x0003F3A6 7B3A0E0004   */ IL_0032: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F3AB 16           */ IL_0037: ldc.i4.0
		/* 0x0003F3AC 9A           */ IL_0038: ldelem.ref
		/* 0x0003F3AD 6F80020006   */ IL_0039: callvirt  instance valuetype ifapp.Game.UI.C2DVideoPlayer/$OA ifapp.Game.UI.C2DVideoPlayer::$BD()
		/* 0x0003F3B2 19           */ IL_003E: ldc.i4.3
		/* 0x0003F3B3 330D         */ IL_003F: bne.un.s  IL_004E

		/* 0x0003F3B5 02           */ IL_0041: ldarg.0
		/* 0x0003F3B6 7B3A0E0004   */ IL_0042: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F3BB 16           */ IL_0047: ldc.i4.0
		/* 0x0003F3BC 9A           */ IL_0048: ldelem.ref
		/* 0x0003F3BD 6F88020006   */ IL_0049: callvirt  instance void ifapp.Game.UI.C2DVideoPlayer::$fD()

		/* 0x0003F3C2 02           */ IL_004E: ldarg.0
		/* 0x0003F3C3 7B390E0004   */ IL_004F: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D[] ifapp.Game.Scenes.TitleScene::bgVideosContainer
		/* 0x0003F3C8 17           */ IL_0054: ldc.i4.1
		/* 0x0003F3C9 9A           */ IL_0055: ldelem.ref
		/* 0x0003F3CA 2200000040   */ IL_0056: ldc.r4    2
		/* 0x0003F3CF 02           */ IL_005B: ldarg.0
		/* 0x0003F3D0 FE063E090006 */ IL_005C: ldftn     instance void ifapp.Game.Scenes.TitleScene::$GN(class [UnityEngine.CoreModule]UnityEngine.Component)
		/* 0x0003F3D6 733F01000A   */ IL_0062: newobj    instance void class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.Component>::.ctor(object, native int)
		/* 0x0003F3DB 284001000A   */ IL_0067: call      valuetype [Tweens]ifapp.Game.Tweens.CancellableTweenInstance [Game.UI.Common]$k.$gg::$nFA(class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D, float32, class [mscorlib]System.Action`1<class [UnityEngine.CoreModule]UnityEngine.Component>)
		/* 0x0003F3E0 26           */ IL_006C: pop
		/* 0x0003F3E1 17           */ IL_006D: ldc.i4.1
		/* 0x0003F3E2 2A           */ IL_006E: ret
	} // end of method TitleScene::$PjA

	// Token: 0x06000938 RID: 2360 RVA: 0x000411E4 File Offset: 0x0003F3E4
	.method public hidebysig 
		instance void Update () cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 266 (0x10A) bytes
		// LocalVarSig Token: 0x1100006C RID: 108
		.maxstack 3
		.locals init (
			[0] valuetype [UnityEngine.CoreModule]UnityEngine.Vector2
		)

		/* 0x0003F3F0 28DC040006   */ IL_0000: call      class ifapp.Game.Scenes.CoreScene ifapp.Game.Scenes.CoreScene::$Yh()
		/* 0x0003F3F5 7B91070004   */ IL_0005: ldfld     class ifapp.Game.UI.Global.UiTextToolTip ifapp.Game.Scenes.CoreScene::UiTextToolTip
		/* 0x0003F3FA 6F3B040006   */ IL_000A: callvirt  instance bool ifapp.Game.UI.Global.UiTextToolTip::$CG()
		/* 0x0003F3FF 2C2A         */ IL_000F: brfalse.s IL_003B

		/* 0x0003F401 7E4100000A   */ IL_0011: ldsfld    class [Game.Input]ifapp.Game.Input.InputManager [Game.Input]ifapp.Game.Input.InputManager::Instance
		/* 0x0003F406 6F3D03000A   */ IL_0016: callvirt  instance valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 [Game.Input]ifapp.Game.Input.InputManager::GetCurrentMousePositionNormalizedInUISpace()
		/* 0x0003F40B 7EA800000A   */ IL_001B: ldsfld    valuetype [Unity.Mathematics]Unity.Mathematics.float2 [Game.UI.Common]$k.$Ig::$tpA
		/* 0x0003F410 28D203000A   */ IL_0020: call      valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 [Unity.Mathematics]Unity.Mathematics.float2::op_Implicit(valuetype [Unity.Mathematics]Unity.Mathematics.float2)
		/* 0x0003F415 28A900000A   */ IL_0025: call      valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 [UnityEngine.CoreModule]UnityEngine.Vector2::op_Multiply(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2, valuetype [UnityEngine.CoreModule]UnityEngine.Vector2)
		/* 0x0003F41A 0A           */ IL_002A: stloc.0
		/* 0x0003F41B 28DC040006   */ IL_002B: call      class ifapp.Game.Scenes.CoreScene ifapp.Game.Scenes.CoreScene::$Yh()
		/* 0x0003F420 7B91070004   */ IL_0030: ldfld     class ifapp.Game.UI.Global.UiTextToolTip ifapp.Game.Scenes.CoreScene::UiTextToolTip
		/* 0x0003F425 06           */ IL_0035: ldloc.0
		/* 0x0003F426 6F3C040006   */ IL_0036: callvirt  instance void ifapp.Game.UI.Global.UiTextToolTip::$dG(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2)

		/* 0x0003F42B 7E480E0004   */ IL_003B: ldsfld    class [Str]Str.DynamicString/PopulateDelegate`2<valuetype [Game.Data]ifapp.Game.Data.RecipeId, int32> ifapp.Game.Scenes.TitleScene/'<>c'::$ir
		/* 0x0003F430 25           */ IL_0040: dup
		/* 0x0003F431 2D17         */ IL_0041: brtrue.s  IL_005A

		/* 0x0003F433 26           */ IL_0043: pop
		/* 0x0003F434 7E3F0E0004   */ IL_0044: ldsfld    class ifapp.Game.Scenes.TitleScene/'<>c' ifapp.Game.Scenes.TitleScene/'<>c'::$Dr
		/* 0x0003F439 FE064A090006 */ IL_0049: ldftn     instance void ifapp.Game.Scenes.TitleScene/'<>c'::$lN(valuetype [ZString]Cysharp.Text.Utf16ValueStringBuilder&, valuetype [Game.Data]ifapp.Game.Data.RecipeId, int32)
		/* 0x0003F43F 732309000A   */ IL_004F: newobj    instance void class [Str]Str.DynamicString/PopulateDelegate`2<valuetype [Game.Data]ifapp.Game.Data.RecipeId, int32>::.ctor(object, native int)
		/* 0x0003F444 25           */ IL_0054: dup
		/* 0x0003F445 80480E0004   */ IL_0055: stsfld    class [Str]Str.DynamicString/PopulateDelegate`2<valuetype [Game.Data]ifapp.Game.Data.RecipeId, int32> ifapp.Game.Scenes.TitleScene/'<>c'::$ir

		/* 0x0003F44A 17           */ IL_005A: ldc.i4.1
		/* 0x0003F44B 732409000A   */ IL_005B: newobj    instance void [Game.Data]ifapp.Game.Data.RecipeId::.ctor(int32)
		/* 0x0003F450 28F003000A   */ IL_0060: call      float64 [Game.Common]$i.$Ne::$LY()
		/* 0x0003F455 69           */ IL_0065: conv.i4
		/* 0x0003F456 28C400002B   */ IL_0066: call      valuetype [Str]Str.DynamicString [Str]Str.DynamicString::Create<valuetype [Game.Data]ifapp.Game.Data.RecipeId, int32>(class [Str]Str.DynamicString/PopulateDelegate`2<!!0, !!1>, !!0, !!1)
		/* 0x0003F45B 26           */ IL_006B: pop
		/* 0x0003F45C 02           */ IL_006C: ldarg.0
		/* 0x0003F45D 7B3A0E0004   */ IL_006D: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F462 16           */ IL_0072: ldc.i4.0
		/* 0x0003F463 9A           */ IL_0073: ldelem.ref
		/* 0x0003F464 6F80020006   */ IL_0074: callvirt  instance valuetype ifapp.Game.UI.C2DVideoPlayer/$OA ifapp.Game.UI.C2DVideoPlayer::$BD()
		/* 0x0003F469 1B           */ IL_0079: ldc.i4.5
		/* 0x0003F46A 333F         */ IL_007A: bne.un.s  IL_00BB

		/* 0x0003F46C 02           */ IL_007C: ldarg.0
		/* 0x0003F46D 7B3A0E0004   */ IL_007D: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F472 16           */ IL_0082: ldc.i4.0
		/* 0x0003F473 9A           */ IL_0083: ldelem.ref
		/* 0x0003F474 6F87020006   */ IL_0084: callvirt  instance void ifapp.Game.UI.C2DVideoPlayer::$ED()
		/* 0x0003F479 02           */ IL_0089: ldarg.0
		/* 0x0003F47A 7B3A0E0004   */ IL_008A: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F47F 17           */ IL_008F: ldc.i4.1
		/* 0x0003F480 9A           */ IL_0090: ldelem.ref
		/* 0x0003F481 6F88020006   */ IL_0091: callvirt  instance void ifapp.Game.UI.C2DVideoPlayer::$fD()
		/* 0x0003F486 02           */ IL_0096: ldarg.0
		/* 0x0003F487 7B390E0004   */ IL_0097: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D[] ifapp.Game.Scenes.TitleScene::bgVideosContainer
		/* 0x0003F48C 16           */ IL_009C: ldc.i4.0
		/* 0x0003F48D 9A           */ IL_009D: ldelem.ref
		/* 0x0003F48E 2200000000   */ IL_009E: ldc.r4    0.0
		/* 0x0003F493 6F4500000A   */ IL_00A3: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D::$CFA(float32)
		/* 0x0003F498 02           */ IL_00A8: ldarg.0
		/* 0x0003F499 7B390E0004   */ IL_00A9: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D[] ifapp.Game.Scenes.TitleScene::bgVideosContainer
		/* 0x0003F49E 17           */ IL_00AE: ldc.i4.1
		/* 0x0003F49F 9A           */ IL_00AF: ldelem.ref
		/* 0x0003F4A0 220000803F   */ IL_00B0: ldc.r4    1
		/* 0x0003F4A5 6F4500000A   */ IL_00B5: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D::$CFA(float32)
		/* 0x0003F4AA 2A           */ IL_00BA: ret

		/* 0x0003F4AB 02           */ IL_00BB: ldarg.0
		/* 0x0003F4AC 7B3A0E0004   */ IL_00BC: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F4B1 17           */ IL_00C1: ldc.i4.1
		/* 0x0003F4B2 9A           */ IL_00C2: ldelem.ref
		/* 0x0003F4B3 6F80020006   */ IL_00C3: callvirt  instance valuetype ifapp.Game.UI.C2DVideoPlayer/$OA ifapp.Game.UI.C2DVideoPlayer::$BD()
		/* 0x0003F4B8 1B           */ IL_00C8: ldc.i4.5
		/* 0x0003F4B9 333E         */ IL_00C9: bne.un.s  IL_0109

		/* 0x0003F4BB 02           */ IL_00CB: ldarg.0
		/* 0x0003F4BC 7B3A0E0004   */ IL_00CC: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F4C1 17           */ IL_00D1: ldc.i4.1
		/* 0x0003F4C2 9A           */ IL_00D2: ldelem.ref
		/* 0x0003F4C3 6F87020006   */ IL_00D3: callvirt  instance void ifapp.Game.UI.C2DVideoPlayer::$ED()
		/* 0x0003F4C8 02           */ IL_00D8: ldarg.0
		/* 0x0003F4C9 7B3A0E0004   */ IL_00D9: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x0003F4CE 16           */ IL_00DE: ldc.i4.0
		/* 0x0003F4CF 9A           */ IL_00DF: ldelem.ref
		/* 0x0003F4D0 6F88020006   */ IL_00E0: callvirt  instance void ifapp.Game.UI.C2DVideoPlayer::$fD()
		/* 0x0003F4D5 02           */ IL_00E5: ldarg.0
		/* 0x0003F4D6 7B390E0004   */ IL_00E6: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D[] ifapp.Game.Scenes.TitleScene::bgVideosContainer
		/* 0x0003F4DB 16           */ IL_00EB: ldc.i4.0
		/* 0x0003F4DC 9A           */ IL_00EC: ldelem.ref
		/* 0x0003F4DD 220000803F   */ IL_00ED: ldc.r4    1
		/* 0x0003F4E2 6F4500000A   */ IL_00F2: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D::$CFA(float32)
		/* 0x0003F4E7 02           */ IL_00F7: ldarg.0
		/* 0x0003F4E8 7B390E0004   */ IL_00F8: ldfld     class [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D[] ifapp.Game.Scenes.TitleScene::bgVideosContainer
		/* 0x0003F4ED 17           */ IL_00FD: ldc.i4.1
		/* 0x0003F4EE 9A           */ IL_00FE: ldelem.ref
		/* 0x0003F4EF 2200000000   */ IL_00FF: ldc.r4    0.0
		/* 0x0003F4F4 6F4500000A   */ IL_0104: callvirt  instance void [Game.UI.Common]ifapp.Game.UI.Common.Constrained2D::$CFA(float32)

		/* 0x0003F4F9 2A           */ IL_0109: ret
	} // end of method TitleScene::Update

	// Token: 0x06000939 RID: 2361 RVA: 0x00007BD4 File Offset: 0x00005DD4
	.method private hidebysig 
		instance void OnDestroy () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 31 (0x1F) bytes
		.maxstack 8

		/* 0x00005DD5 16           */ IL_0000: ldc.i4.0
		/* 0x00005DD6 803C0E0004   */ IL_0001: stsfld    bool ifapp.Game.Scenes.TitleScene::$cr
		/* 0x00005DDB 7E4100000A   */ IL_0006: ldsfld    class [Game.Input]ifapp.Game.Input.InputManager [Game.Input]ifapp.Game.Input.InputManager::Instance
		/* 0x00005DE0 14           */ IL_000B: ldnull
		/* 0x00005DE1 283D00000A   */ IL_000C: call      bool [UnityEngine.CoreModule]UnityEngine.Object::op_Inequality(class [UnityEngine.CoreModule]UnityEngine.Object, class [UnityEngine.CoreModule]UnityEngine.Object)
		/* 0x00005DE6 2C0B         */ IL_0011: brfalse.s IL_001E

		/* 0x00005DE8 7E4100000A   */ IL_0013: ldsfld    class [Game.Input]ifapp.Game.Input.InputManager [Game.Input]ifapp.Game.Input.InputManager::Instance
		/* 0x00005DED 02           */ IL_0018: ldarg.0
		/* 0x00005DEE 6F4200000A   */ IL_0019: callvirt  instance void [Game.Input]ifapp.Game.Input.InputManager::ReleaseInputControl(class [Game.Input]ifapp.Game.Input.InputReceiver)

		/* 0x00005DF3 2A           */ IL_001E: ret
	} // end of method TitleScene::OnDestroy

	// Token: 0x0600093A RID: 2362 RVA: 0x00007BF4 File Offset: 0x00005DF4
	.method private hidebysig 
		instance void $fN () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 22 (0x16) bytes
		.maxstack 8

		/* 0x00005DF5 7E3C0E0004   */ IL_0000: ldsfld    bool ifapp.Game.Scenes.TitleScene::$cr
		/* 0x00005DFA 2D01         */ IL_0005: brtrue.s  IL_0008

		/* 0x00005DFC 2A           */ IL_0007: ret

		/* 0x00005DFD 02           */ IL_0008: ldarg.0
		/* 0x00005DFE 02           */ IL_0009: ldarg.0
		/* 0x00005DFF 2833090006   */ IL_000A: call      instance class [mscorlib]System.Collections.IEnumerator ifapp.Game.Scenes.TitleScene::$eN()
		/* 0x00005E04 28A600000A   */ IL_000F: call      instance class [UnityEngine.CoreModule]UnityEngine.Coroutine [UnityEngine.CoreModule]UnityEngine.MonoBehaviour::StartCoroutine(class [mscorlib]System.Collections.IEnumerator)
		/* 0x00005E09 26           */ IL_0014: pop
		/* 0x00005E0A 2A           */ IL_0015: ret
	} // end of method TitleScene::$fN

	// Token: 0x0600093B RID: 2363 RVA: 0x000033AD File Offset: 0x000015AD
	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x000015AE 02           */ IL_0000: ldarg.0
		/* 0x000015AF 284900000A   */ IL_0001: call      instance void [Game.Input]ifapp.Game.Input.InputReceiver::.ctor()
		/* 0x000015B4 2A           */ IL_0006: ret
	} // end of method TitleScene::.ctor

	// Token: 0x0600093C RID: 2364 RVA: 0x000412FC File Offset: 0x0003F4FC
	.method private hidebysig 
		instance void $FN (
			class [Game.UI.Common]ifapp.Game.UI.Common.UIButton '1',
			[in] valuetype [UnityEngine.PhysicsModule]UnityEngine.RaycastHit& '1'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 12 bytes
		// Code Size: 212 (0xD4) bytes
		// LocalVarSig Token: 0x11000075 RID: 117
		.maxstack 6
		.locals init (
			[0] valuetype [Game.Data]ifapp.Game.Data.Story.StoryScriptDetailsEntry,
			[1] class $C.$vB
		)

		/* 0x0003F508 02           */ IL_0000: ldarg.0
		/* 0x0003F509 17           */ IL_0001: ldc.i4.1
		/* 0x0003F50A 287203000A   */ IL_0002: call      instance void [Game.Input]ifapp.Game.Input.InputReceiver::set_DisableInputEvents(bool)
		/* 0x0003F50F 7ECE02000A   */ IL_0007: ldsfld    class [Game.Audio]$H.$nD [Game.Audio]$H.$nD::$odA
		/* 0x0003F514 1B           */ IL_000C: ldc.i4.5
		/* 0x0003F515 220000803F   */ IL_000D: ldc.r4    1
		/* 0x0003F51A 17           */ IL_0012: ldc.i4.1
		/* 0x0003F51B 6FCF02000A   */ IL_0013: callvirt  instance void [Game.Audio]$H.$nD::$ZlA(valuetype [Game.Audio]$H.$Be, float32, bool)
		/* 0x0003F520 7EA301000A   */ IL_0018: ldsfld    class [Game.Data]$I.$EF [Game.Data]$I.$EF::$AmA
		/* 0x0003F525 18           */ IL_001D: ldc.i4.2
		/* 0x0003F526 6FEE03000A   */ IL_001E: callvirt  instance bool [Game.Data]$I.$EF::$EdA(valuetype [Game.Data]ifapp.Game.Data.TutorialFlags)
		/* 0x0003F52B 2D76         */ IL_0023: brtrue.s  IL_009B

		/* 0x0003F52D 02           */ IL_0025: ldarg.0
		/* 0x0003F52E 7B320E0004   */ IL_0026: ldfld     class [Game.Data]ifapp.Game.Data.Story.StoryDetails ifapp.Game.Scenes.TitleScene::storyDetails
		/* 0x0003F533 7F7C06000A   */ IL_002B: ldsflda   valuetype [Game.Data]ifapp.Game.Data.Story.StoryIdentifier [Game.Data]$I.$df::$xIA
		/* 0x0003F538 1200         */ IL_0030: ldloca.s  V_0
		/* 0x0003F53A 6F9D03000A   */ IL_0032: callvirt  instance bool [Game.Data]ifapp.Game.Data.Story.StoryDetails::$yDA(valuetype [Game.Data]ifapp.Game.Data.Story.StoryIdentifier&, valuetype [Game.Data]ifapp.Game.Data.Story.StoryScriptDetailsEntry&)
		/* 0x0003F53F 2D0B         */ IL_0037: brtrue.s  IL_0044

		/* 0x0003F541 72301D0070   */ IL_0039: ldstr     "Demo intro scenario story script details not found!"
		/* 0x0003F546 735B01000A   */ IL_003E: newobj    instance void [mscorlib]System.Exception::.ctor(string)
		/* 0x0003F54B 7A           */ IL_0043: throw

		/* 0x0003F54C 730F080006   */ IL_0044: newobj    instance void $C.$vB::.ctor()
		/* 0x0003F551 25           */ IL_0049: dup
		/* 0x0003F552 7E7C06000A   */ IL_004A: ldsfld    valuetype [Game.Data]ifapp.Game.Data.Story.StoryIdentifier [Game.Data]$I.$df::$xIA
		/* 0x0003F557 7D620C0004   */ IL_004F: stfld     valuetype [Game.Data]ifapp.Game.Data.Story.StoryIdentifier $C.$vB::$uO
		/* 0x0003F55C 25           */ IL_0054: dup
		/* 0x0003F55D 7C610C0004   */ IL_0055: ldflda    valuetype [Game.Data]ifapp.Game.Data.Story.StoryIdentifier $C.$vB::$TO
		/* 0x0003F562 FE152D000001 */ IL_005A: initobj   [Game.Data]ifapp.Game.Data.Story.StoryIdentifier
		/* 0x0003F568 0B           */ IL_0060: stloc.1
		/* 0x0003F569 02           */ IL_0061: ldarg.0
		/* 0x0003F56A 7B320E0004   */ IL_0062: ldfld     class [Game.Data]ifapp.Game.Data.Story.StoryDetails ifapp.Game.Scenes.TitleScene::storyDetails
		/* 0x0003F56F 07           */ IL_0067: ldloc.1
		/* 0x0003F570 2814080006   */ IL_0068: call      void ifapp.Game.Scenes.StoryScene::$Am(class [Game.Data]ifapp.Game.Data.Story.StoryDetails, class $C.$vB)
		/* 0x0003F575 28DC040006   */ IL_006D: call      class ifapp.Game.Scenes.CoreScene ifapp.Game.Scenes.CoreScene::$Yh()
		/* 0x0003F57A 18           */ IL_0072: ldc.i4.2
		/* 0x0003F57B 14           */ IL_0073: ldnull
		/* 0x0003F57C 7E430E0004   */ IL_0074: ldsfld    class [mscorlib]System.Action`1<class ifapp.Game.Scenes.StoryScene> ifapp.Game.Scenes.TitleScene/'<>c'::$Fr
		/* 0x0003F581 25           */ IL_0079: dup
		/* 0x0003F582 2D17         */ IL_007A: brtrue.s  IL_0093

		/* 0x0003F584 26           */ IL_007C: pop
		/* 0x0003F585 7E3F0E0004   */ IL_007D: ldsfld    class ifapp.Game.Scenes.TitleScene/'<>c' ifapp.Game.Scenes.TitleScene/'<>c'::$Dr
		/* 0x0003F58A FE0645090006 */ IL_0082: ldftn     instance void ifapp.Game.Scenes.TitleScene/'<>c'::$IN(class ifapp.Game.Scenes.StoryScene)
		/* 0x0003F590 739E03000A   */ IL_0088: newobj    instance void class [mscorlib]System.Action`1<class ifapp.Game.Scenes.StoryScene>::.ctor(object, native int)
		/* 0x0003F595 25           */ IL_008D: dup
		/* 0x0003F596 80430E0004   */ IL_008E: stsfld    class [mscorlib]System.Action`1<class ifapp.Game.Scenes.StoryScene> ifapp.Game.Scenes.TitleScene/'<>c'::$Fr

		/* 0x0003F59B 14           */ IL_0093: ldnull
		/* 0x0003F59C 14           */ IL_0094: ldnull
		/* 0x0003F59D 6FC500002B   */ IL_0095: callvirt  instance void ifapp.Game.Scenes.CoreScene::$BH<class ifapp.Game.Scenes.TitleScene, class ifapp.Game.Scenes.StoryScene>(valuetype $C.$Ob, class [mscorlib]System.Action, class [mscorlib]System.Action`1<!!1>, class [mscorlib]System.Action`1<!!1>, class [mscorlib]System.Func`1<bool>)
		/* 0x0003F5A2 2A           */ IL_009A: ret

		/* 0x0003F5A3 28DC040006   */ IL_009B: call      class ifapp.Game.Scenes.CoreScene ifapp.Game.Scenes.CoreScene::$Yh()
		/* 0x0003F5A8 18           */ IL_00A0: ldc.i4.2
		/* 0x0003F5A9 14           */ IL_00A1: ldnull
		/* 0x0003F5AA 7E440E0004   */ IL_00A2: ldsfld    class [mscorlib]System.Action`1<class ifapp.Game.Scenes.HubScene> ifapp.Game.Scenes.TitleScene/'<>c'::$gr
		/* 0x0003F5AF 25           */ IL_00A7: dup
		/* 0x0003F5B0 2D17         */ IL_00A8: brtrue.s  IL_00C1

		/* 0x0003F5B2 26           */ IL_00AA: pop
		/* 0x0003F5B3 7E3F0E0004   */ IL_00AB: ldsfld    class ifapp.Game.Scenes.TitleScene/'<>c' ifapp.Game.Scenes.TitleScene/'<>c'::$Dr
		/* 0x0003F5B8 FE0646090006 */ IL_00B0: ldftn     instance void ifapp.Game.Scenes.TitleScene/'<>c'::$jN(class ifapp.Game.Scenes.HubScene)
		/* 0x0003F5BE 734906000A   */ IL_00B6: newobj    instance void class [mscorlib]System.Action`1<class ifapp.Game.Scenes.HubScene>::.ctor(object, native int)
		/* 0x0003F5C3 25           */ IL_00BB: dup
		/* 0x0003F5C4 80440E0004   */ IL_00BC: stsfld    class [mscorlib]System.Action`1<class ifapp.Game.Scenes.HubScene> ifapp.Game.Scenes.TitleScene/'<>c'::$gr

		/* 0x0003F5C9 14           */ IL_00C1: ldnull
		/* 0x0003F5CA 14           */ IL_00C2: ldnull
		/* 0x0003F5CB 6FC600002B   */ IL_00C3: callvirt  instance void ifapp.Game.Scenes.CoreScene::$BH<class ifapp.Game.Scenes.TitleScene, class ifapp.Game.Scenes.HubScene>(valuetype $C.$Ob, class [mscorlib]System.Action, class [mscorlib]System.Action`1<!!1>, class [mscorlib]System.Action`1<!!1>, class [mscorlib]System.Func`1<bool>)
		/* 0x0003F5D0 02           */ IL_00C8: ldarg.0
		/* 0x0003F5D1 7B350E0004   */ IL_00C9: ldfld     class ifapp.Game.Animation.Constrained2DTimelineAnimator ifapp.Game.Scenes.TitleScene::playButtonAnimation
		/* 0x0003F5D6 6F520F0006   */ IL_00CE: callvirt  instance void ifapp.Game.Animation.Constrained2DTimelineAnimator::$PW()
		/* 0x0003F5DB 2A           */ IL_00D3: ret
	} // end of method TitleScene::$FN

	// Token: 0x0600093D RID: 2365 RVA: 0x00007C0B File Offset: 0x00005E0B
	.method private hidebysig 
		instance void $gN (
			class [Game.UI.Common]ifapp.Game.UI.Common.UIButton '1',
			[in] valuetype [UnityEngine.PhysicsModule]UnityEngine.RaycastHit& '1'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x00005E0C 02           */ IL_0000: ldarg.0
		/* 0x00005E0D 283A090006   */ IL_0001: call      instance void ifapp.Game.Scenes.TitleScene::$fN()
		/* 0x00005E12 2A           */ IL_0006: ret
	} // end of method TitleScene::$gN

	// Token: 0x0600093E RID: 2366 RVA: 0x00007C13 File Offset: 0x00005E13
	.method private hidebysig 
		instance void $GN (
			class [UnityEngine.CoreModule]UnityEngine.Component '1'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 20 (0x14) bytes
		.maxstack 8

		/* 0x00005E14 02           */ IL_0000: ldarg.0
		/* 0x00005E15 7B3A0E0004   */ IL_0001: ldfld     class ifapp.Game.UI.C2DVideoPlayer[] ifapp.Game.Scenes.TitleScene::bgVideos
		/* 0x00005E1A 17           */ IL_0006: ldc.i4.1
		/* 0x00005E1B 9A           */ IL_0007: ldelem.ref
		/* 0x00005E1C 02           */ IL_0008: ldarg.0
		/* 0x00005E1D 7B3B0E0004   */ IL_0009: ldfld     class [Unity.Addressables]UnityEngine.AddressableAssets.AssetReferenceT`1<class [UnityEngine.VideoModule]UnityEngine.Video.VideoClip> ifapp.Game.Scenes.TitleScene::targetVideo
		/* 0x00005E22 6F86020006   */ IL_000E: callvirt  instance void ifapp.Game.UI.C2DVideoPlayer::$eD(class [Unity.Addressables]UnityEngine.AddressableAssets.AssetReferenceT`1<class [UnityEngine.VideoModule]UnityEngine.Video.VideoClip>)
		/* 0x00005E27 2A           */ IL_0013: ret
	} // end of method TitleScene::$GN

	// Token: 0x0600093F RID: 2367 RVA: 0x00007C28 File Offset: 0x00005E28
	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 20 (0x14) bytes
		.maxstack 8

		/* 0x00005E29 21E3FDD6B9FFFFFFFF */ IL_0000: ldc.i8    -1177092637
		/* 0x00005E32 289302000A   */ IL_0009: call      class [mscorlib]System.Reflection.MethodInfo [Game.Common]$i.$ve::$Sz(uint64)
		/* 0x00005E37 803E0E0004   */ IL_000E: stsfld    class [mscorlib]System.Reflection.MethodInfo ifapp.Game.Scenes.TitleScene::$dr
		/* 0x00005E3C 2A           */ IL_0013: ret
	} // end of method TitleScene::.cctor

} // end of class ifapp.Game.Scenes.TitleScene
