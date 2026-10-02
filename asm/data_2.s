	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

.global lbl_80423410
lbl_80423410:
	.incbin "baserom.dol", 0x41F510, 0x48
.global lbl_80423458
lbl_80423458:
	.4byte 0x801E0B80, 0x801E0C0C, 0x801E0C98, 0x801E0D24
	.4byte 0x801E0DB0, 0x801E0E3C, 0x801E0EC8, 0x801E0F54
	.4byte 0x801E0FE0
.global lbl_8042347C
lbl_8042347C:
	.4byte 0x801E12B0, 0x801E12DC, 0x801E12E4, 0x801E12F0
	.4byte 0x801E12FC, 0x801E1318, 0x801E1334, 0x801E23C4
	.4byte 0x801E23C4, 0x801E23C4, 0x801E23C4, 0x801E23C4
	.4byte 0x801E23C4, 0x801E23C4, 0x801E23C4, 0x801E23C4
	.4byte 0x801E2364, 0x801E2374, 0x801E2394, 0x801E23C4
	.4byte 0x801E23A4, 0x801E23A4, 0x801E23A4, 0x801E23A4
	.4byte 0x801E23A4, 0x801E23A4, 0x801E23A4, 0x801E23A4
	.4byte 0x801E23C4, 0x801E23C4, 0x801E23C4, 0x801E23C4
	.4byte 0x801E2384
.global lbl_80423500
lbl_80423500:
	.float -9.168931270219285e-39, 0.0, -2.7804676233010166e-39, -2.8674826527417305e-39
	.float -2.780327493454584e-39, -2.7794306624374163e-39, -9.168897639056141e-39, 0.0
	.float -9.168886428668426e-39, 0.0, -9.168875218280712e-39, 0.0
	.float -9.168864007892997e-39, 0.0, 0.0, 0.0
.global lbl_80423540
lbl_80423540:
	.ascii "lens flare"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80423550
lbl_80423550:
	.incbin "baserom.dol", 0x41F650, 0x40
.global lbl_80423590
lbl_80423590:
	.float -9.168976111770143e-39, 0.0, -2.79077557480459e-39, -2.791655590240186e-39
	.float -2.790478499530153e-39, -2.8668324502542838e-39, -9.168897639056141e-39, 0.0
	.float -9.168886428668426e-39, 0.0, -9.168875218280712e-39, 0.0
	.float -9.168864007892997e-39, 0.0, 0.0, 0.0
.global lbl_804235D0
lbl_804235D0:
	.4byte 0x801E7650, 0x801E76D8, 0x801E7750, 0x801E77F8
	.4byte 0x801E78A8, 0x801E7928, 0x801E79A8, 0x801E7A4C
	.4byte 0x801E7BD0, 0x801E7D54, 0x801E7ED8
.global lbl_804235FC
lbl_804235FC:
	.4byte 0x801ECA0C, 0x801ECA74, 0x801ECABC, 0x801ECB24
	.4byte 0x801ECB34, 0x801ECB44, 0x801ECB54, 0x801ECB64
	.4byte 0x801ECB74
.global lbl_80423620
lbl_80423620:
	.incbin "baserom.dol", 0x41F720, 0x30
.global lbl_80423650
lbl_80423650:
	.float -9.169020953321001e-39, 0.0, -2.831643043218159e-39, -9.168897639056141e-39
	.float 0.0, 0.0
.global lbl_80423668
lbl_80423668:
	.float -9.16904337409643e-39, 0.0, -2.847696318425464e-39, -2.8480662612200458e-39
	.float -2.850616624425117e-39, -2.8668324502542838e-39, -9.168897639056141e-39, 0.0
	.float -9.168886428668426e-39, 0.0, -9.168875218280712e-39, 0.0
	.float -9.168864007892997e-39, 0.0, 0.0, 0.0
	.float -2.8578361141133184e-39, -2.8578361141133184e-39, -2.8574998024818805e-39, -2.8573316466661615e-39
	.float -2.857415724574021e-39, -2.85758388038974e-39, -2.857752036205459e-39, -2.8576679582975995e-39
.global lbl_804236C8
lbl_804236C8:
	.float -9.168864007892997e-39, 0.0, -2.858071532255325e-39, -2.8674826527417305e-39
	.float -2.8676732293328786e-39, -2.8668324502542838e-39
.global lbl_804236E0
lbl_804236E0:
	.4byte 0x801F49BC, 0x801F49BC, 0x801F48CC, 0x801F4854
	.4byte 0x801F4890, 0x801F4908, 0x801F4944, 0x801F4980
.global lbl_80423700
lbl_80423700:
	.float 2.5223372357846707e-44, 3.0828566215145976e-44, 3.6433760072445244e-44, 4.203895392974451e-44
	.float 2.6624670822171524e-44, 3.2229864679470793e-44, 3.783505853677006e-44, 4.344025239406933e-44
.global lbl_80423720
lbl_80423720:
	.incbin "baserom.dol", 0x41F820, 0x48
.global lbl_80423768
lbl_80423768:
	.incbin "baserom.dol", 0x41F868, 0x38
.global lbl_804237A0
lbl_804237A0:
	.ascii "hierarchy"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804237B0
lbl_804237B0:
	.incbin "baserom.dol", 0x41F8B0, 0x38
.global lbl_804237E8
lbl_804237E8:
	.ascii "Menu World Light"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804237FC
lbl_804237FC:
	.ascii "Menu Root Null"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80423810
lbl_80423810:
	.incbin "baserom.dol", 0x41F910, 0x38
.global lbl_80423848
lbl_80423848:
	.4byte 0x80205224, 0x80204FD8, 0x80205030, 0x80205084
	.4byte 0x802050D8, 0x8020512C, 0x80205180, 0x802051D0
.global lbl_80423868
lbl_80423868:
	.incbin "baserom.dol", 0x41F968, 0x48
.global lbl_804238B0
lbl_804238B0:
	.incbin "baserom.dol", 0x41F9B0, 0x50
.global lbl_80423900
lbl_80423900:
	.incbin "baserom.dol", 0x41FA00, 0x48
.global lbl_80423948
lbl_80423948:
	.incbin "baserom.dol", 0x41FA48, 0x48
.global lbl_80423990
lbl_80423990:
	.incbin "baserom.dol", 0x41FA90, 0x48
.global lbl_804239D8
lbl_804239D8:
	.incbin "baserom.dol", 0x41FAD8, 0x50
.global lbl_80423A28
lbl_80423A28:
	.4byte 0x80210688, 0x80210694, 0x802106A4, 0x802106B0
	.4byte 0x802106BC, 0x802106F0, 0x802106E0, 0x802106C8
.global lbl_80423A48
lbl_80423A48:
	.incbin "baserom.dol", 0x41FB48, 0x48
.global lbl_80423A90
lbl_80423A90:
	.4byte 0x80218954, 0x80218954, 0x80218864, 0x80218954
	.4byte 0x802187C0, 0x80218810, 0x80218954, 0x80218954
	.4byte 0x802188B4, 0x80218954, 0x80218904
.global lbl_80423ABC
lbl_80423ABC:
	.float -3.0851603561899476e-39, -3.086202922247405e-39, -3.085334117199524e-39, -3.0855078782091e-39
	.float -3.0856816392186764e-39, -3.0858554002282527e-39, -3.086202922247405e-39, -3.086202922247405e-39
	.float -3.086202922247405e-39, -3.086029161237829e-39, -3.0836077174914757e-39, -3.084835254946224e-39
	.float -3.083815109664196e-39, -3.084022501836916e-39, -3.084196262846492e-39, -3.084403655019212e-39
	.float -3.084835254946224e-39, -3.084835254946224e-39, -3.084835254946224e-39, -3.084627862773504e-39
	.float -3.081774819100139e-39, -3.0830023565548873e-39, -3.081982211272859e-39, -3.082189603445579e-39
	.float -3.082363364455155e-39, -3.082570756627875e-39, -3.0830023565548873e-39, -3.0830023565548873e-39
	.float -3.0830023565548873e-39, -3.082794964382167e-39, 0.0
.global lbl_80423B38
lbl_80423B38:
	.incbin "baserom.dol", 0x41FC38, 0x38
.global lbl_80423B70
lbl_80423B70:
	.incbin "baserom.dol", 0x41FC70, 0x40
.global lbl_80423BB0
lbl_80423BB0:
	.float -9.169267581850723e-39, 0.0, -3.105608103381375e-39, -3.10561931376909e-39
	.float -3.105624918962947e-39, -3.118415971345304e-39, -3.1148286472766326e-39, -9.168897639056141e-39
	.float 0.0, -9.169233950687579e-39, 0.0, 0.0
.global lbl_80423BE0
lbl_80423BE0:
	.float -9.169290002626152e-39, 0.0, -3.1213418825388143e-39, -3.121409144865102e-39
	.float -3.121425960446674e-39, -3.121470801997532e-39, -3.1210840436213786e-39, -9.168897639056141e-39
	.float 0.0, -9.169233950687579e-39, 0.0, 0.0
.global lbl_80423C10
lbl_80423C10:
	.ascii "GSthreadManager"
	.byte 0x00
.global lbl_80423C20
lbl_80423C20:
	.ascii "GStimelineManager"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80423C38
lbl_80423C38:
	.float -9.169312423401581e-39, 0.0, -3.149199696009592e-39, 0.0
.global lbl_80423C48
lbl_80423C48:
	.4byte 0x80224B60, 0x80224BD0, 0x80224C30, 0x80224C44
	.4byte 0x80224C8C, 0x80224D30, 0x80224DAC, 0x80224EBC
	.4byte 0x80224FCC
.global lbl_80423C6C
lbl_80423C6C:
	.ascii "<%.3f,%.3f,%.3f>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80423C80
lbl_80423C80:
	.4byte 0x802250CC, 0x80225A2C, 0x80225A2C, 0x80225A2C
	.4byte 0x80225A2C, 0x80225A2C, 0x80225A2C, 0x80225A2C
	.4byte 0x80225A2C, 0x80225A2C, 0x80225A2C, 0x80225A2C
	.4byte 0x80225A2C, 0x8022511C, 0x80225130, 0x80225168
	.4byte 0x80225238, 0x80225308, 0x80225358, 0x802253BC
	.4byte 0x802253E4, 0x80225460, 0x802254C8, 0x80225518
	.4byte 0x80225530, 0x80225548, 0x80225750, 0x802257E8
	.4byte 0x80225880, 0x80225918, 0x80225620, 0x80225694
.global lbl_80423D00
lbl_80423D00:
	.ascii "tarray: size=%d"
	.byte 0x00
.global lbl_80423D10
lbl_80423D10:
	.float -3.1561277156172136e-39, -3.1561277156172136e-39, -3.1561277156172136e-39, -3.154956230101038e-39
	.float -3.1561277156172136e-39, -3.1561277156172136e-39, -3.1561277156172136e-39, -3.1561277156172136e-39
	.float -3.1561277156172136e-39, -3.1561277156172136e-39, -3.1561277156172136e-39, -3.1561277156172136e-39
	.float -3.1561277156172136e-39, -3.1561277156172136e-39, -3.1561277156172136e-39, -3.1561277156172136e-39
	.float -3.1550571235904694e-39, -3.1554158559973366e-39, -3.155522354680625e-39, -3.155555985843769e-39
	.float -3.15580261437349e-39, -3.1561277156172136e-39, -3.1558250351489194e-39, -3.1558418507304913e-39
	.float -3.1560716636786406e-39, -3.1556568793332005e-39, -3.1561277156172136e-39, 0.0
.global lbl_80423D80
lbl_80423D80:
	.ascii "floorLocalFunction"
	.byte 0x00
	.byte 0x00
.global lbl_80423D94
lbl_80423D94:
	.incbin "baserom.dol", 0x41FE94, 0x74
.global lbl_80423E08
lbl_80423E08:
	.incbin "baserom.dol", 0x41FF08, 0x30
.global lbl_80423E38
lbl_80423E38:
	.incbin "baserom.dol", 0x41FF38, 0x20
.global lbl_80423E58
lbl_80423E58:
	.4byte 0x802277F0, 0x80227768, 0x80227784, 0x802277F0
	.4byte 0x802277A0, 0x802277F0, 0x802277BC, 0x802277F0
	.4byte 0x802277D8
.global lbl_80423E7C
lbl_80423E7C:
	.incbin "baserom.dol", 0x41FF7C, 0x24
.global lbl_80423EA0
lbl_80423EA0:
	.ascii "GSscript thread"
	.byte 0x00
.global lbl_80423EB0
lbl_80423EB0:
	.ascii "<%.3f, %.3f, %.3f>"
	.byte 0x00
	.byte 0x00
.global lbl_80423EC4
lbl_80423EC4:
	.4byte 0x8022AE94, 0x8022AEF0, 0x8022AF5C, 0x8022AFD4
	.4byte 0x8022B074, 0x8022B0C0, 0x8022B120, 0x8022B158
	.4byte 0x8022B190, 0x8022B1C8
.global lbl_80423EEC
lbl_80423EEC:
	.4byte 0x8022B230, 0x8022B2B8, 0x8022B340, 0x8022B3C8
	.4byte 0x8022B3DC, 0x8022B3F0, 0x8022B404, 0x8022B418
	.4byte 0x8022B4A0, 0x8022B4A0, 0x8022B4A0, 0x8022B4A0
	.4byte 0x8022B4A0, 0x8022B4A0, 0x8022B4A0, 0x8022B4A0
	.4byte 0x8022B42C, 0x8022B440, 0x8022B454, 0x8022B468
	.4byte 0x8022B47C, 0x8022B490, 0x8022B568, 0x8022B574
	.4byte 0x8022B680, 0x8022B7F0, 0x8022BAF8, 0x8022BC80
	.4byte 0x8022BD38, 0x8022BDA4, 0x8022BE04, 0x8022BE70
	.4byte 0x8022BED4, 0x8022BF28, 0x8022BF7C, 0x8022BFA0
	.4byte 0x8022C0D4, 0x8022C140, 0x8022C168, 0x8022B8CC
	.4byte 0x8022B778, 0x8022B7B4
.global lbl_80423F94
lbl_80423F94:
	.ascii "timer error"
	.byte 0x00
.global lbl_80423FA0
lbl_80423FA0:
	.float -9.167586023693533e-39, 0.0, -3.1792939818294315e-39, -3.179305192217146e-39
	.float -3.1793164026048607e-39, -3.179327612992575e-39, -3.199545547235854e-39, -3.1995399420419964e-39
	.float -3.1788287507392756e-39
.global lbl_80423FC4
lbl_80423FC4:
	.incbin "baserom.dol", 0x4200C4, 0x24
.global lbl_80423FE8
lbl_80423FE8:
	.ascii "vec.vz not access"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80423FFC
lbl_80423FFC:
	.ascii "vec.vy not access"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424010
lbl_80424010:
	.ascii "vec.vx not access"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424028
lbl_80424028:
	.ascii "over index (%d)"
	.byte 0x00
	.ascii "foreach over index (%d)"
	.byte 0x00
.global lbl_80424050
lbl_80424050:
	.ascii "integer convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424068
lbl_80424068:
	.ascii "single convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<%.3f,%.3f,%.3f>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "string convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804240AC
lbl_804240AC:
	.ascii "add convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804240C0
lbl_804240C0:
	.ascii "sub convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804240D4
lbl_804240D4:
	.ascii "mul convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "integer div 0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "single div 0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "div convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8042411C
lbl_8042411C:
	.ascii "integer mod 0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8042412C
lbl_8042412C:
	.ascii "mod convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424140
lbl_80424140:
	.ascii "equ convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424154
lbl_80424154:
	.ascii "not convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424168
lbl_80424168:
	.ascii "gt convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8042417C
lbl_8042417C:
	.ascii "Ge convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424190
lbl_80424190:
	.ascii "ls convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804241A4
lbl_804241A4:
	.ascii "le convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "vector set error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "vector error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "vector index error"
	.byte 0x00
	.byte 0x00
.global lbl_804241F0
lbl_804241F0:
	.4byte 0x80230750, 0x80230364, 0x802303C8, 0x802306E0
	.4byte 0x8023049C, 0x802305E4, 0x80230750, 0x80230434
	.4byte 0x80230290, 0x80230750, 0x80230750, 0x80230750
	.4byte 0x80230750, 0x80230750, 0x80230750, 0x80230750
	.4byte 0x80230750, 0x80230750, 0x80230750, 0x80230750
	.4byte 0x80230750, 0x80230750, 0x80230750, 0x80230750
	.4byte 0x80230750, 0x80230750, 0x80230750, 0x80230750
	.4byte 0x80230750, 0x80230750, 0x80230750, 0x80230750
	.4byte 0x80230750, 0x80230750, 0x80230750, 0x80230614
.global lbl_80424280
lbl_80424280:
	.incbin "baserom.dol", 0x420380, 0x28C
.global lbl_8042450C
lbl_8042450C:
	.incbin "baserom.dol", 0x42060C, 0x28
.global lbl_80424534
lbl_80424534:
	.incbin "baserom.dol", 0x420634, 0x64
.global lbl_80424598
lbl_80424598:
	.ascii "GSrender.cpp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804245A8
lbl_804245A8:
	.ascii "Fatal Error occured"
	.byte 0x00
.global lbl_804245BC
lbl_804245BC:
	.incbin "baserom.dol", 0x4206BC, 0x24
.global lbl_804245E0
lbl_804245E0:
	.4byte 0x80233BBC, 0x80233CD4, 0x80233DEC, 0x80233F08
	.4byte 0x80234018, 0x80234128, 0x80234238, 0x80234348
.global lbl_80424600
lbl_80424600:
	.ascii "Background"
	.byte 0x00
	.byte 0x00
	.ascii "BG Distortion"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Translucent"
	.byte 0x00
	.ascii "Distortion"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "2nd Translucent"
	.byte 0x00
	.ascii "2D Effects"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424658
lbl_80424658:
	.float -9.168953690994714e-39, 0.0, -3.252576286319762e-39, -3.2525818915136194e-39
	.float -3.252587496707477e-39, -3.252430551279472e-39
.global lbl_80424670
lbl_80424670:
	.float -0.03652967885136604, 0.5821917653083801, 0.0, -0.03652967885136604
	.float 0.5821917653083801, 0.0
.global lbl_80424688
lbl_80424688:
	.float 0.03652967885136604, -0.5821917653083801, 0.0, 0.03652967885136604
	.float -0.5821917653083801, 0.0
.global lbl_804246A0
lbl_804246A0:
	.incbin "baserom.dol", 0x4207A0, 0x34
.global lbl_804246D4
lbl_804246D4:
	.incbin "baserom.dol", 0x4207D4, 0x44
.global lbl_80424718
lbl_80424718:
	.incbin "baserom.dol", 0x420818, 0x28
.global lbl_80424740
lbl_80424740:
	.float 0.0, 1.401298464324817e-45, 2.802596928649634e-45, 4.203895392974451e-45
	.float 5.605193857299268e-45, 7.006492321624085e-45, 8.407790785948902e-45, 9.80908925027372e-45
	.float 1.1210387714598537e-44, 1.2611686178923354e-44, 1.401298464324817e-44, 3.5032461608120427e-44
	.float 1.5414283107572988e-44, 1.6815581571897805e-44, 1.8216880036222622e-44, 1.961817850054744e-44
	.float 2.1019476964872256e-44, 2.2420775429197073e-44, 2.382207389352189e-44, 2.5223372357846707e-44
	.float 2.6624670822171524e-44, 2.802596928649634e-44, 3.5733110840282835e-43, -3.2879058232023194e-39
	.float -3.2885055789450504e-39, -3.2885055789450504e-39, -3.2885055789450504e-39, -3.2885055789450504e-39
	.float -3.2885055789450504e-39, -3.2885055789450504e-39, -3.2885055789450504e-39, -3.2885055789450504e-39
	.float -3.287917033590034e-39, -3.288068373824181e-39, -3.288202898476756e-39, -3.288202898476756e-39
	.float -3.288331817935474e-39, -3.288331817935474e-39, -3.288331817935474e-39, -3.288331817935474e-39
	.float -3.288331817935474e-39, -3.288331817935474e-39, -3.288331817935474e-39, -3.288331817935474e-39
	.float -3.2885055789450504e-39, -3.2885055789450504e-39, -3.2885055789450504e-39, -3.2885055789450504e-39
	.float -3.2885055789450504e-39, 0.0
.global lbl_80424808
lbl_80424808:
	.incbin "baserom.dol", 0x420908, 0x38
.global lbl_80424840
lbl_80424840:
	.float 1.401298464324817e-45, -6.181508679319064e-39, -6.182938003752676e-39, -6.183526549107692e-39
	.float -6.182349458397659e-39, 2.802596928649634e-45, -6.181592757226924e-39, -6.183022081660535e-39
	.float -6.183610627015552e-39, -6.182433536305519e-39, 4.203895392974451e-45, -6.181676835134783e-39
	.float -6.183106159568395e-39, -6.183694704923411e-39, -6.182517614213378e-39, 5.605193857299268e-45
	.float -6.181760913042643e-39, -6.183190237476254e-39, -6.183778782831271e-39, -6.182601692121238e-39
	.float 7.006492321624085e-45, -6.181929068858362e-39, -6.183358393291973e-39, -6.18394693864699e-39
	.float -6.182769847936957e-39, 8.407790785948902e-45, -6.181844990950502e-39, -6.183274315384114e-39
	.float -6.18386286073913e-39, -6.182685770029097e-39, 9.80908925027372e-45, -6.182013146766221e-39
	.float -6.183442471199833e-39, -6.184031016554849e-39, -6.182853925844816e-39, 1.1210387714598537e-44
	.float -6.182097224674081e-39, 0.0, -6.184115094462709e-39, 0.0
	.float 1.2611686178923354e-44, -6.18218130258194e-39, 0.0, -6.184199172370568e-39
	.float 0.0, 1.401298464324817e-44, -6.1822653804898e-39, 0.0
	.float -6.184283250278428e-39, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0
.global lbl_8042491C
lbl_8042491C:
	.float -9.169592683094446e-39, 0.0, -3.301532049469414e-39
.global lbl_80424928
lbl_80424928:
	.incbin "baserom.dol", 0x420A28, 0x30
.global lbl_80424958
lbl_80424958:
	.ascii "debug/%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424968
lbl_80424968:
	.ascii "gsfsys.toc"
	.byte 0x00
	.byte 0x00
	.ascii "_fsysForegroundTask:ERROR...:%d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "_fsysForegroundTask:ERROR_FILEOPEN:%d\n"
	.byte 0x00
	.byte 0x00
	.ascii "_fsysForegroundTask:ERROR_FILECLOSE:%d\n"
	.byte 0x00
	.ascii "<1>-----fsysBGwork:Wait Prev ResFinish Index=%d:%d\n"
	.byte 0x00
	.ascii "<2>-----fsysBGwork:Wait Prev ResFinish Index=%d:%d\n"
	.byte 0x00
.global lbl_80424A50
lbl_80424A50:
	.ascii "GSfsysDaemonForeground"
	.byte 0x00
	.byte 0x00
.global lbl_80424A68
lbl_80424A68:
	.ascii "GSfsysDaemonBackground"
	.byte 0x00
	.byte 0x00
.global lbl_80424A80
lbl_80424A80:
	.incbin "baserom.dol", 0x420B80, 0x180
.global lbl_80424C00
lbl_80424C00:
	.float 10.0, 20.0, 16.0, 16.0
	.float 10.0, 20.0, 12.0, 16.0
	.float 10.0, 20.0, 8.0, 18.0
	.float 10.0, 20.0, 16.0, 16.0
	.float 10.0, 20.0, 12.0, 16.0
	.float 10.0, 20.0, 8.0, 18.0
	.float 10.0, 20.0, 12.0, 16.0
	.float 10.0, 20.0, 8.0, 18.0
	.float 10.0, 20.0, 12.0, 16.0
	.float 10.0, 20.0, 8.0, 18.0
.global lbl_80424CA0
lbl_80424CA0:
	.incbin "baserom.dol", 0x420DA0, 0x20
.global lbl_80424CC0
lbl_80424CC0:
	.incbin "baserom.dol", 0x420DC0, 0x44
.global lbl_80424D04
lbl_80424D04:
	.incbin "baserom.dol", 0x420E04, 0x5C
.global lbl_80424D60
lbl_80424D60:
	.4byte 0x8024FB6C, 0x8024FB48, 0x8024FB50, 0x8024FB58
	.4byte 0x8024FB60, 0x8024FB68, 0x8024FB48, 0x8024FB50
	.4byte 0x8024FB60, 0x8024FB68
.global lbl_80424D88
lbl_80424D88:
	.4byte 0x8025432C, 0x802542B0, 0x802542B8, 0x802542D8
	.4byte 0x802542E0, 0x802542E8, 0x802542F0, 0x802542F8
	.4byte 0x80254300, 0x80254314, 0x8025431C
.global lbl_80424DB4
lbl_80424DB4:
	.incbin "baserom.dol", 0x420EB4, 0x80
.global lbl_80424E34
lbl_80424E34:
	.ascii "NW4R:Failed assertion interiorSize > 0.0f"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424E60
lbl_80424E60:
	.ascii "Sound3DListener.h"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424E78
lbl_80424E78:
	.ascii "NW4R:Failed assertion maxVolumeDistance >= 0.0f"
	.byte 0x00
.global lbl_80424EA8
lbl_80424EA8:
	.ascii "Sound3DListener.h"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424EBC
lbl_80424EBC:
	.ascii "NW4R:Failed assertion unitDistance > 0.0f"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80424EE8
lbl_80424EE8:
	.incbin "baserom.dol", 0x420FE8, 0x40
.global lbl_80424F28
lbl_80424F28:
	.incbin "baserom.dol", 0x421028, 0x38
.global lbl_80424F60
lbl_80424F60:
	.incbin "baserom.dol", 0x421060, 0x140
.global lbl_804250A0
lbl_804250A0:
	.ascii "win >= %d and win <= %d"
	.byte 0x00
.global lbl_804250B8
lbl_804250B8:
	.ascii "SOInit() "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "failed (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "success\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SOStartup() "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804250F0
lbl_804250F0:
	.ascii "SOFinish() "
	.byte 0x00
.global lbl_804250FC
lbl_804250FC:
	.ascii "SOCleanup() "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80425110
lbl_80425110:
	.incbin "baserom.dol", 0x421210, 0x34
.global lbl_80425144
lbl_80425144:
	.incbin "baserom.dol", 0x421244, 0xC4
.global lbl_80425208
lbl_80425208:
	.4byte 0x8025C754, 0x8025C6A4, 0x8025C6B0, 0x8025C6BC
	.4byte 0x8025C6C8, 0x8025C6D4, 0x8025C6E0, 0x8025C6EC
	.4byte 0x8025C6F8, 0x8025C704, 0x8025C710, 0x8025C71C
	.4byte 0x8025C728, 0x8025C754, 0x8025C754, 0x8025C734
	.4byte 0x8025C740, 0x8025C754, 0x8025C754, 0x8025C754
	.4byte 0x8025C74C
.global lbl_8042525C
lbl_8042525C:
	.ascii "%s?pid=%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80425268
lbl_80425268:
	.ascii "[PBRC] server timeout.\n"
	.byte 0x00
.global lbl_80425280
lbl_80425280:
	.ascii "[PBRC] client timeout.\n"
	.byte 0x00
.global lbl_80425298
lbl_80425298:
	.ascii "http://gamestats2.gs.nintendowifi.net/pokebattlewii/web/pbrcheck/check.asp"
	.byte 0x00
	.byte 0x00
	.ascii "[PBRC TR] ghttp error: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "[PBRC TR] dns lookup failed.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "[PBRC TR] socket error.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "[PBRC TR] server internal error.  please contact server administrator.\n"
	.byte 0x00
	.ascii "[PBRC TR] server is now heavy.\n"
	.byte 0x00
.global lbl_804253A8
lbl_804253A8:
	.float -3.471862680405024e-39, -3.471862680405024e-39, -3.4718738907927387e-39, -3.471862680405024e-39
	.float -3.471862680405024e-39, -3.471862680405024e-39, -3.471862680405024e-39, -3.471997205057599e-39
	.float -3.4718738907927387e-39, -3.471862680405024e-39, -3.471862680405024e-39, -3.471885101180453e-39
	.float -3.47191312714974e-39, -3.47191312714974e-39, -3.471862680405024e-39, -3.471969179088313e-39
	.float -3.471941153119026e-39, -3.471941153119026e-39, -3.471941153119026e-39, -3.471941153119026e-39
	.float -3.471862680405024e-39, -3.471862680405024e-39, -3.471862680405024e-39, -3.471862680405024e-39
	.float -3.471997205057599e-39, -3.4718738907927387e-39, -3.471941153119026e-39, -3.471941153119026e-39
	.float -3.471941153119026e-39, -3.471941153119026e-39, -3.471969179088313e-39, -3.471941153119026e-39
	.float -3.471862680405024e-39, 0.0
.global lbl_80425430
lbl_80425430:
	.ascii "PacketAlloc::AllocSize: ptr(%p) is not aligned %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_80425464
lbl_80425464:
	.ascii "PacketAlloc::Tag: ptr(%p) is not aligned %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "PacketAlloc::Free: ptr(%p) is not aligned %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "PacketAlloc::Free: number of allocated is 0\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "PacketAlloc::Free: block was already free\n"
	.byte 0x00
	.byte 0x00
	.ascii "PacketAlloc::Free: number of nblocks is 0\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80425550
lbl_80425550:
	.ascii "Peek: Bad Magic = 0x%04x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8042556C
lbl_8042556C:
	.ascii "Next: Bad Magic = 0x%04x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80425588
lbl_80425588:
	.ascii "Dispose: Bad Magic = 0x%04x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804255A8
lbl_804255A8:
	.ascii "checksum error %04x != %04x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804255C8
lbl_804255C8:
	.incbin "baserom.dol", 0x4216C8, 0x290
.global lbl_80425858
lbl_80425858:
	.ascii "WIFIMP_RUNSTATE_INIT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFIMP_RUNSTATE_START"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFIMP_RUNSTATE_END"
	.byte 0x00
	.ascii "WIFIMP_RUNSTATE_ONLINE_HOOK"
	.byte 0x00
	.ascii "WIFIMP_RUNSTATE_ONLINE"
	.byte 0x00
	.byte 0x00
	.ascii "WIFIMP_RUNSTATE_LISTEN"
	.byte 0x00
	.byte 0x00
	.ascii "WIFIMP_RUNSTATE_PARENT"
	.byte 0x00
	.byte 0x00
	.ascii "WIFIMP_RUNSTATE_ERROR"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFIMP_RUNSTATE_%d"
	.byte 0x00
	.byte 0x00
.global lbl_8042592C
lbl_8042592C:
	.4byte 0x80262A68, 0x80262A70, 0x80262A78, 0x80262A80
	.4byte 0x80262A88, 0x80262A90, 0x80262A98, 0x80262AA0
.global lbl_8042594C
lbl_8042594C:
	.float -3.503436737403191e-39, -3.503453552984763e-39, -3.5034703685663346e-39, -3.5034871841479065e-39
	.float -3.5035039997294784e-39, -3.5035208153110503e-39, -3.503537630892622e-39, -3.503554446474194e-39
	.float 0.0
.global lbl_80425970
lbl_80425970:
	.incbin "baserom.dol", 0x421A70, 0x90
.global lbl_80425A00
lbl_80425A00:
	.incbin "baserom.dol", 0x421B00, 0x80
.global lbl_80425A80
lbl_80425A80:
	.ascii "WIFIMPDL_RUNSTATE_INIT"
	.byte 0x00
	.byte 0x00
	.ascii "WIFIMPDL_RUNSTATE_START"
	.byte 0x00
	.ascii "WIFIMPDL_RUNSTATE_ONLINE"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFIMPDL_RUNSTATE_DOWNLOAD"
	.byte 0x00
	.byte 0x00
	.ascii "WIFIMPDL_RUNSTATE_END"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFIMPDL_RUNSTATE_ERROR"
	.byte 0x00
	.ascii "WIFIMPDL_RUNSTATE_%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "P"
	.byte 0x00
	.ascii " "
	.byte 0x00
	.ascii "B"
	.byte 0x00
	.ascii " "
	.byte 0x00
	.ascii "R"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "P"
	.byte 0x00
	.ascii "o"
	.byte 0x00
	.ascii "k"
	.byte 0x00
	.ascii "e"
	.byte 0x00
	.ascii "m"
	.byte 0x00
	.ascii "o"
	.byte 0x00
	.ascii "n"
	.byte 0x00
	.ascii " "
	.byte 0x00
	.ascii "B"
	.byte 0x00
	.ascii "a"
	.byte 0x00
	.ascii "t"
	.byte 0x00
	.ascii "t"
	.byte 0x00
	.ascii "l"
	.byte 0x00
	.ascii "e"
	.byte 0x00
	.ascii " "
	.byte 0x00
	.ascii "R"
	.byte 0x00
	.ascii "e"
	.byte 0x00
	.ascii "v"
	.byte 0x00
	.ascii "o"
	.byte 0x00
	.ascii "l"
	.byte 0x00
	.ascii "u"
	.byte 0x00
	.ascii "t"
	.byte 0x00
	.ascii "i"
	.byte 0x00
	.ascii "o"
	.byte 0x00
	.ascii "n"
	.byte 0x00
	.ascii "!"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80425B80
lbl_80425B80:
	.incbin "baserom.dol", 0x421C80, 0x184
.global lbl_80425D04
lbl_80425D04:
	.float -3.508705619629052e-39, -3.508761671567625e-39, -3.508800907924626e-39, -3.508856959863199e-39
	.float -3.5092549286270675e-39, -3.5092549286270675e-39, -3.5092549286270675e-39, -3.5092549286270675e-39
	.float -3.5092549286270675e-39, -3.5092549286270675e-39, -3.5089018014140576e-39, -3.508969063740345e-39
	.float -3.5090139052912036e-39, -3.50904193126049e-39, -3.509092378005206e-39, -3.5091596403314934e-39
	.float -3.509204481882352e-39, -3.5092381130454956e-39, 0.0
.global lbl_80425D50
lbl_80425D50:
	.incbin "baserom.dol", 0x421E50, 0x110
.global lbl_80425E60
lbl_80425E60:
	.ascii "WIFINETWORK_RUNSTATE_INIT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_START"
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_CONNECT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_CONNECT_HOOK"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_LOGIN"
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_LOGIN_HOOK"
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_ONLINE_HOOK"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_ONLINE"
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_CLIENT"
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_SERVER"
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_PEER"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_MATCHING"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_MATCHED_HOOK"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_MATCHED"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_DISCONNECT_HOOK"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_DISCONNECT"
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_ERROR"
	.byte 0x00
	.byte 0x00
	.ascii "WIFINETWORK_RUNSTATE_FATAL"
	.byte 0x00
	.byte 0x00
	.ascii "WIFINET_RUNSTATE_%d"
	.byte 0x00
.global lbl_804260A4
lbl_804260A4:
	.incbin "baserom.dol", 0x4221A4, 0x204
.global lbl_804262A8
lbl_804262A8:
	.incbin "baserom.dol", 0x4223A8, 0x118
.global lbl_804263C0
lbl_804263C0:
	.4byte 0x80264014, 0x8026401C, 0x80264024, 0x8026402C
	.4byte 0x80264034, 0x8026403C, 0x80264044, 0x8026404C
.global lbl_804263E0
lbl_804263E0:
	.ascii "DWC_ECODE_%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804263F0
lbl_804263F0:
	.ascii "%s.%s.%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804263FC
lbl_804263FC:
	.ascii "pokebattlewii"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8042640C
lbl_8042640C:
	.ascii "ver = %d and reg = %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80426424
lbl_80426424:
	.ascii " and dis = %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80426434
lbl_80426434:
	.4byte 0x80266C44, 0x80266C54, 0x80266CB4, 0x80266C6C
	.4byte 0x80266CB4, 0x80266CB4, 0x80266C6C, 0x80266CA4
.global lbl_80426454
lbl_80426454:
	.4byte 0x80266D24, 0x80266D30, 0x80266D3C, 0x80266D48
	.4byte 0x80266D54, 0x80266D60, 0x80266D6C, 0x80266D78
	.4byte 0x80266D84, 0x80266D90, 0x80266D9C, 0x80266DA8
	.4byte 0x80266DB4, 0x80266DC0, 0x80266DCC, 0x80266DD8
	.4byte 0x80266DE4
.global lbl_80426498
lbl_80426498:
	.incbin "baserom.dol", 0x422598, 0x110
.global lbl_804265A8
lbl_804265A8:
	.ascii "H4A should not be cleared because of Broadway errata.\n"
	.byte 0x00
	.byte 0x00
.global lbl_804265E0
lbl_804265E0:
	.ascii "<< RVL_SDK - OS \trelease build: Apr 24 2007 11:50:47 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.ascii "\nRevolution OS\n"
	.byte 0x00
	.ascii "Kernel built : %s %s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Apr 24 2007"
	.byte 0x00
	.ascii "11:50:47"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Console Type : "
	.byte 0x00
	.ascii "Pre-production board 1\n"
	.byte 0x00
	.ascii "Pre-production board 2-1\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Pre-production board 2-2\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Retail %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "NDEV 2.1\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NDEV 2.0\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NDEV 1.2\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NDEV 1.1\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NDEV 1.0\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Revolution Emulator\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Emulation platform (%08x)\n"
	.byte 0x00
	.byte 0x00
	.ascii "TDEV-based emulation HW%d\n"
	.byte 0x00
	.byte 0x00
	.ascii "Firmware     : %d.%d.%d "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(%d/%d/%d)\n"
	.byte 0x00
	.ascii "Memory %d MB\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "MEM1 Arena : 0x%x - 0x%x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "MEM2 Arena : 0x%x - 0x%x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804267D0
lbl_804267D0:
	.incbin "baserom.dol", 0x4228D0, 0x200
.global lbl_804269D0
lbl_804269D0:
	.incbin "baserom.dol", 0x422AD0, 0x10
.global lbl_804269E0
lbl_804269E0:
	.float 2.336298609583365e-37, 2.3363064568547653e-37, 2.3363066810625196e-37, 2.336306905270274e-37
	.float 2.336307129478028e-37, 2.3363073536857825e-37, 2.3363075778935368e-37, 2.336307802101291e-37
	.float 4.230514567728016e-28, 4.167406658275307e-28, 1.180086125630187e-38, 1.2581461572346332e-38
	.float 1.2128025211364714e-38, 9.183590253454587e-39, 1.1167196332811731e-37, -2.353006010913817e-38
	.float 6.254541552682745e-39, 1.2125155352109777e-38, 9.18360426643923e-39, 8.168408548961148e-24
	.float 2.0479310038038183e-38, 2.3583355413372143e-37, 2.2922229524136323e-37, 4.071300285008195e-25
	.float 4.0916814925707115e-25, 3.031646169135847e-39, 3.7470602105935834e-37, 3.7470602105935834e-37
	.float 3.7470602105935834e-37, 0.0, 0.0, 0.0
.global lbl_80426A60
lbl_80426A60:
	.ascii ">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Machine check received\n"
	.byte 0x00
	.ascii "HID2 = 0x%x   SRR1 = 0x%x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Machine check was not DMA/locked cache related\n"
	.byte 0x00
	.ascii "DMAErrorHandler(): An error occurred while processing DMA.\n"
	.byte 0x00
	.ascii "The following errors have been detected and cleared :\n"
	.byte 0x00
	.byte 0x00
	.ascii "\t- Requested a locked cache tag that was already in the cache\n"
	.byte 0x00
	.byte 0x00
	.ascii "\t- DMA attempted to access normal cache\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\t- DMA missed in data cache\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\t- DMA queue overflowed\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L1 i-caches initialized\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L1 d-caches initialized\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2 cache initialized\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Locked cache machine check handler installed\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80426C98
lbl_80426C98:
	.ascii "------------------------- Context 0x%08x -------------------------\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
	.byte 0x00
	.ascii "LR   = 0x%08x                   CR   = 0x%08x\n"
	.byte 0x00
	.byte 0x00
	.ascii "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
	.byte 0x00
	.byte 0x00
	.ascii "\nGQRs----------\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "gqr%d = 0x%08x \t gqr%d = 0x%08x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\n\nFPRs----------\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "fr%d \t= %d \t fr%d \t= %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\n\nPSFs----------\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "ps%d \t= 0x%x \t ps%d \t= 0x%x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\nAddress:      Back Chain    LR Save\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "0x%08x:   0x%08x    0x%08x\n"
	.byte 0x00
.global lbl_80426E50
lbl_80426E50:
	.ascii "FPU-unavailable handler installed\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80426E78
lbl_80426E78:
	.ascii " in \"%s\" on line %d.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\nAddress:      Back Chain    LR Save\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "0x%08x:   0x%08x    0x%08x\n"
	.byte 0x00
	.ascii "Non-recoverable Exception %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Unhandled Exception %d"
	.byte 0x00
	.byte 0x00
	.ascii "\nDSISR = 0x%08x                   DAR  = 0x%08x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "TB = 0x%016llx\n"
	.byte 0x00
	.ascii "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"
	.byte 0x00
	.ascii "\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n"
	.byte 0x00
	.ascii "\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n"
	.byte 0x00
	.ascii "AI DMA Address =   0x%04x%04x\n"
	.byte 0x00
	.byte 0x00
	.ascii "ARAM DMA Address = 0x%04x%04x\n"
	.byte 0x00
	.byte 0x00
	.ascii "DI DMA Address =   0x%08x\n"
	.byte 0x00
	.byte 0x00
	.ascii "\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80427154
lbl_80427154:
	.float -3.556843024475538e-39, -3.556843024475538e-39, -3.556607606333532e-39, -3.5566412374966755e-39
	.float -3.556843024475538e-39, -3.556669263465962e-39, -3.556702894629106e-39, -3.556843024475538e-39
	.float -3.556843024475538e-39, -3.556843024475538e-39, -3.556843024475538e-39, -3.556843024475538e-39
	.float -3.556843024475538e-39, -3.556843024475538e-39, -3.556843024475538e-39, -3.5567365257922496e-39
	.float 0.0
.global lbl_80427198
lbl_80427198:
	.ascii "\nsecurity error(%d) has occurred"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804271BC
lbl_804271BC:
	.ascii "2004/02/01"
	.byte 0x00
	.byte 0x00
.global lbl_804271C8
lbl_804271C8:
	.float 1.0286164115050032e-37, 1.043310315098036e-37, 1.058004218691069e-37, 1.0726981222841019e-37
	.float 1.0873920258771348e-37, 1.1020859294701676e-37, 1.1167798330632005e-37, 1.1314737366562334e-37
	.float 1.1461676402492663e-37, 1.1608615438422992e-37, 1.175555447435332e-37, 1.190249351028365e-37
	.float 1.2049432546213978e-37, 1.2196371582144307e-37, 1.2343310618074636e-37, 1.2490249654004965e-37
	.float 1.2637188689935294e-37, 1.2784127725865623e-37, 1.2931066761795952e-37, 1.307800579772628e-37
	.float 1.322494483365661e-37, 1.3371883869586938e-37, 1.3518822905517267e-37, 1.3665761941447596e-37
	.float 1.3812700977377925e-37, 1.3959640013308254e-37, 1.4106579049238582e-37, 1.4253518085168911e-37
	.float 1.440045712109924e-37, 1.454739615702957e-37, 1.4694335192959898e-37, 1.4841274228890227e-37
	.float 1.4988213264820556e-37, 1.5135152300750884e-37, 1.5282091336681213e-37, 1.5429030372611542e-37
	.float 1.557596940854187e-37, 1.57229084444722e-37, 1.5869847480402529e-37, 1.6016786516332858e-37
	.float 1.6163725552263186e-37, 1.6310664588193515e-37, 1.6457603624123844e-37, 1.6604542660054173e-37
	.float 1.6751481695984502e-37, 1.689842073191483e-37, 1.704535976784516e-37, 1.71921923050922e-37
	.float 1.028616299401126e-37, 1.028616299401126e-37, 1.028616299401126e-37, 1.028616299401126e-37
	.float 1.028616299401126e-37, 1.028616299401126e-37, 1.028616299401126e-37, 1.028616299401126e-37
	.float 1.028616299401126e-37, 1.028616299401126e-37, 1.028616299401126e-37, 1.028616299401126e-37
	.float 1.028616299401126e-37, 1.028616299401126e-37, 1.028616299401126e-37, 1.028616299401126e-37
	.float 1.028626949269455e-37, 1.7339237839705817e-37, 1.7486176875636146e-37, 1.7633115911566475e-37
	.float 1.7780054947496804e-37, 1.7926993983427133e-37, 1.8073933019357462e-37, 1.822087205528779e-37
	.float 1.836781109121812e-37, 1.8514750127148448e-37, 1.8661689163078777e-37, 1.880934678486161e-37
	.float 1.910322485672227e-37, 1.9397102928582927e-37, 1.9690981000443585e-37, 1.9984859072304243e-37
	.float 2.02787371441649e-37, 2.057261521602556e-37, 2.0866493287886216e-37, 2.1160371359746873e-37
	.float 2.145424943160753e-37, 2.174812750346819e-37, 2.2042005575328847e-37, 2.2335883647189504e-37
	.float 2.262976171905016e-37, 2.292363979091082e-37, 2.3217517862771477e-37, 2.3511395934632135e-37
	.float 2.3805274006492793e-37, 2.409915207835345e-37, 2.439303015021411e-37, 2.4686908222074766e-37
.global lbl_80427348
lbl_80427348:
	.float 1.401298464324817e-45, 1.836751962113754e-40, 3.673489911242865e-40, 5.5102278603719754e-40
	.float 7.346965809501086e-40, 9.183703758630197e-40, 1.1020441707759308e-39, 1.2857179656888418e-39
	.float 1.469391760601753e-39, 1.653065555514664e-39, 1.836739350427575e-39, 2.020413145340486e-39
	.float 2.2040869402533972e-39, 2.3877607351663083e-39, 2.5714345300792193e-39, 2.7551083249921304e-39
	.float 2.9387821199050415e-39, 3.1224559148179526e-39, 3.3061297097308636e-39, 3.489803504643775e-39
	.float 3.673477299556686e-39, 3.857151094469597e-39, 4.040824889382508e-39, 4.224498684295419e-39
	.float 4.40817247920833e-39, 4.591846274121241e-39, 4.775520069034152e-39, 4.959193863947063e-39
	.float 5.1428676588599744e-39, 5.3265414537728854e-39, 5.5102152486857965e-39, 5.6938890435987076e-39
	.float 5.877562838511619e-39, 6.06123663342453e-39, 6.244910428337441e-39, 6.428584223250352e-39
	.float 6.612258018163263e-39, 6.795931813076174e-39, 6.979605607989085e-39, 7.163279402901996e-39
	.float 7.346953197814907e-39, 7.530626992727818e-39, 7.71430078764073e-39, 7.89797458255364e-39
	.float 8.081648377466552e-39, 8.265322172379463e-39, 8.448995967292374e-39, 8.632669762205285e-39
	.float 8.816343557118196e-39, 9.000017352031107e-39, 9.183691146944018e-39, 9.367364941856929e-39
	.float 9.55103873676984e-39, 9.734712531682751e-39, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 1.5134023414708024e-43
	.float 1.0010223224052118e-38, 1.0193897018965029e-38, 1.037757081387794e-38, 1.0561082058168989e-38
	.float 0.0, 0.0, 0.0, 1.6255062186167878e-43
	.float 1.0744918403703762e-38, 1.0928592198616673e-38, 1.1112265993529584e-38, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 1.723597111119525e-43, 1.1387776685898951e-38, 1.1571450480811862e-38, 1.1755124275724773e-38
	.float 1.1938798070637684e-38, 1.2122471865550595e-38, 1.2306145660463506e-38, 1.2489819455376417e-38
	.float 0.0, 0.0, 0.0, 1.9337918807682476e-43
	.float 1.2765330147745784e-38, 1.2949003942658695e-38, 1.3132677737571606e-38, 1.3316146942908726e-38
	.float 0.0, 2.045895757914233e-43, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 2.059908742557481e-43, 1.3591862224853884e-38, 1.3775536019766795e-38
	.float 1.3959209814679706e-38, 1.4142883609592617e-38, 1.432633740064663e-38, 0.0
	.float 0.0, 0.0, 1.4418394301961984e-38, 1.4602068096874895e-38
	.float 1.4785741891787806e-38, 1.4969415686700717e-38, 1.5153089481613628e-38, 1.533676327652654e-38
	.float 1.552043707143945e-38, 1.570411086635236e-38, 1.5887784661265272e-38, 1.6071458456178183e-38
	.float 1.6255132251091094e-38, 1.6438806046004005e-38, 1.6622479840916916e-38, 0.0
	.float 0.0, 0.0, 1.6806153635829827e-38, 1.6989827430742739e-38
	.float 1.717350122565565e-38, 1.735717502056856e-38, 1.7540848815481472e-38, 1.7724522610394383e-38
	.float 1.7908196405307294e-38, 1.8091870200220205e-38, 1.8275543995133116e-38, 1.8459217790046027e-38
	.float 1.8642891584958938e-38, 1.882656537987185e-38, 1.901023917478476e-38, 0.0
	.float 0.0, 1.9193912969697671e-38, 1.9377586764610583e-38, 1.9561260559523494e-38
	.float 1.9744934354436405e-38, 1.9928608149349316e-38, 2.0112281944262227e-38, 2.0295955739175138e-38
	.float 2.047962953408805e-38, 2.066330332900096e-38, 2.084697712391387e-38, 2.1030650918826782e-38
	.float 2.1214324713739693e-38, 2.1397998508652604e-38, 2.1581672303565515e-38, 2.1765346098478426e-38
	.float 2.1949019893391338e-38, 2.2132693688304249e-38, 2.231636748321716e-38, 2.250004127813007e-38
	.float 2.2683715073042982e-38, 2.2867388867955893e-38, 2.3051062662868804e-38, 2.3234736457781715e-38
	.float 2.3418410252694626e-38, 2.3694281078769324e-38, 2.4061628668595146e-38, 2.442897625842097e-38
	.float 2.479632384824679e-38, 2.5163671438072613e-38, 2.5531019027898435e-38, 2.5898366617724257e-38
	.float 2.626571420755008e-38, 2.66330617973759e-38, 2.7000409387201723e-38, 2.7367756977027546e-38
	.float 2.773510456685337e-38, 2.810245215667919e-38, 2.846979974650501e-38, 2.8837147336330834e-38
	.float 2.9204494926156656e-38, 2.957184251598248e-38, 2.9938371747505135e-38, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 3.012286390072121e-38, 3.0490211490547034e-38, 3.0857559080372856e-38, 3.122490667019868e-38
	.float 3.15922542600245e-38, 3.195960184985032e-38, 3.2326949439676145e-38, 3.2694297029501967e-38
	.float 3.306164461932779e-38, 3.342899220915361e-38, 3.3796339798979433e-38, 3.4163687388805255e-38
	.float 3.453103497863108e-38, 3.48983825684569e-38, 3.526573015828272e-38, 3.5633077748108544e-38
	.float 3.6000425337934366e-38, 3.636777292776019e-38, 3.673512051758601e-38, 3.710246810741183e-38
	.float 3.7469815697237655e-38, 3.7837163287063477e-38, 3.82045108768893e-38, 3.857185846671512e-38
	.float 3.8939206056540943e-38, 3.9306553646366765e-38, 3.967390123619259e-38, 4.004124882601841e-38
	.float 4.040859641584423e-38, 4.0775944005670054e-38, 4.1143291595495876e-38, 4.15106391853217e-38
	.float 4.187798677514752e-38, 4.224533436497334e-38, 4.2612681954799165e-38, 4.2980029544624987e-38
	.float 4.334737713445081e-38, 4.371472472427663e-38, 4.4082072314102453e-38, 4.4449419903928275e-38
	.float 4.48167674937541e-38, 4.518411508357992e-38, 4.555146267340574e-38, 0.0
	.float 0.0, 0.0, 0.0, 4.5918810263231564e-38
	.float 4.6286157853057386e-38, 4.665350544288321e-38, 4.702193203252656e-38, 4.77566272121782e-38
	.float 4.849132239182985e-38, 4.922601757148149e-38, 4.996071275113314e-38, 5.069540793078478e-38
	.float 5.143010311043643e-38, 5.216479829008807e-38, 5.289949346973971e-38, 0.0
	.float 0.0, 0.0, 0.0, 5.363418864939136e-38
	.float 5.4368883829043e-38, 5.510357900869465e-38, 5.583827418834629e-38, 5.657296936799794e-38
	.float 5.730766454764958e-38, 5.804235972730122e-38, 5.877705490695287e-38, 5.951175008660451e-38
	.float 6.024644526625616e-38, 6.09811404459078e-38, 6.171583562555945e-38, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 6.245053080521109e-38, 6.318522598486273e-38
	.float 6.391992116451438e-38, 6.465461634416602e-38, 6.538931152381767e-38, 6.612400670346931e-38
	.float 6.685870188312096e-38, 6.75933970627726e-38, 6.832809224242424e-38, 6.906278742207589e-38
	.float 6.979748260172753e-38, 7.053217778137918e-38, 7.126687296103082e-38, 7.200156814068247e-38
	.float 7.273626332033411e-38, 7.347095849998576e-38, 7.42030808956569e-38, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 7.457300126946322e-38, 7.530769644911487e-38
	.float 7.604239162876651e-38, 7.677708680841815e-38, 7.75117819880698e-38, 7.824647716772144e-38
	.float 7.898117234737309e-38, 7.971586752702473e-38, 8.045056270667638e-38, 8.118525788632802e-38
	.float 8.191995306597966e-38, 8.265464824563131e-38, 8.338934342528295e-38, 8.41240386049346e-38
	.float 8.485873378458624e-38, 8.559342896423789e-38, 8.632536638851174e-38, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 8.669547173371535e-38, 8.7430166913367e-38, 8.816486209301864e-38
	.float 8.889955727267029e-38, 8.963425245232193e-38, 9.036894763197357e-38, 9.110364281162522e-38
	.float 9.183833799127686e-38, 9.257303317092851e-38, 9.330772835058015e-38, 9.40452989946806e-38
	.float 9.551468935398388e-38, 9.698407971328717e-38, 9.845347007259046e-38, 9.992286043189374e-38
	.float 1.0139225079119703e-37, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 7.342803953062041e-43
	.float 1.0359633633015197e-37, 1.0506572668945525e-37, 1.0653511704875854e-37, 1.0800450740806183e-37
	.float 1.0947389776736512e-37, 1.109432881266684e-37, 1.124126784859717e-37, 1.1388206884527499e-37
	.float 1.1535145920457827e-37, 1.1682084956388156e-37, 1.1829023992318485e-37, 1.1975963028248814e-37
	.float 1.2122902064179143e-37, 1.2269841100109472e-37, 1.24167801360398e-37, 1.256371917197013e-37
	.float 1.2710658207900458e-37, 1.2857597243830787e-37, 1.3004536279761116e-37, 1.3151475315691445e-37
	.float 1.3298414351621774e-37, 1.3445353387552103e-37, 1.3592292423482431e-37, 1.373923145941276e-37
	.float 1.388617049534309e-37, 1.4033109531273418e-37, 1.4180048567203747e-37, 1.4326987603134076e-37
	.float 1.4473926639064405e-37, 1.4620865674994733e-37, 1.4767804710925062e-37, 1.4914743746855391e-37
	.float 1.506168278278572e-37, 1.5208621818716049e-37, 1.5355560854646378e-37, 1.5502499890576707e-37
	.float 1.5649438926507035e-37, 1.5796377962437364e-37, 1.5943316998367693e-37, 1.6090256034298022e-37
	.float 1.623719507022835e-37, 1.638413410615868e-37, 1.6531073142089009e-37, 1.6678012178019337e-37
	.float 1.6824951213949666e-37, 1.6971890249879995e-37, 1.7118829285810324e-37, 1.7265768321740653e-37
	.float 1.7412707357670982e-37, 1.755964639360131e-37, 1.770658542953164e-37, 1.7853524465461968e-37
	.float 1.8000463501392297e-37, 1.8147402537322626e-37, 1.8294341573252955e-37, 1.8441280609183284e-37
	.float 1.8588219645113613e-37, 1.8735158681043941e-37, 1.895628582079194e-37, 1.92501638926526e-37
	.float 1.9544041964513256e-37, 1.9837920036373914e-37, 2.013179810823457e-37, 2.042567618009523e-37
	.float 2.0719554251955887e-37, 2.1013432323816545e-37, 2.1307310395677202e-37, 2.160118846753786e-37
	.float 2.1895066539398518e-37, 2.2188944611259175e-37, 2.2482822683119833e-37, 2.277670075498049e-37
	.float 2.307057882684115e-37, 2.3364456898701806e-37, 2.3658334970562464e-37, 2.395221304242312e-37
	.float 2.424609111428378e-37, 2.4539969186144437e-37, 2.4833847258005095e-37, 2.5127725329865753e-37
	.float 2.542160340172641e-37, 2.571548147358707e-37, 2.6009359545447726e-37, 2.6303237617308383e-37
	.float 2.659711568916904e-37, 2.68909937610297e-37, 2.7184871832890357e-37, 2.7478749904751014e-37
	.float 2.777262797661167e-37, 2.806650604847233e-37, 2.8360384120332987e-37, 2.8654262192193645e-37
	.float 2.8948140264054303e-37, 2.924201833591496e-37, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 2.953589640777562e-37, 2.9829774479636276e-37, 3.0123652551496934e-37, 3.041753062335759e-37
	.float 3.071140869521825e-37, 3.1005286767078907e-37, 3.1299164838939565e-37, 3.1593042910800222e-37
	.float 3.188692098266088e-37, 3.2180799054521538e-37, 3.2474677126382195e-37, 3.2768555198242853e-37
	.float 3.306243327010351e-37, 3.335631134196417e-37, 3.3650189413824826e-37, 1.0411647589933391e-42
	.float 3.4091006521615813e-37, 3.438488459347647e-37, 3.467876266533713e-37, 3.4972640737197786e-37
	.float 3.5266518809058444e-37, 3.55603968809191e-37, 3.585427495277976e-37, 3.6148153024640417e-37
	.float 3.6442031096501075e-37, 3.6735909168361732e-37, 3.702978724022239e-37, 0.0
	.float 0.0, 0.0, 0.0, 3.7323665312083048e-37
	.float 3.761926754157421e-37, 3.820702368529553e-37, 3.879477982901684e-37, 3.938253597273816e-37
	.float 3.997029211645947e-37, 4.055804826018079e-37, 4.11458044039021e-37, 4.173356054762342e-37
	.float 4.2321316691344734e-37, 4.290907283506605e-37, 4.3496828978787365e-37, 4.408458512250868e-37
	.float 4.467234126623e-37, 4.526009740995131e-37, 0.0, 0.0
.global lbl_80427CD8
lbl_80427CD8:
	.incbin "baserom.dol", 0x423DD8, 0x30
.global lbl_80427D08
lbl_80427D08:
	.float -3.57626502119108e-39, 1.7796490496925177e-43, 0.0, 0.0
.global lbl_80427D18
lbl_80427D18:
	.ascii "OSReset.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80427D24
lbl_80427D24:
	.ascii "OSReturnToMenu(): Falied to boot system menu.\n"
	.byte 0x00
	.byte 0x00
.global lbl_80427D54
lbl_80427D54:
	.ascii "__OSReturnToMenu(): Falied to boot system menu.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80427D88
lbl_80427D88:
	.ascii "OSResetSystem() is obsoleted. It doesn't work any longer.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80427DC8
lbl_80427DC8:
	.float 0.0, 4.344025239406933e-44, 8.267660939516421e-44, 1.2611686178923354e-43
	.float 1.6815581571897805e-43, 2.1159606811304738e-43, 2.536350220427919e-43, 2.970752744368612e-43
	.float 3.4051552683093055e-43, 3.825544807606751e-43, 4.259947331547444e-43, 4.680336870844889e-43
.global lbl_80427DF8
lbl_80427DF8:
	.float 0.0, 4.344025239406933e-44, 8.407790785948902e-44, 1.2751816025355835e-43
	.float 1.6955711418330287e-43, 2.129973665773722e-43, 2.550363205071167e-43, 2.9847657290118604e-43
	.float 3.4191682529525537e-43, 3.839557792249999e-43, 4.273960316190692e-43, 4.694349855488137e-43
.global lbl_80427E28
lbl_80427E28:
	.incbin "baserom.dol", 0x423F28, 0xBA40
.global lbl_80433868
lbl_80433868:
	.incbin "baserom.dol", 0x42F968, 0x400
.global lbl_80433C68
lbl_80433C68:
	.ascii "/dev/stm/immediate"
	.byte 0x00
	.byte 0x00
.global lbl_80433C7C
lbl_80433C7C:
	.ascii "/dev/stm/eventhook"
	.byte 0x00
	.byte 0x00
.global lbl_80433C90
lbl_80433C90:
	.ascii "OSStateTM.c"
	.byte 0x00
.global lbl_80433C9C
lbl_80433C9C:
	.ascii "Error: The firmware doesn't support shutdown feature.\n"
	.byte 0x00
	.byte 0x00
.global lbl_80433CD4
lbl_80433CD4:
	.ascii "Error: The firmware doesn't support reboot feature.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80433D0C
lbl_80433D0C:
	.ascii "Error on STM state event handler\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80433D30
lbl_80433D30:
	.ascii "/title/00000001/00000002/data/play_rec.dat"
	.byte 0x00
	.byte 0x00
.global lbl_80433D5C
lbl_80433D5C:
	.4byte 0x80273888, 0x80273894, 0x80273910, 0x80273954
	.4byte 0x8027397C, 0x80273988, 0x80273A10
.global lbl_80433D78
lbl_80433D78:
	.ascii "/title/00000001/00000002/data/state.dat"
	.byte 0x00
.global lbl_80433DA0
lbl_80433DA0:
	.ascii "Failed to register network shutdown function. %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Failed to suspend the WiiConnect24 scheduler. %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Failed to synchronize time with network resource managers. %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "NWC24iPrepareShutdown"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/dev/net/kd/request"
	.byte 0x00
	.ascii "NWC24SuspendScheduler"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NWC24ResumeScheduler"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NWC24iRequestShutdown"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NWC24Shutdown_: Give up!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NWC24iSetRtcCounter_"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/dev/net/kd/time"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80433F08
lbl_80433F08:
	.ascii "/shared2/sys/NANDBOOTINFO"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - EXI \trelease build: Nov 30 2006 03:26:56 (0x4199_60831) >>"
	.byte 0x00
	.ascii "<< RVL_SDK - SI \trelease build: Nov 30 2006 03:31:44 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
.global lbl_80433FB8
lbl_80433FB8:
	.incbin "baserom.dol", 0x4300B8, 0x18
.global lbl_80433FD0
lbl_80433FD0:
	.float 1.1210387714598537e-44, 1.1210387714598537e-44, 1.1210387714598537e-44, 1.1210387714598537e-44
.global lbl_80433FE0
lbl_80433FE0:
	.incbin "baserom.dol", 0x4300E0, 0x98
.global lbl_80434078
lbl_80434078:
	.ascii "DBExceptionDestination\n"
	.byte 0x00
.global lbl_80434090
lbl_80434090:
	.ascii "<< RVL_SDK - VI \trelease build: Nov 30 2006 03:31:49 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
.global lbl_804340D8
lbl_804340D8:
	.incbin "baserom.dol", 0x4301D8, 0x1A4
.global lbl_8043427C
lbl_8043427C:
	.float 8.816474438394764e-38, 6.39195904580768e-38, 3.1041011470128404e-38, 1.3040738545327255e-38
	.float 1.102342647348832e-39, 1.8642874769377366e-38, 1.8000047315748393e-38, 2.038781085351163e-38
	.float 2.31425562422015e-38, 1.3775590670406903e-39, 1.744895446478798e-39, 1.1020371642836091e-39
	.float 9.183549615799121e-41
.global lbl_804342B0
lbl_804342B0:
	.float -3.6234103067248244e-39, 1.7796490496925177e-43, 0.0, 0.0
.global lbl_804342C0
lbl_804342C0:
	.4byte 0x80277974, 0x8027797C, 0x80277984, 0x80277974
	.4byte 0x8027797C, 0x80277984, 0x80277974, 0x80277974
.global lbl_804342E0
lbl_804342E0:
	.4byte 0x80277EE4, 0x80277EF0, 0x80277F5C, 0x80277F6C
	.4byte 0x80277F00, 0x80277F10, 0x80277FC4, 0x80277FC4
	.4byte 0x80277F3C, 0x80277F4C, 0x80277F5C, 0x80277FC4
	.4byte 0x80277FC4, 0x80277FC4, 0x80277FC4, 0x80277FC4
	.4byte 0x80277F7C, 0x80277F8C, 0x80277FC4, 0x80277FC4
	.4byte 0x80277F20, 0x80277F2C, 0x80277F5C, 0x80277FC4
	.4byte 0x80277F9C, 0x80277FC4, 0x80277FAC, 0x80277FC4
	.4byte 0x80277FBC, 0x80277FBC, 0x80277FBC
.global lbl_8043435C
lbl_8043435C:
	.incbin "baserom.dol", 0x43045C, 0x174
.global lbl_804344D0
lbl_804344D0:
	.4byte 0x80279A0C, 0x80279A14, 0x80279A18, 0x80279A0C
	.4byte 0x80279A14, 0x80279A18, 0x80279A0C, 0x80279A0C
.global lbl_804344F0
lbl_804344F0:
	.4byte 0x80279D9C, 0x80279DA4, 0x80279DA8, 0x80279D9C
	.4byte 0x80279DA4, 0x80279DA8, 0x80279D9C, 0x80279D9C
.global lbl_80434510
lbl_80434510:
	.incbin "baserom.dol", 0x430610, 0x590
.global lbl_80434AA0
lbl_80434AA0:
	.incbin "baserom.dol", 0x430BA0, 0x170
.global lbl_80434C10
lbl_80434C10:
	.float 0.0, 9.183549615799121e-41, 1.8367099231598242e-40, 2.7550648847397363e-40
	.float 3.6734198463196485e-40, 4.5917748078995606e-40, 5.510129769479473e-40, 6.428484731059385e-40
	.float 4.591774807899561e-41, 1.3775324423698682e-40, 2.2958874039497803e-40, 3.2142423655296924e-40
	.float 4.1325973271096045e-40, 5.050952288689517e-40, 5.969307250269429e-40, 6.887662211849341e-40
	.float 0.0, 8.265194654219209e-40, 1.8367099231598242e-40, 1.0101904577379033e-39
	.float 3.6734198463196485e-40, 8.724372135009165e-40, 5.510129769479473e-40, 1.056108205816899e-39
	.float 7.346839692639297e-40, 9.183549615799121e-41, 9.183549615799121e-40, 2.7550648847397363e-40
	.float 7.806017173429253e-40, 4.5917748078995606e-40, 9.642727096589077e-40, 6.428484731059385e-40
	.float 0.0, 8.265194654219209e-40, 1.8367099231598242e-40, 1.0101904577379033e-39
	.float 3.6734198463196485e-40, 8.265194654219209e-40, 5.510129769479473e-40, 1.0101904577379033e-39
	.float 7.346839692639297e-40, 9.183549615799121e-41, 9.183549615799121e-40, 2.7550648847397363e-40
	.float 7.346839692639297e-40, 4.5917748078995606e-40, 9.183549615799121e-40, 6.428484731059385e-40
.global lbl_80434CD0
lbl_80434CD0:
	.float -3.6587958955459547e-39, 1.7796490496925177e-43, 0.0, 0.0
.global lbl_80434CE0
lbl_80434CE0:
	.ascii "CPUFifo: %08X - %08X\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80434CF8
lbl_80434CF8:
	.ascii "GP Fifo: %08X - %08X\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80434D10
lbl_80434D10:
	.4byte 0x8027F414, 0x8027F428, 0x8027F43C, 0x8027F450
	.4byte 0x8027F464, 0x8027F478, 0x8027F48C, 0x8027F4A0
	.4byte 0x8027F4B4, 0x8027F4C8, 0x8027F4DC, 0x8027F544
	.4byte 0x8027F558, 0x8027F56C, 0x8027F580, 0x8027F594
	.4byte 0x8027F5A8, 0x8027F5BC, 0x8027F5D0, 0x8027F5E4
	.4byte 0x8027F5F8, 0x8027F608, 0x8027F608, 0x8027F608
	.4byte 0x8027F608, 0x8027F510, 0x8027F690, 0x8027F6A0
	.4byte 0x8027F6B0, 0x8027F6C0, 0x8027F6D0, 0x8027F6E0
	.4byte 0x8027F6F0, 0x8027F700, 0x8027F710, 0x8027F720
	.4byte 0x8027F730, 0x8027F770, 0x8027F780, 0x8027F790
	.4byte 0x8027F7A0, 0x8027F7B0, 0x8027F7C0, 0x8027F7D0
	.4byte 0x8027F7E0, 0x8027F7F0, 0x8027F800, 0x8027F80C
	.4byte 0x8027F80C, 0x8027F80C, 0x8027F80C, 0x8027F750
.global lbl_80434DE0
lbl_80434DE0:
	.4byte 0x8027FA60, 0x8027FA70, 0x8027FA80, 0x8027FA90
	.4byte 0x8027FAA0, 0x8027FAB0, 0x8027FAC0, 0x8027FAD0
	.4byte 0x8027FAE0, 0x8027FAF0, 0x8027FB00, 0x8027FB48
	.4byte 0x8027FB58, 0x8027FB68, 0x8027FB78, 0x8027FB88
	.4byte 0x8027FB98, 0x8027FBA8, 0x8027FBB8, 0x8027FBC8
	.4byte 0x8027FBD8, 0x8027FBE8, 0x8027FBE8, 0x8027FBE8
	.4byte 0x8027FBE8, 0x8027FB24
.global lbl_80434E48
lbl_80434E48:
	.4byte 0x8027FCE8, 0x8027FD00, 0x8027FD3C, 0x8027FD50
	.4byte 0x8027FD64, 0x8027FD7C, 0x8027FD94, 0x8027FDAC
	.4byte 0x8027FDC4, 0x8027FDE4, 0x8027FDFC, 0x8027FE14
	.4byte 0x8027FE28, 0x8027FE28, 0x8027FE28, 0x8027FE28
	.4byte 0x8027FD00, 0x8027FE9C, 0x8027FEB4, 0x8027FEF0
	.4byte 0x8027FF04, 0x8027FF18, 0x8027FF30, 0x8027FF48
	.4byte 0x8027FF60, 0x8027FF78, 0x8027FF98, 0x8027FFB0
	.4byte 0x8027FFC8, 0x8027FFDC, 0x8027FFDC, 0x8027FFDC
	.4byte 0x8027FFDC, 0x8027FEB4
.global lbl_80434ED0
lbl_80434ED0:
	.4byte 0x802800CC, 0x802800F4, 0x80280168, 0x8028018C
	.4byte 0x802801B0, 0x802801D8, 0x80280200, 0x80280228
	.4byte 0x80280250, 0x80280278, 0x802802A0, 0x802802C8
	.4byte 0x802802F0, 0x802802F0, 0x802802F0, 0x802802F0
	.4byte 0x802800F4
.global lbl_80434F14
lbl_80434F14:
	.4byte 0x80280568, 0x80280578, 0x80280588, 0x80280598
	.4byte 0x802805A8, 0x802805B8, 0x802805C8
.global lbl_80434F30
lbl_80434F30:
	.float -3.6748435655594025e-39, -3.6748603811409744e-39, -3.674877196722546e-39, -3.674894012304118e-39
	.float -3.674933248661119e-39, -3.674944459048834e-39, -3.6749556694365485e-39, -3.674966879824263e-39
	.float -3.6749780902119777e-39, -3.674989300599692e-39, -3.675000510987407e-39, -3.6750117213751215e-39
	.float -3.675017326568979e-39, -3.675017326568979e-39, -3.675017326568979e-39, -3.675017326568979e-39
	.float -3.675017326568979e-39, -3.675017326568979e-39, -3.675017326568979e-39, -3.67491082788569e-39
	.float -3.6749220382734047e-39, 0.0, 1.401298464324817e-45, 1.88084477117669e-37
	.float 2.2040575129856464e-38, 8.96831017167883e-43, 8.228460455756013e-38, 0.0
	.float 2.160802231988868e-42, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.5202598881629844e-35, 3.0308824839496495e-26
	.float 0.0, 1.401298464324817e-45, 1.88084477117669e-37, 2.2040575129856464e-38
	.float 8.96831017167883e-43, 8.228460455756013e-38, 0.0, 9.291449597552132e-41
	.float 1.613109224456332e-33, 3.821392479997263e-37, 4.0564895564996865e-37, 3.938943708741526e-37
	.float 1.5649602411626817e-33, 1.661114577033991e-33, 3.0308824839496495e-26, 0.0
	.float 0.0, 1.88084477117669e-37, 2.2040575129856464e-38, 8.96831017167883e-43
	.float 8.228460455756013e-38, 0.0, 2.351420862090973e-38, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.5202598881629844e-35, 3.0308824839496495e-26, 0.0, 0.0
	.float 1.88084477117669e-37, 2.2040575129856464e-38, 8.96831017167883e-43, 8.228460455756013e-38
	.float 0.0, 2.3695716008396793e-38, 1.613109224456332e-33, 3.821392479997263e-37
	.float 4.0564895564996865e-37, 3.938943708741526e-37, 1.5649602411626817e-33, 1.661114577033991e-33
	.float 3.0308824839496495e-26, 0.0
.global lbl_80435078
lbl_80435078:
	.float 0.0, 1.88089858103772e-37, 8.228482876531442e-38, 8.96831017167883e-43
	.float 8.228460455756013e-38, 1.401298464324817e-45, 2.160802231988868e-42, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.5208499312257995e-35, 6.742641473788395e-33, 3.851859888774472e-34, 0.0
	.float 1.88089858103772e-37, 8.228482876531442e-38, 8.96831017167883e-43, 8.228460455756013e-38
	.float 1.401298464324817e-45, 2.160802231988868e-42, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.5202598881629844e-35
	.float 3.0308824839496495e-26, 0.0, 0.0, 1.8808452195921987e-37
	.float 8.228482876531442e-38, 8.96831017167883e-43, 8.228460455756013e-38, 1.401298464324817e-45
	.float 9.291449597552132e-41, 1.613109224456332e-33, 3.821392479997263e-37, 4.0564895564996865e-37
	.float 3.938943708741526e-37, 1.5649602411626817e-33, 1.661304125498061e-33, 1.1096977002271011e-31
	.float 1.504632769052528e-36, 2.802596928649634e-45, 1.88089858103772e-37, 8.228482876531442e-38
	.float 8.96831017167883e-43, 8.228460455756013e-38, 0.0, 2.160802231988868e-42
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.5202598881629844e-35, 3.0308824839496495e-26, 0.0
	.float 2.802596928649634e-45, 1.88089858103772e-37, 8.228482876531442e-38, 8.96831017167883e-43
	.float 8.228460455756013e-38, 0.0, 2.160802231988868e-42, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.5208499312257995e-35, 6.742641473788395e-33, 3.851859888774472e-34, 2.802596928649634e-45
	.float 1.8808452195921987e-37, 8.228482876531442e-38, 8.96831017167883e-43, 8.228460455756013e-38
	.float 0.0, 9.291449597552132e-41, 1.613109224456332e-33, 3.821392479997263e-37
	.float 4.0564895564996865e-37, 3.938943708741526e-37, 1.5649602411626817e-33, 1.661304125498061e-33
	.float 1.1096977002271011e-31, 1.504632769052528e-36, 1.2611686178923354e-44, 1.88084477117669e-37
	.float 2.2040575129856464e-38, 8.96831017167883e-43, 8.228460455756013e-38, 0.0
	.float 2.160802231988868e-42, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.5202598881629844e-35, 3.0308824839496495e-26
	.float 0.0, 1.2611686178923354e-44, 1.88084477117669e-37, 2.2040575129856464e-38
	.float 8.96831017167883e-43, 8.228460455756013e-38, 0.0, 9.291449597552132e-41
	.float 1.613109224456332e-33, 3.821392479997263e-37, 4.0564895564996865e-37, 3.938943708741526e-37
	.float 1.5649602411626817e-33, 1.661114577033991e-33, 3.0308824839496495e-26, 0.0
	.float 1.1210387714598537e-44, 1.88084477117669e-37, 2.2040575129856464e-38, 8.96831017167883e-43
	.float 8.228460455756013e-38, 0.0, 2.351420862090973e-38, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.5202598881629844e-35, 3.0308824839496495e-26, 0.0, 1.1210387714598537e-44
	.float 1.88084477117669e-37, 2.2040575129856464e-38, 8.96831017167883e-43, 8.228460455756013e-38
	.float 0.0, 2.3695716008396793e-38, 1.613109224456332e-33, 3.821392479997263e-37
	.float 4.0564895564996865e-37, 3.938943708741526e-37, 1.5649602411626817e-33, 1.661114577033991e-33
	.float 3.0308824839496495e-26, 0.0
.global lbl_804352D0
lbl_804352D0:
	.float 1.1210387714598537e-44, 1.88089858103772e-37, 8.228482876531442e-38, 8.96831017167883e-43
	.float 8.228460455756013e-38, 1.401298464324817e-45, 2.160802231988868e-42, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.5208499312257995e-35, 6.742641473788395e-33, 3.851859888774472e-34, 1.1210387714598537e-44
	.float 1.88089858103772e-37, 8.228482876531442e-38, 8.96831017167883e-43, 8.228460455756013e-38
	.float 1.401298464324817e-45, 2.160802231988868e-42, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.5202598881629844e-35
	.float 3.0308824839496495e-26, 0.0, 1.1210387714598537e-44, 1.8808452195921987e-37
	.float 8.228482876531442e-38, 8.96831017167883e-43, 8.228460455756013e-38, 1.401298464324817e-45
	.float 9.291449597552132e-41, 1.613109224456332e-33, 3.821392479997263e-37, 4.0564895564996865e-37
	.float 3.938943708741526e-37, 1.5649602411626817e-33, 1.661304125498061e-33, 1.1096977002271011e-31
	.float 1.504632769052528e-36, 7.006492321624085e-45, 1.880850152162793e-37, 2.4979367058850756e-38
	.float 1.0110872887550712e-39, 1.0579449157400588e-37, 0.0, 2.160802231988868e-42
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.5202598881629844e-35, 3.0308824839496495e-26, 0.0
	.float 7.006492321624085e-45, 1.880850152162793e-37, 2.4979367058850756e-38, 1.0110872887550712e-39
	.float 1.0579449157400588e-37, 0.0, 9.291449597552132e-41, 1.613109224456332e-33
	.float 3.821392479997263e-37, 4.0564895564996865e-37, 3.938943708741526e-37, 1.5649602411626817e-33
	.float 1.661114577033991e-33, 3.0308824839496495e-26, 0.0, 5.605193857299268e-45
	.float 1.880850152162793e-37, 2.4979367058850756e-38, 2.1131132426509657e-39, 1.0579449157400588e-37
	.float 0.0, 2.351420862090973e-38, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.5202598881629844e-35
	.float 3.0308824839496495e-26, 0.0, 5.605193857299268e-45, 1.880850152162793e-37
	.float 2.4979367058850756e-38, 2.1131132426509657e-39, 1.0579449157400588e-37, 0.0
	.float 2.3695716008396793e-38, 1.613109224456332e-33, 3.821392479997263e-37, 4.0564895564996865e-37
	.float 3.938943708741526e-37, 1.5649602411626817e-33, 1.661114577033991e-33, 3.0308824839496495e-26
	.float 0.0
.global lbl_80435474
lbl_80435474:
	.float 5.605193857299268e-45, 1.880909343009926e-37, 1.0579493998951446e-37, 2.1131132426509657e-39
	.float 1.0579449157400588e-37, 1.401298464324817e-45, 2.160802231988868e-42, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.5208499312257995e-35, 6.742641473788395e-33, 3.851859888774472e-34, 5.605193857299268e-45
	.float 1.880909343009926e-37, 1.0579493998951446e-37, 2.1131132426509657e-39, 1.0579449157400588e-37
	.float 1.401298464324817e-45, 2.160802231988868e-42, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.5202598881629844e-35
	.float 3.0308824839496495e-26, 0.0, 5.605193857299268e-45, 1.880850152162793e-37
	.float 1.0285620411245874e-37, 2.1131132426509657e-39, 1.0285575569695016e-37, 1.401298464324817e-45
	.float 9.291449597552132e-41, 1.613109224456332e-33, 3.821392479997263e-37, 4.0564895564996865e-37
	.float 3.938943708741526e-37, 1.5649602411626817e-33, 1.661304125498061e-33, 1.1096977002271011e-31
	.float 1.504632769052528e-36, 2.942726775082116e-44, 1.88084477117669e-37, 2.2040575129856464e-38
	.float 8.96831017167883e-43, 8.228460455756013e-38, 0.0, 2.160802231988868e-42
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.5202598881629844e-35, 3.0308824839496495e-26, 0.0
	.float 2.942726775082116e-44, 1.88084477117669e-37, 2.2040575129856464e-38, 8.96831017167883e-43
	.float 8.228460455756013e-38, 0.0, 9.291449597552132e-41, 1.613109224456332e-33
	.float 3.821392479997263e-37, 4.0564895564996865e-37, 3.938943708741526e-37, 1.5649602411626817e-33
	.float 1.661114577033991e-33, 3.0308824839496495e-26, 0.0, 2.802596928649634e-44
	.float 1.88084477117669e-37, 2.2040575129856464e-38, 8.96831017167883e-43, 8.228460455756013e-38
	.float 0.0, 2.351420862090973e-38, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.5202598881629844e-35
	.float 3.0308824839496495e-26, 0.0, 2.802596928649634e-44, 1.88084477117669e-37
	.float 2.2040575129856464e-38, 8.96831017167883e-43, 8.228460455756013e-38, 0.0
	.float 2.3695716008396793e-38, 1.613109224456332e-33, 3.821392479997263e-37, 4.0564895564996865e-37
	.float 3.938943708741526e-37, 1.5649602411626817e-33, 1.661114577033991e-33, 3.0308824839496495e-26
	.float 0.0
.global lbl_80435618
lbl_80435618:
	.float 2.802596928649634e-44, 1.88089858103772e-37, 8.228482876531442e-38, 8.96831017167883e-43
	.float 8.228460455756013e-38, 1.401298464324817e-45, 2.160802231988868e-42, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.5208499312257995e-35, 6.742641473788395e-33, 3.851859888774472e-34, 2.802596928649634e-44
	.float 1.88089858103772e-37, 8.228482876531442e-38, 8.96831017167883e-43, 8.228460455756013e-38
	.float 1.401298464324817e-45, 2.160802231988868e-42, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.5202598881629844e-35
	.float 3.0308824839496495e-26, 0.0, 2.802596928649634e-44, 1.8808452195921987e-37
	.float 8.228482876531442e-38, 8.96831017167883e-43, 8.228460455756013e-38, 1.401298464324817e-45
	.float 9.291449597552132e-41, 1.613109224456332e-33, 3.821392479997263e-37, 4.0564895564996865e-37
	.float 3.938943708741526e-37, 1.5649602411626817e-33, 1.661304125498061e-33, 1.1096977002271011e-31
	.float 1.504632769052528e-36, 3.0828566215145976e-44, 1.88089858103772e-37, 8.228482876531442e-38
	.float 8.96831017167883e-43, 8.228460455756013e-38, 0.0, 2.160802231988868e-42
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.5202598881629844e-35, 3.0308824839496495e-26, 0.0
	.float 3.0828566215145976e-44, 1.88089858103772e-37, 8.228482876531442e-38, 8.96831017167883e-43
	.float 8.228460455756013e-38, 0.0, 2.160802231988868e-42, 2.520702420460096e-35
	.float 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35, 2.520702420460096e-35
	.float 2.5208499312257995e-35, 6.742641473788395e-33, 3.851859888774472e-34, 3.0828566215145976e-44
	.float 1.8808452195921987e-37, 8.228482876531442e-38, 8.96831017167883e-43, 8.228460455756013e-38
	.float 0.0, 9.291449597552132e-41, 1.613109224456332e-33, 3.821392479997263e-37
	.float 4.0564895564996865e-37, 3.938943708741526e-37, 1.5649602411626817e-33, 1.661304125498061e-33
	.float 1.1096977002271011e-31, 1.504632769052528e-36
.global lbl_80435780
lbl_80435780:
	.float -3.685140306675261e-39, -3.684820810625395e-39, -3.6848488365946817e-39, -3.684888072951683e-39
	.float -3.684927309308684e-39, -3.684988966441114e-39, -3.685056228767402e-39, 0.0
.global lbl_804357A0
lbl_804357A0:
	.4byte 0x80282630, 0x8028263C, 0x8028263C, 0x80282648
	.4byte 0x80282648, 0x80282648, 0x80282648, 0x80282654
	.4byte 0x80282630, 0x8028263C, 0x80282648, 0x80282654
	.4byte 0x80282654, 0x80282654, 0x80282630, 0x80282654
	.4byte 0x80282654, 0x8028263C, 0x80282654, 0x80282648
	.4byte 0x80282654, 0x80282654, 0x80282648, 0x80282654
	.4byte 0x80282654, 0x80282654, 0x80282654, 0x80282654
	.4byte 0x80282654, 0x80282654, 0x80282654, 0x80282654
	.4byte 0x80282630, 0x80282654, 0x8028263C, 0x80282648
	.4byte 0x80282654, 0x80282654, 0x80282654, 0x8028263C
	.4byte 0x8028263C, 0x8028263C, 0x8028263C, 0x80282648
	.4byte 0x80282648, 0x80282654, 0x80282654, 0x80282654
	.4byte 0x80282630, 0x80282654, 0x80282654, 0x80282654
	.4byte 0x80282654, 0x80282654, 0x80282654, 0x80282654
	.4byte 0x80282654, 0x8028263C, 0x8028263C, 0x80282654
	.4byte 0x80282648
.global lbl_80435894
lbl_80435894:
	.4byte 0x80282814, 0x80282828, 0x80282828, 0x8028283C
	.4byte 0x8028283C, 0x8028283C, 0x80282850, 0x80282878
	.4byte 0x80282814, 0x80282828, 0x8028283C, 0x80282878
	.4byte 0x80282878, 0x80282878, 0x80282864
.global lbl_804358D0
lbl_804358D0:
	.float -2.1401784420013428, -2.135291814804077, -2.1355321407318115, -2.140623092651367
	.float -2.1406235694885254, -2.1401402950286865, -2.125526189804077, -2.1257665157318115
	.float -2.140623092651367, -2.1406211853027344, -8.559310913085938, -8.562454223632812
	.float -8.559310913085938, -8.56243896484375, -8.562454223632812, -8.558700561523438
	.float -8.5623779296875, -8.558700561523438, -8.56243896484375, -8.5623779296875
.global lbl_80435920
lbl_80435920:
	.float 0.0, 1.401298464324817e-45, 0.0, 1.401298464324817e-45
	.float 0.0, 1.401298464324817e-45, 9.80908925027372e-45, 7.006492321624085e-45
	.float 8.407790785948902e-45, 0.0
.global lbl_80435948
lbl_80435948:
	.float 0.0, 1.401298464324817e-45, 2.802596928649634e-45, 4.203895392974451e-45
	.float 5.605193857299268e-45, 5.605193857299268e-45, 5.605193857299268e-45, 7.006492321624085e-45
.global lbl_80435968
lbl_80435968:
	.float 0.0, 1.6815581571897805e-44, 1.401298464324817e-44, 1.5414283107572988e-44
	.float 2.2420775429197073e-44, 1.401298464324817e-45, 2.382207389352189e-44, 1.1210387714598537e-44
	.float 1.2611686178923354e-44, 1.8216880036222622e-44, 2.802596928649634e-45, 1.961817850054744e-44
	.float 1.2611686178923354e-44, 1.1210387714598537e-44, 2.5223372357846707e-44, 4.203895392974451e-45
	.float 2.6624670822171524e-44, 1.5414283107572988e-44, 1.401298464324817e-44, 2.1019476964872256e-44
	.float 5.605193857299268e-45, 1.961817850054744e-44, 2.802596928649634e-45, 4.203895392974451e-45
	.float 2.1019476964872256e-44, 7.006492321624085e-45, 1.6815581571897805e-44, 0.0
	.float 1.401298464324817e-45, 1.8216880036222622e-44, 8.407790785948902e-45, 2.382207389352189e-44
	.float 1.401298464324817e-45, 0.0, 2.2420775429197073e-44, 9.80908925027372e-45
	.float 2.6624670822171524e-44, 4.203895392974451e-45, 2.802596928649634e-45, 2.5223372357846707e-44
	.float 1.1210387714598537e-44, 2.382207389352189e-44, 8.407790785948902e-45, 9.80908925027372e-45
	.float 2.5223372357846707e-44, 1.2611686178923354e-44, 1.961817850054744e-44, 5.605193857299268e-45
	.float 7.006492321624085e-45, 1.8216880036222622e-44, 1.401298464324817e-44, 1.6815581571897805e-44
	.float 7.006492321624085e-45, 5.605193857299268e-45, 2.1019476964872256e-44, 1.5414283107572988e-44
	.float 2.6624670822171524e-44, 9.80908925027372e-45, 8.407790785948902e-45, 2.2420775429197073e-44
.global lbl_80435A58
lbl_80435A58:
	.float -0.8090149760246277, 0.0, 0.3090150058269501, -0.8090149760246277
	.float 0.0, -0.3090150058269501, 0.8090149760246277, 0.0
	.float -0.3090150058269501, 0.8090149760246277, 0.0, 0.3090150058269501
	.float 0.3090150058269501, -0.8090149760246277, 0.0, -0.3090150058269501
	.float -0.8090149760246277, 0.0, -0.3090150058269501, 0.8090149760246277
	.float 0.0, 0.3090150058269501, 0.8090149760246277, 0.0
	.float 0.0, 0.3090150058269501, -0.8090149760246277, 0.0
	.float -0.3090150058269501, -0.8090149760246277, 0.0, -0.3090150058269501
	.float 0.8090149760246277, 0.0, 0.3090150058269501, 0.8090149760246277
	.float -0.5, -0.5, 0.5, -0.5
	.float -0.5, -0.5, 0.5, -0.5
	.float -0.5, 0.5, -0.5, 0.5
	.float -0.5, 0.5, 0.5, -0.5
	.float 0.5, -0.5, 0.5, 0.5
	.float -0.5, 0.5, 0.5, 0.5
.global lbl_80435B48
lbl_80435B48:
	.incbin "baserom.dol", 0x431C48, 0x48
.global lbl_80435B90
lbl_80435B90:
	.float 3.680608507441635e-40, 9.697831757400186e-38, 1.5165719216516772e-36, 1.854660556487825e-40
	.float 6.112574211599964e-36, 3.791315906590013e-37
.global lbl_80435BA8
lbl_80435BA8:
	.float -0.525731086730957, 0.0, 0.8506507873535156, 0.525731086730957
	.float 0.0, 0.8506507873535156, -0.525731086730957, 0.0
	.float -0.8506507873535156, 0.525731086730957, 0.0, -0.8506507873535156
	.float 0.0, 0.8506507873535156, 0.525731086730957, 0.0
	.float 0.8506507873535156, -0.525731086730957, 0.0, -0.8506507873535156
	.float 0.525731086730957, 0.0, -0.8506507873535156, -0.525731086730957
	.float 0.8506507873535156, 0.525731086730957, 0.0, -0.8506507873535156
	.float 0.525731086730957, 0.0, 0.8506507873535156, -0.525731086730957
	.float 0.0, -0.8506507873535156, -0.525731086730957, 0.0
.global lbl_80435C38
lbl_80435C38:
	.float 3.67700717038832e-40, 1.5893163004407272e-33, 1.551883566755442e-36, 1.5987196697960175e-36
	.float 6.212630907469796e-33, 6.404287179847708e-33, 6.11312307218247e-36, 9.857413231845017e-35
	.float 3.967986684401491e-37, 1.0458973613822025e-34, 5.510143782464116e-40, 2.520336226419166e-35
	.float 1.5412628260630813e-33, 2.5043866001966557e-32, 6.348044728537936e-36, 0.0
.global lbl_80435C78
lbl_80435C78:
	.4byte 0x802873A0, 0x802873BC, 0x802873D8, 0x802873F4
	.4byte 0x80287448, 0x80287464, 0x80287480, 0x8028749C
	.4byte 0x80287410, 0x802874B8, 0x802874E8, 0x80287518
	.4byte 0x80287548, 0x80287578, 0x802875A8, 0x802875D8
	.4byte 0x80287608, 0x80287634, 0x80287644, 0x80287654
	.4byte 0x80287664, 0x8028742C, 0x80287670
.global lbl_80435CD4
lbl_80435CD4:
	.incbin "baserom.dol", 0x431DD4, 0x15C
.global lbl_80435E30
lbl_80435E30:
	.ascii "Warning: DVDOpen(): file '%s' was not found under %s.\n"
	.byte 0x00
	.byte 0x00
.global lbl_80435E68
lbl_80435E68:
	.ascii "DVDReadAsync(): specified area is out of the file  "
	.byte 0x00
.global lbl_80435E9C
lbl_80435E9C:
	.ascii "DVDRead(): specified area is out of the file  "
	.byte 0x00
	.byte 0x00
.global lbl_80435ECC
lbl_80435ECC:
	.ascii "DVDSeek(): offset is out of the file  "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - DVD \trelease build: Apr 24 2007 11:44:29 (0x4199_60831) >>"
	.byte 0x00
.global lbl_80435F40
lbl_80435F40:
	.ascii "DVDChangeDisk(): FST in the new disc is too big.   "
	.byte 0x00
.global lbl_80435F74
lbl_80435F74:
	.4byte 0x8028A2A4, 0x8028A298, 0x8028A298, 0x8028A2A4
	.4byte 0x8028A244, 0x8028A244, 0x8028A2A4, 0x8028A2A4
	.4byte 0x8028A2A4, 0x8028A2A4, 0x8028A2A4, 0x8028A2A4
	.4byte 0x8028A2A4, 0x8028A244, 0x8028A2A4, 0x8028A244
	.4byte 0x8028A2A4, 0x8028A2A4, 0x8028A2A4, 0x8028A2A4
	.4byte 0x8028A2A4, 0x8028A2A4, 0x8028A2A4, 0x8028A2A4
	.4byte 0x8028A2A4, 0x8028A2A4, 0x8028A2A4, 0x8028A2A4
	.4byte 0x8028A2A4, 0x8028A2A4, 0x8028A2A4, 0x8028A2A4
	.4byte 0x8028A278, 0x8028A244, 0x8028A244, 0x8028A280
	.4byte 0x8028A280, 0x8028A244, 0x8028A280
.global lbl_80436010
lbl_80436010:
	.incbin "baserom.dol", 0x432110, 0xA8
.global lbl_804360B8
lbl_804360B8:
	.4byte 0x8028C17C, 0x8028C11C, 0x8028C11C, 0x8028C17C
	.4byte 0x8028C0FC, 0x8028C0FC, 0x8028C17C, 0x8028C17C
	.4byte 0x8028C17C, 0x8028C17C, 0x8028C17C, 0x8028C17C
	.4byte 0x8028C17C, 0x8028C0FC, 0x8028C17C, 0x8028C0FC
	.4byte 0x8028C17C, 0x8028C17C, 0x8028C17C, 0x8028C17C
	.4byte 0x8028C17C, 0x8028C17C, 0x8028C17C, 0x8028C17C
	.4byte 0x8028C17C, 0x8028C17C, 0x8028C17C, 0x8028C17C
	.4byte 0x8028C17C, 0x8028C17C, 0x8028C17C, 0x8028C17C
	.4byte 0x8028C17C, 0x8028C0FC, 0x8028C0FC, 0x8028C17C
	.4byte 0x8028C17C, 0x8028C0FC
.global lbl_80436150
lbl_80436150:
	.4byte 0x8028C018, 0x8028C018, 0x8028C038, 0x8028C08C
	.4byte 0x8028C0D8, 0x8028C1A8, 0x8028C1A8, 0x8028C1A8
	.4byte 0x8028C1A8, 0x8028C2F4, 0x8028C2F4, 0x8028C018
	.4byte 0x8028C1A8, 0x8028C2A4
.global lbl_80436188
lbl_80436188:
	.4byte 0x8028C618, 0x8028C648, 0x8028C5E8, 0x8028C5E8
	.4byte 0x8028C618, 0x8028C618, 0x8028C618, 0x8028C618
	.4byte 0x8028C618, 0x8028C648, 0x8028C5E8, 0x8028C5E8
	.4byte 0x8028C618, 0x8028C618
.global lbl_804361C0
lbl_804361C0:
	.ascii "/shared2/test2/dvderror.dat"
	.byte 0x00
.global lbl_804361DC
lbl_804361DC:
	.incbin "baserom.dol", 0x4322DC, 0x4C4
.global lbl_804366A0
lbl_804366A0:
	.ascii "(doTransactionCallback) Error - context mangled!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(doCoverCallback) Error - context mangled!\n"
	.byte 0x00
	.ascii "IPCCltInit returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "(ddrAllocAligned32) Not enough space to allocate %d bytes\n"
	.byte 0x00
	.byte 0x00
	.ascii "Allocation of diCommand blocks failed\n"
	.byte 0x00
	.byte 0x00
	.ascii "Allocation of pathBuf failed\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(DVDLowInit) Error: IOS_Open failed - pathname '/dev/di' does not exist\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(DVDLowInit) Error: IOS_Open failed - calling thread lacks permission\n"
	.byte 0x00
	.byte 0x00
	.ascii "(DVDLowInit) Error: IOS_Open failed - connection limit has been reached\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(DVDLowInit) IOS_Open failed, errorcode = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(newContext) ERROR: freeDvdContext.inUse (#%d) is true\n"
	.byte 0x00
	.ascii "(newContext) Now spinning in infinite loop\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(newContext) Something overwrote the context magic - spinning \n"
	.byte 0x00
	.ascii "@@@@@@ WARNING - Calling DVDLowReadDiskId with NULL ptr\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowReadDiskID) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(DVDLowOpenPartition) eTicket memory is unaligned\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(DVDLowOpenPartition) certificates memory is unaligned\n"
	.byte 0x00
	.ascii "@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowClosePartition) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowUnencryptedRead) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowStopMotor) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowWaitForCoverClose) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowInquiry) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowRequestError) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.ascii "(DVDLowSetSpinupFlag): Synch functions can't be called in callbacks\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowNotifyReset) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowReset) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowAudioBufferConfig) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(DVDLowGetCoverStatus): Synch functions can't be called in callbacks\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowGetCoverStatus) IOS_Ioctl returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowReadDVD) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowReadDVDConfig) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowReadDvdCopyright) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.ascii "@@@ (DVDLowReadDvdPhysical) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowReadDvdDiscKey) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowReportKey) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowOffset) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowStopLaser) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowReadDiskBca) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowSerMeasControl) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowRequestDiscStatus) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowRequestRetryNumber) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowSetMaxRotation) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "(DVDLowRead): ERROR - destAddr buffer is not 32 byte aligned\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowRead) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.ascii "@@@ (DVDLowSeek) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.ascii "(DVDLowGetCoverReg): Synch functions can't be called in callbacks\n"
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowGetCoverReg) IOS_Ioctl returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowPrepareCoverRegsiter) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.ascii "@@@ (DVDLowClearCoverInterrupt) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "@@@ (DVDLowEnableDvdVideo) IOS_IoctlAsync returned error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - AI \trelease build: Nov 30 2006 03:26:11 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - AX \trelease build: Dec 18 2006 15:43:48 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
.global lbl_80437328
lbl_80437328:
	.float 2.802596928649634e-45, 5.717297734445254e-43, 5.717297734445254e-43, 1.1350517561031018e-42
	.float 1.9674230439120432e-42, 1.9674230439120432e-42, 1.9674230439120432e-42, 1.9674230439120432e-42
	.float 5.717297734445254e-43, 1.1434595468890507e-42, 1.1434595468890507e-42, 1.7067815295476272e-42
	.float 2.5391528173565685e-42, 2.5391528173565685e-42, 2.5391528173565685e-42, 2.5391528173565685e-42
	.float 9.907180142776457e-43, 1.562447787722171e-42, 1.562447787722171e-42, 2.1257697703807475e-42
	.float 2.958141058189689e-42, 2.958141058189689e-42, 2.958141058189689e-42, 2.958141058189689e-42
	.float 9.907180142776457e-43, 1.562447787722171e-42, 1.562447787722171e-42, 2.1257697703807475e-42
	.float 2.958141058189689e-42, 2.958141058189689e-42, 2.958141058189689e-42, 2.958141058189689e-42
.global lbl_804373A8
lbl_804373A8:
	.float 5.605193857299268e-45, 1.2051166793193427e-43, 2.1159606811304738e-43, 2.1159606811304738e-43
	.float 0.0, 0.0
.global lbl_804373C0
lbl_804373C0:
	.incbin "baserom.dol", 0x4334C0, 0xFC0
.global lbl_80438380
lbl_80438380:
	.incbin "baserom.dol", 0x434480, 0x2000
.global lbl_8043A380
lbl_8043A380:
	.float 2.200038588989963e-43, 6.712219644115874e-43, 1.1616764269252734e-42, 4.44211613190967e-43
	.float 1.133650457638777e-42, 1.5652503846508207e-42, 6.712219644115874e-43, 1.3186218549296529e-42
	.float 2.083730816451003e-42, 8.982323156322077e-43, 1.7642347665849447e-42, 2.7311307069690685e-42
	.float 1.1168348760668792e-42, 2.33596454002947e-42, 3.613948739493703e-42, 1.3550556150020981e-42
	.float 2.6638683806814773e-42, 4.067969441934944e-42, 1.5736581754367696e-42, 3.0534293537637764e-42
	.float 4.7826316587406007e-42, 1.792260735871441e-42, 3.471016296132572e-42, 5.4496497277592136e-42
	.float 0.4000000059604645, -1.0, 0.30000001192092896, 0.5
	.float -0.949999988079071, 0.30000001192092896, 0.6000000238418579, -0.8999999761581421
	.float 0.30000001192092896, 0.75, -0.8500000238418579, 0.30000001192092896
	.float -0.8999999761581421, 0.800000011920929, 0.30000001192092896, -1.0
	.float 0.699999988079071, 0.30000001192092896, -1.0, 0.699999988079071
	.float 0.30000001192092896, -1.0, 0.699999988079071, 0.30000001192092896
.global lbl_8043A440
lbl_8043A440:
	.float 2.5069229526770977e-42, 2.8011956301853093e-42, 3.269229317269798e-42, 6.067622350526458e-43
	.float 2.0879347118439774e-43, 6.58610278232664e-44, 1.0229478789571165e-43, 9.388699710976274e-44
	.float 2.0879347118439774e-43, 4.105804500471714e-43, 6.291830104818429e-43, 3.517259145455291e-43
	.float 1.4433374182545616e-43, 6.58610278232664e-44, 1.0229478789571165e-43, 9.388699710976274e-44
	.float 1.3270296457156018e-42, 1.907167209946076e-42, 2.145387948881295e-42, 6.067622350526458e-43
	.float 1.9197788961249994e-43, 6.58610278232664e-44, 1.0229478789571165e-43, 9.388699710976274e-44
	.float 1.792260735871441e-42, 2.145387948881295e-42, 2.764761870112864e-42, 7.132609183413319e-43
	.float 2.0879347118439774e-43, 6.58610278232664e-44, 1.0229478789571165e-43, 9.388699710976274e-44
	.float 2.145387948881295e-42, 2.588198263607937e-42, 3.218782572554105e-42, 7.88931035414872e-43
	.float 2.5083242511414226e-43, 6.58610278232664e-44, 1.0229478789571165e-43, 9.388699710976274e-44
	.float 2.5545671004641415e-42, 3.302860480413594e-42, 3.7736967644267324e-42, 8.001414231294705e-43
	.float 1.9197788961249994e-43, 6.58610278232664e-44, 1.0229478789571165e-43, 9.388699710976274e-44
	.float 2.5545671004641415e-42, 3.302860480413594e-42, 3.7736967644267324e-42, 8.001414231294705e-43
	.float 2.5083242511414226e-43, 6.58610278232664e-44, 1.0229478789571165e-43, 9.388699710976274e-44
.global lbl_8043A520
lbl_8043A520:
	.float 2.200038588989963e-43, 6.712219644115874e-43, 1.1616764269252734e-42, 4.44211613190967e-43
	.float 1.133650457638777e-42, 1.5652503846508207e-42, 6.712219644115874e-43, 1.3186218549296529e-42
	.float 2.083730816451003e-42, 8.982323156322077e-43, 1.7642347665849447e-42, 2.7311307069690685e-42
	.float 1.1168348760668792e-42, 2.33596454002947e-42, 3.613948739493703e-42, 1.3550556150020981e-42
	.float 2.6638683806814773e-42, 4.067969441934944e-42, 1.5736581754367696e-42, 3.0534293537637764e-42
	.float 4.7826316587406007e-42, 1.792260735871441e-42, 3.471016296132572e-42, 5.4496497277592136e-42
	.float 0.4000000059604645, -1.0, 0.30000001192092896, 0.5
	.float -0.949999988079071, 0.30000001192092896, 0.6000000238418579, -0.8999999761581421
	.float 0.30000001192092896, 0.75, -0.8500000238418579, 0.30000001192092896
	.float -0.8999999761581421, 0.800000011920929, 0.30000001192092896, -1.0
	.float 0.699999988079071, 0.30000001192092896, -1.0, 0.699999988079071
	.float 0.30000001192092896, -1.0, 0.699999988079071, 0.30000001192092896
.global lbl_8043A5E0
lbl_8043A5E0:
	.float 2.5069229526770977e-42, 2.8011956301853093e-42, 3.269229317269798e-42, 6.067622350526458e-43
	.float 2.0879347118439774e-43, 6.58610278232664e-44, 1.0229478789571165e-43, 9.388699710976274e-44
	.float 9.949219096706201e-44, 2.0879347118439774e-43, 4.105804500471714e-43, 6.291830104818429e-43
	.float 3.517259145455291e-43, 1.4433374182545616e-43, 6.58610278232664e-44, 1.0229478789571165e-43
	.float 9.388699710976274e-44, 9.949219096706201e-44, 1.3270296457156018e-42, 1.907167209946076e-42
	.float 2.145387948881295e-42, 6.067622350526458e-43, 1.9197788961249994e-43, 6.58610278232664e-44
	.float 1.0229478789571165e-43, 9.388699710976274e-44, 9.949219096706201e-44, 1.792260735871441e-42
	.float 2.145387948881295e-42, 2.764761870112864e-42, 7.132609183413319e-43, 2.0879347118439774e-43
	.float 6.58610278232664e-44, 1.0229478789571165e-43, 9.388699710976274e-44, 9.949219096706201e-44
	.float 2.145387948881295e-42, 2.588198263607937e-42, 3.218782572554105e-42, 7.88931035414872e-43
	.float 2.5083242511414226e-43, 6.58610278232664e-44, 1.0229478789571165e-43, 9.388699710976274e-44
	.float 9.949219096706201e-44, 2.5545671004641415e-42, 3.302860480413594e-42, 3.7736967644267324e-42
	.float 8.001414231294705e-43, 1.9197788961249994e-43, 6.58610278232664e-44, 1.0229478789571165e-43
	.float 9.388699710976274e-44, 9.949219096706201e-44, 2.5545671004641415e-42, 3.302860480413594e-42
	.float 3.7736967644267324e-42, 8.001414231294705e-43, 2.5083242511414226e-43, 6.58610278232664e-44
	.float 1.0229478789571165e-43, 9.388699710976274e-44, 9.949219096706201e-44, 0.0
.global lbl_8043A6E0
lbl_8043A6E0:
	.float 2.284116496849452e-43, 4.44211613190967e-43, 6.712219644115874e-43, 8.982323156322077e-43
	.float 1.1168348760668792e-42, 1.3550556150020981e-42, 1.5736581754367696e-42, 1.7978659297287403e-42
.global lbl_8043A700
lbl_8043A700:
	.float 2.5069229526770977e-42, 2.8011956301853093e-42, 6.067622350526458e-43, 2.0879347118439774e-43
	.float 2.0879347118439774e-43, 4.105804500471714e-43, 3.517259145455291e-43, 1.4433374182545616e-43
	.float 1.3270296457156018e-42, 1.907167209946076e-42, 6.067622350526458e-43, 1.9197788961249994e-43
	.float 1.792260735871441e-42, 2.145387948881295e-42, 7.132609183413319e-43, 2.0879347118439774e-43
	.float 2.145387948881295e-42, 2.588198263607937e-42, 7.88931035414872e-43, 2.5083242511414226e-43
	.float 2.5545671004641415e-42, 3.302860480413594e-42, 8.001414231294705e-43, 1.9197788961249994e-43
	.float 2.5545671004641415e-42, 3.302860480413594e-42, 8.001414231294705e-43, 2.5083242511414226e-43
.global lbl_8043A770
lbl_8043A770:
	.float 0.0, 5.769608206118499e-40, 1.1535755205030116e-39, 1.7294937750574038e-39
	.float 2.3043708648528027e-39, 2.87786066916852e-39, 3.449615665985403e-39, 4.019293938478157e-39
	.float 4.5865507672245577e-39, 5.1510442353993097e-39, 5.712436630072511e-39, 6.27038743571733e-39
	.float 6.824558939403866e-39, 7.374621835993001e-39, 7.920242616450226e-39, 8.461091975636425e-39
	.float 8.996844812307876e-39, 9.527177426519317e-39, 1.0051771723519349e-38, 1.0570311009855033e-38
	.float 1.1082484197267289e-38, 1.1587981598795502e-38, 1.2086497731374448e-38, 1.2577734118431228e-38
	.float 1.3061393684691403e-38, 1.3537186361372858e-38, 1.4004823480991943e-38, 1.4464026185154257e-38
	.float 1.49145156154654e-38, 1.535601992002329e-38, 1.5788275654716638e-38, 1.6211020776732613e-38
	.float 1.662400024975071e-38, 1.7026967445241204e-38, 1.7419678537271305e-38, 1.7801895305102078e-38
	.float 1.8173387935785373e-38, 1.8533935024163826e-38, 1.8883317967677004e-38, 1.9221326571555258e-38
	.float 1.954775764752126e-38, 1.9862412211193076e-38, 2.016510388987495e-38, 2.045564631087113e-38
	.float 2.073386991706743e-38, 2.0999602348752737e-38, 2.125268666049905e-38, 2.149296870947529e-38
	.float 2.172030276064117e-38, 2.1934555690642577e-38, 2.21355943761254e-38, 2.232330110801864e-38
	.float 2.2497559578549751e-38, 2.265826609163238e-38, 2.2805325358970947e-38, 2.2938646296165274e-38
	.float 2.3058151831799823e-38, 2.316376629575752e-38, 2.3255428030905935e-38, 2.333308238660496e-38
	.float 2.339668031740834e-38, 2.3446185389556008e-38, 2.348156817578021e-38, 2.3502806255305517e-38
	.float 2.350988701644575e-38, 2.3502806255305517e-38, 2.348156817578021e-38, 2.3446185389556008e-38
	.float 2.339668031740834e-38, 2.3333080985306495e-38, 2.3255428030905935e-38, 2.316376629575752e-38
	.float 2.305815043050136e-38, 2.2938646296165274e-38, 2.2805325358970947e-38, 2.265826609163238e-38
	.float 2.2497558177251287e-38, 2.2323299706720175e-38, 2.21355943761254e-38, 2.1934555690642577e-38
	.float 2.172030276064117e-38, 2.1492967308176826e-38, 2.125268666049905e-38, 2.0999602348752737e-38
	.float 2.0733868515768965e-38, 2.0455647712169594e-38, 2.0165102488576486e-38, 1.9862410809894611e-38
	.float 1.954775484492433e-38, 1.9221326571555258e-38, 1.8883317967677004e-38, 1.8533933622865362e-38
	.float 1.8173389337083837e-38, 1.7801893903803613e-38, 1.7419675734674376e-38, 1.7026964642644275e-38
	.float 1.662400024975071e-38, 1.621101937543415e-38, 1.578827285211971e-38, 1.535601992002329e-38
	.float 1.4914514214166935e-38, 1.4464023382557328e-38, 1.400481927709655e-38, 1.3537184960074394e-38
	.float 1.3061392283392938e-38, 1.2577729914535835e-38, 1.2086497731374448e-38, 1.1587978796198573e-38
	.float 1.108248139467036e-38, 1.0570312411153497e-38, 1.0051770322220884e-38, 9.527174623922388e-39
	.float 8.996840608412483e-39, 8.461091975636425e-39, 7.920241215151762e-39, 7.374619033396072e-39
	.float 6.82456034070233e-39, 6.270386034418866e-39, 5.712433827475582e-39, 5.151041432802381e-39
	.float 4.5865507672245577e-39, 4.019292537179693e-39, 3.4496128633884746e-39, 2.87786066916852e-39
	.float 2.3043708648528027e-39, 1.7294909724604752e-39, 1.1535699153091543e-39, 5.769608206118499e-40
.global lbl_8043A970
lbl_8043A970:
	.float 0.097503662109375, 0.802215576171875, 0.101593017578125, -0.0009765625
	.float 0.093505859375, 0.802032470703125, 0.105804443359375, -0.00103759765625
	.float 0.089599609375, 0.80169677734375, 0.110107421875, -0.00115966796875
	.float 0.085784912109375, 0.801177978515625, 0.114471435546875, -0.00128173828125
	.float 0.08203125, 0.80047607421875, 0.118927001953125, -0.00140380859375
	.float 0.078369140625, 0.79962158203125, 0.12347412109375, -0.00152587890625
	.float 0.074798583984375, 0.798614501953125, 0.128143310546875, -0.00164794921875
	.float 0.07135009765625, 0.79742431640625, 0.13287353515625, -0.00177001953125
	.float 0.067962646484375, 0.796051025390625, 0.1376953125, -0.001922607421875
	.float 0.064697265625, 0.794525146484375, 0.142608642578125, -0.002044677734375
	.float 0.061492919921875, 0.7928466796875, 0.147613525390625, -0.002197265625
	.float 0.058349609375, 0.790985107421875, 0.1527099609375, -0.0023193359375
	.float 0.055328369140625, 0.7889404296875, 0.15789794921875, -0.002471923828125
	.float 0.0523681640625, 0.7867431640625, 0.163177490234375, -0.002655029296875
	.float 0.04949951171875, 0.784423828125, 0.16851806640625, -0.0028076171875
	.float 0.046722412109375, 0.781890869140625, 0.173980712890625, -0.00299072265625
	.float 0.04400634765625, 0.779205322265625, 0.17950439453125, -0.003143310546875
	.float 0.041412353515625, 0.7763671875, 0.18511962890625, -0.003326416015625
	.float 0.03887939453125, 0.77337646484375, 0.190826416015625, -0.003509521484375
	.float 0.036407470703125, 0.770233154296875, 0.19659423828125, -0.003692626953125
	.float 0.034027099609375, 0.766937255859375, 0.202484130859375, -0.003875732421875
	.float 0.03173828125, 0.76348876953125, 0.20843505859375, -0.004058837890625
	.float 0.029510498046875, 0.759857177734375, 0.214447021484375, -0.0042724609375
	.float 0.027374267578125, 0.756103515625, 0.220550537109375, -0.00445556640625
	.float 0.025299072265625, 0.752197265625, 0.22674560546875, -0.004669189453125
	.float 0.0233154296875, 0.7481689453125, 0.233001708984375, -0.004852294921875
	.float 0.021392822265625, 0.743988037109375, 0.23931884765625, -0.00506591796875
	.float 0.019561767578125, 0.739654541015625, 0.2457275390625, -0.00531005859375
	.float 0.017791748046875, 0.735198974609375, 0.252197265625, -0.005523681640625
	.float 0.01605224609375, 0.7305908203125, 0.25872802734375, -0.005706787109375
	.float 0.014404296875, 0.725860595703125, 0.265350341796875, -0.00592041015625
	.float 0.0128173828125, 0.72100830078125, 0.27203369140625, -0.00616455078125
	.float 0.011322021484375, 0.71600341796875, 0.278778076171875, -0.006378173828125
	.float 0.0098876953125, 0.710906982421875, 0.28558349609375, -0.006561279296875
	.float 0.008514404296875, 0.705657958984375, 0.292449951171875, -0.00677490234375
	.float 0.0072021484375, 0.7003173828125, 0.299346923828125, -0.00701904296875
	.float 0.00592041015625, 0.694854736328125, 0.30633544921875, -0.007232666015625
	.float 0.00469970703125, 0.68927001953125, 0.313385009765625, -0.007415771484375
	.float 0.003570556640625, 0.683563232421875, 0.320465087890625, -0.00762939453125
	.float 0.002471923828125, 0.677734375, 0.327606201171875, -0.00787353515625
	.float 0.001434326171875, 0.671844482421875, 0.33477783203125, -0.008087158203125
	.float 0.000457763671875, 0.66583251953125, 0.34197998046875, -0.008270263671875
	.float -0.00048828125, 0.65972900390625, 0.3492431640625, -0.008453369140625
	.float -0.0013427734375, 0.653533935546875, 0.3565673828125, -0.008636474609375
	.float -0.002166748046875, 0.647216796875, 0.3638916015625, -0.00885009765625
	.float -0.002960205078125, 0.640838623046875, 0.37127685546875, -0.009033203125
	.float -0.003692626953125, 0.63433837890625, 0.378692626953125, -0.00921630859375
	.float -0.004364013671875, 0.627777099609375, 0.386138916015625, -0.00933837890625
	.float -0.004974365234375, 0.62115478515625, 0.39361572265625, -0.009490966796875
	.float -0.005584716796875, 0.61444091796875, 0.401092529296875, -0.0096435546875
	.float -0.006134033203125, 0.607635498046875, 0.408599853515625, -0.009796142578125
	.float -0.00665283203125, 0.60076904296875, 0.416107177734375, -0.009918212890625
	.float -0.00714111328125, 0.593841552734375, 0.42364501953125, -0.010009765625
	.float -0.007568359375, 0.58685302734375, 0.43121337890625, -0.0101318359375
	.float -0.007965087890625, 0.57977294921875, 0.438751220703125, -0.010223388671875
	.float -0.008331298828125, 0.572662353515625, 0.446319580078125, -0.010284423828125
	.float -0.0086669921875, 0.565521240234375, 0.453887939453125, -0.010345458984375
	.float -0.00897216796875, 0.558319091796875, 0.461456298828125, -0.010406494140625
	.float -0.00921630859375, 0.551055908203125, 0.469024658203125, -0.010406494140625
	.float -0.00946044921875, 0.543731689453125, 0.476593017578125, -0.010406494140625
	.float -0.009674072265625, 0.536407470703125, 0.484130859375, -0.0103759765625
	.float -0.009857177734375, 0.529022216796875, 0.491668701171875, -0.0103759765625
	.float -0.010009765625, 0.5216064453125, 0.499176025390625, -0.01031494140625
	.float -0.0101318359375, 0.51416015625, 0.506683349609375, -0.01025390625
	.float -0.01025390625, 0.506683349609375, 0.51416015625, -0.0101318359375
	.float -0.01031494140625, 0.499176025390625, 0.5216064453125, -0.010009765625
	.float -0.0103759765625, 0.491668701171875, 0.529022216796875, -0.009857177734375
	.float -0.0103759765625, 0.484130859375, 0.536407470703125, -0.009674072265625
	.float -0.010406494140625, 0.476593017578125, 0.543731689453125, -0.00946044921875
	.float -0.010406494140625, 0.469024658203125, 0.551055908203125, -0.00921630859375
	.float -0.010406494140625, 0.461456298828125, 0.558319091796875, -0.00897216796875
	.float -0.010345458984375, 0.453887939453125, 0.565521240234375, -0.0086669921875
	.float -0.010284423828125, 0.446319580078125, 0.572662353515625, -0.008331298828125
	.float -0.010223388671875, 0.438751220703125, 0.57977294921875, -0.007965087890625
	.float -0.0101318359375, 0.43121337890625, 0.58685302734375, -0.007568359375
	.float -0.010009765625, 0.42364501953125, 0.593841552734375, -0.00714111328125
	.float -0.009918212890625, 0.416107177734375, 0.60076904296875, -0.00665283203125
	.float -0.009796142578125, 0.408599853515625, 0.607635498046875, -0.006134033203125
	.float -0.0096435546875, 0.401092529296875, 0.61444091796875, -0.005584716796875
	.float -0.009490966796875, 0.39361572265625, 0.62115478515625, -0.004974365234375
	.float -0.00933837890625, 0.386138916015625, 0.627777099609375, -0.004364013671875
	.float -0.00921630859375, 0.378692626953125, 0.63433837890625, -0.003692626953125
	.float -0.009033203125, 0.37127685546875, 0.640838623046875, -0.002960205078125
	.float -0.00885009765625, 0.3638916015625, 0.647216796875, -0.002166748046875
	.float -0.008636474609375, 0.3565673828125, 0.653533935546875, -0.0013427734375
	.float -0.008453369140625, 0.3492431640625, 0.65972900390625, -0.00048828125
	.float -0.008270263671875, 0.34197998046875, 0.66583251953125, 0.000457763671875
	.float -0.008087158203125, 0.33477783203125, 0.671844482421875, 0.001434326171875
	.float -0.00787353515625, 0.327606201171875, 0.677734375, 0.002471923828125
	.float -0.00762939453125, 0.320465087890625, 0.683563232421875, 0.003570556640625
	.float -0.007415771484375, 0.313385009765625, 0.68927001953125, 0.00469970703125
	.float -0.007232666015625, 0.30633544921875, 0.694854736328125, 0.00592041015625
	.float -0.00701904296875, 0.299346923828125, 0.7003173828125, 0.0072021484375
	.float -0.00677490234375, 0.292449951171875, 0.705657958984375, 0.008514404296875
	.float -0.006561279296875, 0.28558349609375, 0.710906982421875, 0.0098876953125
	.float -0.006378173828125, 0.278778076171875, 0.71600341796875, 0.011322021484375
	.float -0.00616455078125, 0.27203369140625, 0.72100830078125, 0.0128173828125
	.float -0.00592041015625, 0.265350341796875, 0.725860595703125, 0.014404296875
	.float -0.005706787109375, 0.25872802734375, 0.7305908203125, 0.01605224609375
	.float -0.005523681640625, 0.252197265625, 0.735198974609375, 0.017791748046875
	.float -0.00531005859375, 0.2457275390625, 0.739654541015625, 0.019561767578125
	.float -0.00506591796875, 0.23931884765625, 0.743988037109375, 0.021392822265625
	.float -0.004852294921875, 0.233001708984375, 0.7481689453125, 0.0233154296875
	.float -0.004669189453125, 0.22674560546875, 0.752197265625, 0.025299072265625
	.float -0.00445556640625, 0.220550537109375, 0.756103515625, 0.027374267578125
	.float -0.0042724609375, 0.214447021484375, 0.759857177734375, 0.029510498046875
	.float -0.004058837890625, 0.20843505859375, 0.76348876953125, 0.03173828125
	.float -0.003875732421875, 0.202484130859375, 0.766937255859375, 0.034027099609375
	.float -0.003692626953125, 0.19659423828125, 0.770233154296875, 0.036407470703125
	.float -0.003509521484375, 0.190826416015625, 0.77337646484375, 0.03887939453125
	.float -0.003326416015625, 0.18511962890625, 0.7763671875, 0.041412353515625
	.float -0.003143310546875, 0.17950439453125, 0.779205322265625, 0.04400634765625
	.float -0.00299072265625, 0.173980712890625, 0.781890869140625, 0.046722412109375
	.float -0.0028076171875, 0.16851806640625, 0.784423828125, 0.04949951171875
	.float -0.002655029296875, 0.163177490234375, 0.7867431640625, 0.0523681640625
	.float -0.002471923828125, 0.15789794921875, 0.7889404296875, 0.055328369140625
	.float -0.0023193359375, 0.1527099609375, 0.790985107421875, 0.058349609375
	.float -0.002197265625, 0.147613525390625, 0.7928466796875, 0.061492919921875
	.float -0.002044677734375, 0.142608642578125, 0.794525146484375, 0.064697265625
	.float -0.001922607421875, 0.1376953125, 0.796051025390625, 0.067962646484375
	.float -0.00177001953125, 0.13287353515625, 0.79742431640625, 0.07135009765625
	.float -0.00164794921875, 0.128143310546875, 0.798614501953125, 0.074798583984375
	.float -0.00152587890625, 0.12347412109375, 0.79962158203125, 0.078369140625
	.float -0.00140380859375, 0.118927001953125, 0.80047607421875, 0.08203125
	.float -0.00128173828125, 0.114471435546875, 0.801177978515625, 0.085784912109375
	.float -0.00115966796875, 0.110107421875, 0.80169677734375, 0.089599609375
	.float -0.00103759765625, 0.105804443359375, 0.802032470703125, 0.093505859375
	.float -0.0009765625, 0.101593017578125, 0.802215576171875, 0.097503662109375
.global lbl_8043B170
lbl_8043B170:
	.incbin "baserom.dol", 0x437270, 0xB90
.global lbl_8043BD00
lbl_8043BD00:
	.ascii "<< RVL_SDK - DSP \trelease build: Nov 30 2006 03:26:46 (0x4199_60831) >>"
	.byte 0x00
	.ascii "DSPInit(): Build Date: %s %s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Nov 30 2006"
	.byte 0x00
	.ascii "03:26:46"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043BD80
lbl_8043BD80:
	.ascii "DSP is booting task: 0x%08X\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__DSP_boot_task()  : Start Vector  : 0x%08X\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__DSP_add_task() : Added task    : 0x%08X\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043BEC0
lbl_8043BEC0:
	.ascii "invalid version number for texture palette"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - THP \trelease build: Nov 30 2006 03:09:42 (0x4199_60831) >>"
	.byte 0x00
	.ascii "<< RVL_SDK - KPAD \trelease build: May 17 2007 15:52:00 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043BF84
lbl_8043BF84:
	.float 9.291449597552132e-41, 3.677077235311536e-40, 6.432184159005202e-40
.global lbl_8043BF90
lbl_8043BF90:
	.ascii "APP ERROR: Not enough IPC arena\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043BFB8
lbl_8043BFB8:
	.ascii "<< RVL_SDK - WPAD \trelease build: May 17 2007 01:52:03 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C004
lbl_8043C004:
	.ascii "No Alloc: Nothing to do!!!\n"
	.byte 0x00
.global lbl_8043C020
lbl_8043C020:
	.ascii "No Free: Nothing to do!!!\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043C03C
lbl_8043C03C:
	.ascii "Deregister allocators because of fatal error.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C070
lbl_8043C070:
	.float -3.890054983710408e-39, 1.7796490496925177e-43, 0.0, 0.0
.global lbl_8043C080
lbl_8043C080:
	.ascii "Check the update of WiFi using channel\n"
	.byte 0x00
.global lbl_8043C0A8
lbl_8043C0A8:
	.ascii "WiFi uses channel = %d\n"
	.byte 0x00
.global lbl_8043C0C0
lbl_8043C0C0:
	.ascii "WPADInit()\n"
	.byte 0x00
.global lbl_8043C0CC
lbl_8043C0CC:
	.ascii " ==>this error means that the firmware is for NDEV %s\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043C104
lbl_8043C104:
	.ascii "2.1 or later"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "connection is opened\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "connection is closed\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "clean up command queue\n"
	.byte 0x00
	.ascii "WARNING: disconnection for device handle not assigned to channel.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C1A8
lbl_8043C1A8:
	.ascii "HID Parser reports: %d\n"
	.byte 0x00
.global lbl_8043C1C0
lbl_8043C1C0:
	.ascii "WPADiRecvCallback(): Unknown channel %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C1EC
lbl_8043C1EC:
	.ascii "WPADSetSamplingCallback()\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043C208
lbl_8043C208:
	.ascii "WPADSetConnectCallback()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C224
lbl_8043C224:
	.ascii "WPADSetExtensionCallback()\n"
	.byte 0x00
.global lbl_8043C240
lbl_8043C240:
	.ascii "WPADSetAutoSamplingBuf()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C25C
lbl_8043C25C:
	.ascii "handle = %d, repid = %02x\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043C278
lbl_8043C278:
	.4byte 0x802ACA04, 0x802ACA10, 0x802ACA1C, 0x802ACA28
	.4byte 0x802ACA34, 0x802ACA40, 0x802ACA4C, 0x802ACA58
	.4byte 0x802ACA64, 0x802ACA70
.global lbl_8043C2A0
lbl_8043C2A0:
	.4byte 0x802AE2D8, 0x802AE6E8, 0x802AEA78, 0x802B1C6C
	.4byte 0x802B1C6C, 0x802B1C6C, 0x802B1C6C, 0x802B1C6C
	.4byte 0x802B1C6C, 0x802B1C6C, 0x802B1C6C, 0x802B1C6C
	.4byte 0x802B1C6C, 0x802B1C6C, 0x802B1C6C, 0x802B1C6C
	.4byte 0x802AEF94, 0x802AF14C, 0x802AF38C, 0x802AFB44
	.4byte 0x802AFDB8, 0x802AFDBC, 0x802B0628, 0x802B0834
	.4byte 0x802B1C6C, 0x802B1C6C, 0x802B1C6C, 0x802B1C6C
	.4byte 0x802B1C6C, 0x802B1090, 0x802B1094, 0x802B1678
.global lbl_8043C320
lbl_8043C320:
	.incbin "baserom.dol", 0x438420, 0x290
.global lbl_8043C5B0
lbl_8043C5B0:
	.ascii "type : %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043C5BC
lbl_8043C5BC:
	.ascii "mode : %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "Received report 20\n"
	.byte 0x00
	.ascii "initialize attachment\n"
	.byte 0x00
	.byte 0x00
	.ascii "already initialized\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "already disconnected\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "read error happens!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "base addr: %08x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "length   : %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "received data is out of range!\n"
	.byte 0x00
	.ascii "Received ack!\n"
	.byte 0x00
	.byte 0x00
	.ascii "ack --> report ID = %02x, error code = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "ack error --> report ID = %d, error code = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "invalid ack!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C700
lbl_8043C700:
	.incbin "baserom.dol", 0x438800, 0x1328
.global lbl_8043DA28
lbl_8043DA28:
	.ascii "USB ERR: "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Library is already initialized. Heap Id = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "iusb size: %d lo: %x hi: %x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Not enough IPC arena\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Not enough heaps\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "_intrBlkCtrlCb returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "_intrBlkCtrlCb: nclean = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__intBlkCtrlCb: got invalid nclean\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Freeing clean[%d] = %x\n"
	.byte 0x00
	.ascii "iosFree(%d, 0x%x) failed: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "cb = %x cbArg = %x\n"
	.byte 0x00
	.ascii "iosAllocAligned(%d, %u) failed: %d\n"
	.byte 0x00
	.ascii "OpenDeviceIds: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/dev/usb/%s/%x/%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "OpenDevice - %s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "OpenDevice returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "OpenDevice\n"
	.byte 0x00
	.ascii "OpenDeviceIdsAsync: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.ascii "CloseDevice\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "CloseDevice returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "CloseDeviceAsync: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "openDevice: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.ascii "getDeviceList: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__IntrBlkMsgInt: Not enough memory\n"
	.byte 0x00
	.ascii "intr/blk ioctl returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "IntBlkMsgInt (async): Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "intrblkmsg: cb = 0x%x cbArg = 0x%x\n"
	.byte 0x00
	.ascii "ctrlmsg: bad data buffer\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Ctrl Msg: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "CtrlMsgInt (async): Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.ascii "ctrlmsgint: cb = 0x%x cbArg = 0x%x\n"
	.byte 0x00
	.ascii "Ctrl Msg async returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GetStrCb returned: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "GetStrCb: buf = 0x%x buflen = %u\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Failed to convert buffer from unicode 2 ascii\n"
	.byte 0x00
	.byte 0x00
	.ascii "calling cb 0x%x with arg 0x%x\n"
	.byte 0x00
	.byte 0x00
	.ascii "Failed __CtrlMsg: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Failed to convert unicode 2 ascii\n"
	.byte 0x00
	.byte 0x00
	.ascii "GetStr - _GetStrCb\n"
	.byte 0x00
	.ascii " GetAsciiStrAsync: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__CtrlMsgInt failed %d\n"
	.byte 0x00
	.ascii "GetDescrCb returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GetDevDescr\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GetDevDescr: Not enough memory\n"
	.byte 0x00
	.ascii "GetDevDescr: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GetDevDescr - _GetDescrCb\n"
	.byte 0x00
	.byte 0x00
	.ascii "GetDevDescrAsync: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "DeviceRemovalNotifyAsync\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid parameters for ISO transfer request\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "IUSB_IsoMsgAsync: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Open(%s) failed\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E048
lbl_8043E048:
	.float 6.067207476497916e-36, -4.388300683073444e-19, 2.5880156636097823e-26, 1.0747831703211093e-38
	.float 2.461262763255845e-38, 1.5595988848969782e-33, -6.845234930089163e-36, 1.5595988848969782e-33
	.float -6.892255421586868e-36, 1.5595988848969782e-33, -6.939274478154946e-36, 1.5595988848969782e-33
	.float -6.986294252187837e-36, 1.5595988848969782e-33, -7.033314026220729e-36, 1.5595988848969782e-33
	.float -7.080348149549895e-36, 1.5595988848969782e-33, -7.12735716161058e-36, 1.5595988848969782e-33
	.float -7.174387697615678e-36, 1.5595988848969782e-33, -7.221393122352295e-36, 1.5595988848969782e-33
	.float -7.268412896385186e-36, 1.5595988848969782e-33, -7.550535127906604e-36, 1.558846568512452e-33
	.float -7.597565663911701e-36, 1.558846568512452e-33, -7.64457324104276e-36, 1.558846568512452e-33
	.float -8.302848642573613e-36, 1.558846568512452e-33, -8.349870569000946e-36, 1.558846568512452e-33
	.float -8.396893930357906e-36, 1.558846568512452e-33, -8.443918726644493e-36, 1.558846568512452e-33
	.float -8.49094137053664e-36, 1.558846568512452e-33, -8.537961144569531e-36, 1.558846568512452e-33
	.float -8.584980918602423e-36, 1.558846568512452e-33, -8.632000692635314e-36, 1.558846568512452e-33
	.float -8.914119336832663e-36, 1.558846568512452e-33, -8.961139110865555e-36, 1.558846568512452e-33
	.float -9.008158884898446e-36, 1.558846568512452e-33, -2.0
.global lbl_8043E124
lbl_8043E124:
	.ascii "App_MEMalloc\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E134
lbl_8043E134:
	.ascii "App_MEMfree\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E144
lbl_8043E144:
	.ascii "SyncFlushCallback() : %d, Sync: %d\n"
	.byte 0x00
.global lbl_8043E168
lbl_8043E168:
	.ascii "DeleteFlushCallback() : %d, Delete: %d\n"
	.byte 0x00
.global lbl_8043E190
lbl_8043E190:
	.ascii "ShutFlushCallback() : %d, Shutdown: %d\n"
	.byte 0x00
.global lbl_8043E1B8
lbl_8043E1B8:
	.ascii "%d devices is stored into SC.\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E1D8
lbl_8043E1D8:
	.ascii "Pairing Done\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Nintendo RVL-CNT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "write stored link key\n"
	.byte 0x00
	.byte 0x00
	.ascii "addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "key  : %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.ascii "Cancel searching because 4 connections exist.\n"
	.byte 0x00
	.byte 0x00
	.ascii "WARNING: Illigal status\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E2E4
lbl_8043E2E4:
	.incbin "baserom.dol", 0x43A3E4, 0x100
.global lbl_8043E3E4
lbl_8043E3E4:
	.ascii "InitCore\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E3F0
lbl_8043E3F0:
	.ascii "BTA_Init() is started\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E408
lbl_8043E408:
	.ascii "BTA_Init() is done\n"
	.byte 0x00
.global lbl_8043E41C
lbl_8043E41C:
	.ascii "WUDShutdown()\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E42C
lbl_8043E42C:
	.ascii "WUDSetSyncDeviceCallback\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDSetClearDeviceCallback\n"
	.byte 0x00
	.byte 0x00
	.ascii "WUDStartSyncDevice()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E47C
lbl_8043E47C:
	.ascii "WUDStartSyncSimple()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDCancelSyncDevice()\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E4AC
lbl_8043E4AC:
	.ascii "WUDStopSyncSimple()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDStartClearDevice()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E4E0
lbl_8043E4E0:
	.ascii "WUDSetDisableChannel()\n"
	.byte 0x00
.global lbl_8043E4F8
lbl_8043E4F8:
	.ascii "BTM_SetAfhChannels() : %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E514
lbl_8043E514:
	.ascii "WUDSetHidRecvCallback()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E530
lbl_8043E530:
	.ascii "WUDSetHidConnCallback()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E54C
lbl_8043E54C:
	.incbin "baserom.dol", 0x43A64C, 0xBC
.global lbl_8043E608
lbl_8043E608:
	.incbin "baserom.dol", 0x43A708, 0x5C
.global lbl_8043E664
lbl_8043E664:
	.ascii "start WUDiInitSub()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDiAutoSync()\n"
	.byte 0x00
	.ascii "WUDiCancelSync()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDiDeleteAllLinkKeys()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DmAddDevice(): %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HhAddDev()\n"
	.byte 0x00
	.ascii "WUDiRemoveDevice : \n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " handle : %d,  addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "remove device info from database.\n"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HhRemoveDev()\n"
	.byte 0x00
	.byte 0x00
	.ascii " handle : %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DmRemoveDevice(): %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E79C
lbl_8043E79C:
	.ascii "new entry index is %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E7B4
lbl_8043E7B4:
	.ascii "WARNING: USB_CLOSE_FAILURE!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDSecurityCallback: "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_ENABLE_EVT\n"
	.byte 0x00
	.ascii "host : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DISABLE_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_PIN_REQ_EVT\n"
	.byte 0x00
	.ascii "BTA_DM_AUTH_CMPL_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "  addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.ascii "  key  : %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "  result = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_AUTHORIZE_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_LINK_UP_EVT\n"
	.byte 0x00
	.ascii "   addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s --> %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "not paired"
	.byte 0x00
	.byte 0x00
	.ascii "4 links exist"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_LINK_DOWN_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "result: %d\n"
	.byte 0x00
	.ascii "this device in not paired\n"
	.byte 0x00
	.byte 0x00
	.ascii "WARNING: link num count is reset.\n"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_SIG_STRENGTH_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_BUSY_LEVEL_EVT\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043EA30
lbl_8043EA30:
	.incbin "baserom.dol", 0x43AB30, 0x1A0
.global lbl_8043EBD0
lbl_8043EBD0:
	.ascii "WUDDeviceStatusCallback\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043EBEC
lbl_8043EBEC:
	.ascii "---- WARNING: USB FATAL ERROR! ----\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_CB_EVT_RETURN_LINK_KEYS\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BD_ADDR:  %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "LINKKEY: %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "this device is not stored in NAND\n"
	.byte 0x00
	.byte 0x00
	.ascii "   LAST: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.ascii "BTM_CB_EVT_READ_STORED_LINK_KEYS\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "  status: %d  max_keys: %d  num_keys: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_CB_EVT_WRITE_STORED_LINK_KEYS\n"
	.byte 0x00
	.byte 0x00
	.ascii "  status: %d  num_keys: %d\n"
	.byte 0x00
	.ascii "BTM_CB_EVT_DELETE_STORED_LINK_KEYS\n"
	.byte 0x00
	.ascii "WARNING: no entry is deleted\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Unknown event\n"
	.byte 0x00
	.byte 0x00
	.ascii "WUDPowerManagerCallback\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "hci_status = %d"
	.byte 0x00
	.ascii " addr = %02x:%02x:%02x:%02x:%02x:%02x,  status = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "_WUDEnableTestMode\n"
	.byte 0x00
	.ascii "_WUDStartSyncDevice()\n"
	.byte 0x00
	.byte 0x00
	.ascii "_WUDDeleteStoreDevice()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "dev number = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043EEB0
lbl_8043EEB0:
	.ascii "BTA_HH_ENABLE_EVT\n"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_DISABLE_EVT\n"
	.byte 0x00
	.ascii "BTA_HH_OPEN_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "handle: %d, addr: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "error code: %d\n"
	.byte 0x00
	.ascii "BTA_HH_CLOSE_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "device handle : %d   status = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_SET_RPT_EVT\n"
	.byte 0x00
	.ascii "BTA_HH_GET_RPT_EVT\n"
	.byte 0x00
	.ascii "BTA_HH_SET_PROTO_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_PROTO_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_SET_IDLE_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_IDLE_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_DCSP_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_ADD_DEV_EVT\n"
	.byte 0x00
	.ascii "result: %d, handle: %d, addr: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_RMV_DEV_EVT\n"
	.byte 0x00
	.ascii "BTA_HH_VS_UNPLUG_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WARNING: link num count is modified.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F0B0
lbl_8043F0B0:
	.4byte 0x802B907C, 0x802B9098, 0x802B90A8, 0x802B9294
	.4byte 0x802B9370, 0x802B9360, 0x802B9390, 0x802B9380
	.4byte 0x802B93B0, 0x802B93A0, 0x802B93C0, 0x802B93D0
	.4byte 0x802B9420, 0x802B9460, 0x802B94FC, 0x802B9470
.global lbl_8043F0F0
lbl_8043F0F0:
	.ascii "Invalid app_id [%d]\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F108
lbl_8043F108:
	.ascii "bta_hh_co_open()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F11C
lbl_8043F11C:
	.ascii "bta_hh_co_close()\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043F130
lbl_8043F130:
	.ascii "getbuf: Size is zero"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F148
lbl_8043F148:
	.ascii "getbuf: Size is too big"
	.byte 0x00
	.ascii "Free - Buf Corrupted"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Freeing Linked Buf"
	.byte 0x00
	.byte 0x00
	.ascii "Bad Buf QId"
	.byte 0x00
	.ascii "Sending to unknown dest"
	.byte 0x00
	.ascii "Send - Buffer corrupted"
	.byte 0x00
	.ascii "Send - buffer linked"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F1E0
lbl_8043F1E0:
	.ascii "Enqueue - Buffer corrupted"
	.byte 0x00
	.byte 0x00
.global lbl_8043F1FC
lbl_8043F1FC:
	.ascii "Eneueue - buf already linked"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F21C
lbl_8043F21C:
	.ascii "Eneueue head - buf already linked"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GKI_get_buf_start:: bad addr"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F260
lbl_8043F260:
	.ascii "Deleting bad pool"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCIS: Unable to allocate buffer for incoming HCI message."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F2B4
lbl_8043F2B4:
	.ascii "HCIS: Invalid length for incoming HCI message."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F2E8
lbl_8043F2E8:
	.ascii "HCISU_LOG: uusb_ReadIntrDataCB called\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_ReadIntrDataCB: usb_state != UUSB_PPC_OPENED_ST\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: ************\n* uusb_ReadIntrDataCB(): usb_state != UUSB_PPC_OPENED_ST - stop reading\n************\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_ReadIntrDataCB(): Got Error code %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: uusb_ReadIntrDataCB: len(%d) offset (%d) cp_len(%d) data = "
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_readBulkDataCB: usb_state != UUSB_PPC_OPENED_ST\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: ****\n* uusb_readBulkDataCB(): usb_state != UUSB_PPC_OPENED_ST - stop reading\n****\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_ReadBulkDataCB(): Got Error code %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: uusb_ReadBulkDataCB: len(%d) offset(%d) cp_len(%d) data = "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: ****\n* uusb_issue_bulk_read(): unable to get buffer - try again\n****\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_issue_bulk_read: IUSB_ReadBlkMsgAsync failed with err = %d\n"
	.byte 0x00
	.ascii "HCISU_ERR: ****\n* uusb_issue_bulk_read: IUSB_ReadBlkMsgAsync failed with err = %d\n****\n"
	.byte 0x00
	.ascii "HCISU_ERR: ****\n* uusb_issue_intr_read(): unable to get buffer - try again\n****\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: IUSB_ReadIntrMsgAsync failed with err = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: ****\n* uusb_issue_intr_read(): IUSB_ReadIntrMsgAsync failed with err = %d\n****\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: uusb_WriteCtrlDataCB called with err = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_WriteCtrlDataCB(): Got error (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_WriteCtrlDataCB(): error - unable to write data packet\n"
	.byte 0x00
	.ascii "HCISU_LOG: uusb_WriteBulkDataCB called with err = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_WriteBulkDataCB(): Got error (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_WriteBulkDataCB(): error - unable to write data packet\n"
	.byte 0x00
.global lbl_8043F8B8
lbl_8043F8B8:
	.ascii "HCISU_ERR: ERROR from IUSB_OpenDeviceIds (%d) : Device (vendor 0x%x product 0x%x) not found\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F918
lbl_8043F918:
	.ascii "HCISU_ERR: No suitable Bluetooth Device was found. Exiting...\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Register: ERROR - failed IPCCltInit\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Register: ERROR - failed IUSB_OpenLib\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Register: Error returned from get_devId()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Register: uusb_get_dev_id returned with usb.devId = %d\n"
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Register: Unable to create memory pools\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Register: hci_cmd_usb_pool_id (%d) hci_acl_usb_pool_id(%d)\n"
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Open: USB is not in registered state, unable to open\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Open: USB Buffer Pool's Invalid\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Open: hci_cmd_usb_pool_id = %d\n"
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Open: hci_acl_usb_pool_id = %d\n"
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Write: usb_state != UUSB_PPC_OPENED_ST\n"
	.byte 0x00
	.ascii "HCISU_LOG: buffer size = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Write: ep(%d) len(%d) data = "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Write: Unable to get buffer from hci_cmd_usb_pool\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_WRITE(): Ctrl Queue count =  %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: *************************************************************************************\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteCtrlMsgAsync error...  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteCtrlMsgAsync error... IOS_ERROR_FAIL_ALLOC  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteCtrlMsgAsync error... IOS_ERROR_QFULL  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Write: Unable to get buffer from hci_acl_usb_pool\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Write - writing mem data\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_WRITE(): Bulk Queue count =  %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteBlkMsgAsync error...  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteBlkMsgAsync error... IOS_ERROR_FAIL_ALLOC  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteBlkMsgAsync error... IOS_ERROR_QFULL  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440030
lbl_80440030:
	.ascii "BTA got event 0x%x"
	.byte 0x00
	.byte 0x00
.global lbl_80440044
lbl_80440044:
	.ascii "BTA got unregistered event id %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440068
lbl_80440068:
	.ascii " bta_dm_disable_timer_cback  "
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440088
lbl_80440088:
	.ascii " bta_dm_search_timer_cback  "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804400A8
lbl_804400A8:
	.ascii " bta_dm_pin_cback() -> Failed to start Remote Name Request  "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804400E8
lbl_804400E8:
	.ascii " timer stopped  "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804400FC
lbl_804400FC:
	.ascii "bta_dm_l2cap_server_compress_cback, BTA ID %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044012C
lbl_8044012C:
	.ascii "bta_dm_compress_cback open app_id %d, BTA id %d, state %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440168
lbl_80440168:
	.ascii "bta_dm_compress_cback close app_id %d, BTA id %d, state %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804401A8
lbl_804401A8:
	.ascii "bta_dm_act no more connected service cbs"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804401D4
lbl_804401D4:
	.ascii "bta_dm_act no more pm timers"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804401F8
lbl_804401F8:
	.ascii "bta_hh_sdp_cback: p_cb: %d result 0x%02x,                             attr_mask 0x%02x"
	.byte 0x00
	.byte 0x00
.global lbl_80440250
lbl_80440250:
	.ascii "bta_hh_start_sdp:: skip SDP for known devices"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440280
lbl_80440280:
	.ascii "bta_hh_start_sdp:  HID_HostGetSDPRecord failed:                 Status 0x%2X"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804402D0
lbl_804402D0:
	.ascii "bta_hh_sdp_cmpl:  status 0x%2X"
	.byte 0x00
	.byte 0x00
.global lbl_804402F0
lbl_804402F0:
	.ascii "bta_hh_sdp_cmpl:  HID_HostOpenDev failed:                     Status 0x%2X"
	.byte 0x00
	.byte 0x00
.global lbl_8044033C
lbl_8044033C:
	.ascii "bta_hh_open_act:  Device[%d] connected"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_RPT_EVT"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_SET_RPT_EVT"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_PROTO_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_SET_PROTO_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_IDLE_EVT"
	.byte 0x00
	.ascii "BTA_HH_SET_IDLE_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_OPEN_EVT"
	.byte 0x00
	.ascii "Unknown event"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HANDSHAKE received for: event = %s data= %d"
	.byte 0x00
	.ascii "unknown transaction type"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440450
lbl_80440450:
	.4byte 0x802C1C24, 0x802C1C24, 0x802C1BB8, 0x802C1C24
	.4byte 0x802C1AC8, 0x802C1B48, 0x802C1AC8, 0x802C1B48
	.4byte 0x802C1AC8, 0x802C1B48
.global lbl_80440478
lbl_80440478:
	.incbin "baserom.dol", 0x43C578, 0x84
.global lbl_804404FC
lbl_804404FC:
	.4byte 0x802C1DE8, 0x802C1DE8, 0x802C1DE0, 0x802C1DE8
	.4byte 0x802C1DB0, 0x802C1DB8, 0x802C1DC0, 0x802C1DC8
	.4byte 0x802C1DD0, 0x802C1DD8
.global lbl_80440524
lbl_80440524:
	.float -4.051170675944618e-39, -4.051170675944618e-39, -4.0511594655569035e-39, -4.051170675944618e-39
	.float -4.051092203230616e-39, -4.0511034136183305e-39, -4.051114624006045e-39, -4.0511258343937597e-39
	.float -4.051137044781474e-39, -4.051148255169189e-39, 0.0
.global lbl_80440550
lbl_80440550:
	.ascii "invalid command"
	.byte 0x00
.global lbl_80440560
lbl_80440560:
	.ascii "HID_HostWriteDev Error %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044057C
lbl_8044057C:
	.ascii "bta_hh_write_dev_act:: cmd type = %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_OPEN"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_CLOSE"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_RETRYING"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_INTR_DATA"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_INTR_DATC"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_CTRL_DATA"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_CTRL_DATC"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_HANDSHAKE"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_VC_UNPLUG"
	.byte 0x00
	.byte 0x00
	.ascii "Unknown HID event"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "bta_hh_cback::HID_event [%s]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804406A8
lbl_804406A8:
	.4byte 0x802C25A0, 0x802C25A8, 0x802C270C, 0x802C25B0
	.4byte 0x802C25C8, 0x802C25C0, 0x802C25C8, 0x802C25B8
	.4byte 0x802C25D4
.global lbl_804406CC
lbl_804406CC:
	.4byte 0x802C2528, 0x802C2530, 0x802C2538, 0x802C2540
	.4byte 0x802C2548, 0x802C2550, 0x802C2558, 0x802C2560
	.4byte 0x802C2568
.global lbl_804406F0
lbl_804406F0:
	.ascii "No resource to send HID host Connect request."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440720
lbl_80440720:
	.ascii "wrong device handle: [%d]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_NULL_ST"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_IDLE_ST"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_W4_CONN_ST"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_CONN_ST"
	.byte 0x00
	.byte 0x00
	.ascii "unknown HID Host state"
	.byte 0x00
	.byte 0x00
	.ascii "bta_hh_sm_execute: State 0x%02x [%s], Event [%s]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HH State Change: [%s] -> [%s] after Event [%s]"
	.byte 0x00
	.byte 0x00
.global lbl_804407FC
lbl_804407FC:
	.ascii "bta_hh_hdl_event:: handle = %d dev_cb[%d] "
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_DISABLE_EVT"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_ENABLE_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_OPEN_EVT"
	.byte 0x00
	.ascii "BTA_HH_API_CLOSE_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_INT_OPEN_EVT"
	.byte 0x00
	.ascii "BTA_HH_INT_CLOSE_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_INT_HANDSK_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_INT_DATA_EVT"
	.byte 0x00
	.ascii "BTA_HH_INT_CTRL_DATA"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_WRITE_DEV_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_SDP_CMPL_EVT"
	.byte 0x00
	.ascii "BTA_HH_DISC_CMPL_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_MAINT_DEV_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_GET_DSCP_EVT"
	.byte 0x00
	.ascii "BTA_HH_OPEN_CMPL_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_GET_ACL_Q_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "unknown HID Host event code"
	.byte 0x00
.global lbl_804409C0
lbl_804409C0:
	.4byte 0x802C3008, 0x802C3010, 0x802C3018, 0x802C3020
	.4byte 0x802C3030, 0x802C3038, 0x802C3028, 0x802C3048
	.4byte 0x802C3040, 0x802C3060, 0x802C3058, 0x802C3068
	.4byte 0x802C3000, 0x802C2FF8, 0x802C3070, 0x802C3050
.global lbl_80440A00
lbl_80440A00:
	.ascii "found kdev_cb[%d] hid_handle = %d "
	.byte 0x00
	.byte 0x00
	.ascii "in_use ? [%d] kdev[%d].hid_handle = %d state = [%d]"
	.byte 0x00
	.ascii "bta_hh_find_cb:: index = %d while max = %d"
	.byte 0x00
	.byte 0x00
.global lbl_80440A84
lbl_80440A84:
	.ascii "subclass = 0x%2x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "bta_hh_parse_keybd_rpt:  (report=%p, report_len=%d) called"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Alt key pressed"
	.byte 0x00
	.ascii "Alt key not pressed"
	.byte 0x00
	.ascii "this_char = %02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HhParseKeybdRpt:  Cannot interpret scan code                 0x%02x"
	.byte 0x00
	.ascii "bta_hh_parse_mice_rpt:  bta_keybd_rpt_rcvd(report=%p,                 report_len=%d) called"
	.byte 0x00
	.ascii "mice button: 0x%2x"
	.byte 0x00
	.byte 0x00
	.ascii "mice move: x = %d y = %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "bta_hh_trace_dev_db:: Device DB list********************"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "kdev[%d] in_use[%d]  handle[%d] "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\t\t\t attr_mask[%04x] state [%d] sub_class[%02x] index = %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "*********************************************************"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440CC0
lbl_80440CC0:
	.ascii "Duplicate btm_acl_created: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.byte 0x00
.global lbl_80440D00
lbl_80440D00:
	.ascii "SetPacketType Mask -> 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440D20
lbl_80440D20:
	.ascii "Role change request declined since the previous request for this device is not completed "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetLinkPolicy switch not supported (settings: 0x%04x)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetLinkPolicy hold not supported (settings: 0x%04x)"
	.byte 0x00
	.ascii "BTM_SetLinkPolicy sniff not supported (settings: 0x%04x)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetLinkPolicy park not supported (settings: 0x%04x)"
	.byte 0x00
	.ascii "BTM_ReadLinkPolicy: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
.global lbl_80440EA0
lbl_80440EA0:
	.ascii "BTM_ReadClockOffset: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440EDC
lbl_80440EDC:
	.ascii "Role Switch Event: new_role 0x%02x, HCI Status 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetQoS: BdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440F44
lbl_80440F44:
	.ascii "BTM: p_flow->delay_variation: 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440F6C
lbl_80440F6C:
	.ascii "BTM_ReadRSSI: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440FA0
lbl_80440FA0:
	.ascii "BTM_ReadLinkQuality: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440FDC
lbl_80440FDC:
	.ascii "BTM RSSI Complete: rssi %d, hci status 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044100C
lbl_8044100C:
	.ascii "BTM Link Quality Complete: Link Quality %d, hci status 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "btm BEFORE SCO setting to 1 slot; hci hdl 0x%x"
	.byte 0x00
	.byte 0x00
	.ascii "btm last SCO removed; unsniffing hci hdl 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "btm last SCO removed; hci hdl 0x%x, types 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804410E0
lbl_804410E0:
	.ascii "BTM_SetAfhChannels first: %d (%d) last: %d (%d)"
	.byte 0x00
.global lbl_80441110
lbl_80441110:
	.ascii "btm_reset_complete"
	.byte 0x00
	.byte 0x00
	.ascii "Local supported ACL packet types: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Local supported SCO packet types: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044117C
lbl_8044117C:
	.ascii "BTM: BTM_VendorSpecificCommand: Opcode: 0x%04X, ParamLen: %i."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804411BC
lbl_804411BC:
	.ascii "BTM: Unable to send vendor specific command (controller is busy)."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441200
lbl_80441200:
	.ascii "BTM Event: Received a vendor specific event from controller"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441240
lbl_80441240:
	.ascii "BTM: BTM_WritePageTimeout: Timeout: %d."
	.byte 0x00
	.ascii "BTM: BTM_WriteVoiceSettings: Settings: 0x%04x."
	.byte 0x00
	.byte 0x00
	.ascii "BTM: BTM_EnableTestMode"
	.byte 0x00
.global lbl_804412B0
lbl_804412B0:
	.ascii "BTM: BTM_ReadStoredLinkKey: Read_All: %s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804412DC
lbl_804412DC:
	.ascii "BTM: BTM_WriteStoredLinkKey: num_keys: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441308
lbl_80441308:
	.ascii "BTM: BTM_DeleteStoredLinkKey: delete_all_flag: %s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441340
lbl_80441340:
	.ascii "BTM_SetDiscoverability: mode %d [NonDisc-0, Lim-1, Gen-2], window 0x%04x, interval 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044139C
lbl_8044139C:
	.ascii "BTM_SetConnectability: mode %d [NonConn-0, Conn-1], window 0x%04x, interval 0x%04x"
	.byte 0x00
	.byte 0x00
.global lbl_804413F0
lbl_804413F0:
	.ascii "BTM_CancelInquiry called"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044140C
lbl_8044140C:
	.ascii "BTM_StartInquiry: mode: %d, dur: %d, rsps: %d, flt: %d"
	.byte 0x00
	.byte 0x00
.global lbl_80441444
lbl_80441444:
	.ascii "BTM_ReadRemoteDeviceName: bd addr [%02x%02x%02x%02x%02x%02x]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441484
lbl_80441484:
	.ascii "BTM_CancelRemoteDeviceName()"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804414A4
lbl_804414A4:
	.ascii "BTM_InqDbRead: bd addr [%02x%02x%02x%02x%02x%02x]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804414D8
lbl_804414D8:
	.ascii "BTM Warning: Set Event Filter Failed (HCI returned 0x%x)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441514
lbl_80441514:
	.ascii "BTM Inq Compl Callback: status 0x%02x, num results %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441550
lbl_80441550:
	.ascii "btm mode change AFTER unsniffing; hci hdl 0x%x, types 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441590
lbl_80441590:
	.ascii "btm_esco_conn_rsp -> No Resources"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "TCS accept SCO: Packet Types 0x%04x"
	.byte 0x00
	.ascii "BTM_CreateSco -> (e)SCO Link for ACL handle 0x%04x, Desired Type %d"
	.byte 0x00
	.ascii "      txbw 0x%x, rxbw 0x%x, lat 0x%x, voice 0x%x, retrans 0x%02x, pkt 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "btm_sco_chk_pend_unpark -> (e)SCO Link for ACL handle 0x%04x, Desired Type %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804416BC
lbl_804416BC:
	.ascii "btm_sco_conn_req: No one wants this SCO connection; rejecting it"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetEScoMode -> mode %d"
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetEScoMode -> mode SCO (eSCO not supported)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "    txbw 0x%08x, rxbw 0x%08x, max_lat 0x%04x, voice 0x%04x, pkt 0x%04x, rtx effort 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_ReadEScoLinkParms -> sco_inx 0x%04x"
	.byte 0x00
	.ascii "BTM_ChangeEScoLinkParms -> SCO Link for handle 0x%04x, pkt 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_ChangeEScoLinkParms -> eSCO Link for handle 0x%04x"
	.byte 0x00
	.byte 0x00
.global lbl_80441854
lbl_80441854:
	.ascii "btm_esco_proc_conn_chg -> handle 0x%04x, status 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441890
lbl_80441890:
	.ascii "BTM_Sec: application registered"
	.byte 0x00
	.ascii "BTM_SetSecurityMode: mode:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetSecurityMode: Authen Enable -> FALSE"
	.byte 0x00
	.ascii "BTM_SetSecurityMode: Authen Enable -> TRUE"
	.byte 0x00
	.byte 0x00
.global lbl_80441928
lbl_80441928:
	.ascii "BTM_SetPinType: pin type %d [variable-0, fixed-1], code %s, length %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SEC_REG[%d]: id %d, is_orig %d, psm 0x%04x, proto_id %d, chan_id %d"
	.byte 0x00
	.ascii "               : sec: 0x%x, service name [%s] (up to %d chars saved)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SEC_REG: Out of Service Records (%d)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441A30
lbl_80441A30:
	.ascii "Security Manager: Attempting Authorization of Unknown Device Address [%02x%02x%02x%02x%02x%02x]"
	.byte 0x00
.global lbl_80441A90
lbl_80441A90:
	.ascii "Security Manager: authorized status:%d State:%d"
	.byte 0x00
	.ascii "BTM_SecBond BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SecBond: Illegal Pin len:%d"
	.byte 0x00
	.ascii "BTM_SecBond: no device block"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SecBond -> Already Paired"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SecBond: Authen Enable -> TRUE"
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SecBond: no buffer"
	.byte 0x00
	.byte 0x00
.global lbl_80441B8C
lbl_80441B8C:
	.ascii "btm_restore_mode: Authen Enable -> %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: BTM_SetEncryption not connected"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: BTM_SetEncryption already encrypted"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: BTM_SetEncryption busy"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: BTM_SetEncryption Handle:%d State:%d Flags:0x%x Required:0x%x"
	.byte 0x00
	.ascii "Security Manager: l2cap_access_req PSM:%d no resources"
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: l2cap_access_req PSM:%d no application registerd"
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: l2cap_access_req PSM:%d postponed for multiplexer"
	.byte 0x00
	.ascii "Security Manager: l2cap_access_req PSM:%d Handle:%d State:%d Flags:0x%x Required:0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: trusted:0x%04x%04x Flags:0x%x"
	.byte 0x00
.global lbl_80441DE8
lbl_80441DE8:
	.ascii "Security Manager: MX service not found PSM:%d Proto:%d SCN:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441E28
lbl_80441E28:
	.ascii "Security Manager: connect request from not paired device"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441E64
lbl_80441E64:
	.ascii "Security Manager: rmt_name_complete status:%d State:%d"
	.byte 0x00
	.byte 0x00
.global lbl_80441E9C
lbl_80441E9C:
	.ascii "Security Manager: auth_complete status:%d State:%d"
	.byte 0x00
	.byte 0x00
.global lbl_80441ED0
lbl_80441ED0:
	.ascii "Security Manager: mkey comp status:%d State:%d"
	.byte 0x00
	.byte 0x00
.global lbl_80441F00
lbl_80441F00:
	.ascii "Security Manager: encrypt_change status:%d State:%d"
	.byte 0x00
.global lbl_80441F34
lbl_80441F34:
	.ascii "Security Manager: btm_sec_connected handle:%d status:%d enc_mode:%d"
	.byte 0x00
.global lbl_80441F78
lbl_80441F78:
	.ascii "btm_sec_link_key_notification()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.byte 0x00
.global lbl_80441FBC
lbl_80441FBC:
	.ascii "                                TYPE: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441FE8
lbl_80441FE8:
	.ascii "btm_sec_link_key_request()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.byte 0x00
	.byte 0x00
.global lbl_80442028
lbl_80442028:
	.ascii "btm_sec_pin_code_request_timeout()"
	.byte 0x00
	.byte 0x00
	.ascii "btm_sec_pin_code_request()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.byte 0x00
	.byte 0x00
	.ascii "btm_sec_pin_code_request bonding sending reply"
	.byte 0x00
	.byte 0x00
	.ascii "btm_sec_pin_code_request: Authen Enable -> %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "btm_sec_pin_code_request(): Pairing disabled:%d; PIN callback:%x, Dev Rec:%x!"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "btm_sec_execute_procedure: Required:0x%x Flags:0x%x State:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no LCB for L2CA_conn_req"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: Start get name"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: Start authentication"
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: Start encryption"
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: Start authorization"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: trusted:0x%04x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: access granted"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442284
lbl_80442284:
	.ascii "btm_sec_collision_timeout()"
	.byte 0x00
.global lbl_804422A0
lbl_804422A0:
	.ascii "Ctlr H/w error event"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804422B8
lbl_804422B8:
	.ascii "Event mismatch opcode=%X cmd opcode=%X"
	.byte 0x00
	.byte 0x00
.global lbl_804422E0
lbl_804422E0:
	.ascii "Cmd timeout; no cmd in queue"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442300
lbl_80442300:
	.ascii "BTU HCI command timeout - cmd opcode = 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442330
lbl_80442330:
	.ascii "WARNING: GAP Conn Indication for Unexpected Bd Addr...Disconnecting"
	.byte 0x00
.global lbl_80442374
lbl_80442374:
	.ascii "GAP_CONN - Rcvd L2CAP conn ind, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804423A0
lbl_804423A0:
	.ascii "GAP_CONN - Rcvd L2CAP disc, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804423C8
lbl_804423C8:
	.ascii "GAP_CONN - Rcvd L2CAP Is Congested (%d), CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442400
lbl_80442400:
	.ascii "   GAP Inquiry Complete Event (Status 0x%04x, Result(s) %d)"
	.byte 0x00
	.ascii "   GAP Discovery Complete Event(SDP Result: 0x%04x)"
	.byte 0x00
	.ascii "   GAP Discovery Successfully Completed"
	.byte 0x00
	.ascii "   GAP Remote Name Complete Event (status 0x%04x)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804424CC
lbl_804424CC:
	.incbin "baserom.dol", 0x43E5CC, 0xAC
.global lbl_80442578
lbl_80442578:
	.ascii "   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x, Name [%s])"
	.byte 0x00
.global lbl_804425BC
lbl_804425BC:
	.ascii "   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804425F8
lbl_804425F8:
	.4byte 0x802CFB50, 0x802CFB58, 0x802CFB60, 0x802CFB88
	.4byte 0x802CFB68, 0x802CFB68, 0x802CFB70, 0x802CFB78
	.4byte 0x802CFB80
.global lbl_8044261C
lbl_8044261C:
	.4byte 0x802CFAB8, 0x802CFAC0, 0x802CFAC8, 0x802CFAF0
	.4byte 0x802CFAD0, 0x802CFAD0, 0x802CFAD8, 0x802CFAE0
	.4byte 0x802CFAE8
.global lbl_80442640
lbl_80442640:
	.ascii "   GAP: FindAddrByName Inq Cmpl Evt (Status 0x%04x, Result(s) %d)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442684
lbl_80442684:
	.4byte 0x802CFD04, 0x802CFD0C, 0x802CFD14, 0x802CFD3C
	.4byte 0x802CFD1C, 0x802CFD1C, 0x802CFD24, 0x802CFD2C
	.4byte 0x802CFD34
.global lbl_804426A8
lbl_804426A8:
	.4byte 0x802CFC94, 0x802CFC9C, 0x802CFCA4, 0x802CFCCC
	.4byte 0x802CFCAC, 0x802CFCAC, 0x802CFCB4, 0x802CFCBC
	.4byte 0x802CFCC4
.global lbl_804426CC
lbl_804426CC:
	.4byte 0x802CFDA8, 0x802CFDB0, 0x802CFDB8, 0x802CFDE0
	.4byte 0x802CFDC0, 0x802CFDC0, 0x802CFDC8, 0x802CFDD0
	.4byte 0x802CFDD8
.global lbl_804426F0
lbl_804426F0:
	.ascii "HID - Originate started"
	.byte 0x00
.global lbl_80442708
lbl_80442708:
	.ascii "HID - Originate failed"
	.byte 0x00
	.byte 0x00
.global lbl_80442720
lbl_80442720:
	.ascii "hidd_proc_repage_timeout"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442740
lbl_80442740:
	.ascii "HID_ERR_NOT_REGISTERED"
	.byte 0x00
	.byte 0x00
	.ascii "HID_ERR_INVALID_PARAM"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID_ERR_NO_CONNECTION dev_handle %d"
	.byte 0x00
	.ascii "Security Registration 1 failed"
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration 2 failed"
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration 3 failed"
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration 4 failed"
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration 5 failed"
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration 6 failed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442858
lbl_80442858:
	.ascii "HID Control Registration failed"
	.byte 0x00
.global lbl_80442878
lbl_80442878:
	.ascii "HID Interrupt Registration failed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044289C
lbl_8044289C:
	.ascii "HID - disconnect"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID - Rcvd L2CAP conn ind, PSM: 0x%04x  CID 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID - Rcvd INTR L2CAP conn ind, but no CTL channel"
	.byte 0x00
	.byte 0x00
	.ascii "HID - Rcvd INTR L2CAP conn ind, wrong state: %d"
	.byte 0x00
	.ascii "HID - Rcvd CTL L2CAP conn ind, wrong state: %d"
	.byte 0x00
	.byte 0x00
	.ascii "HID - Rcvd L2CAP conn ind, sent config req, PSM: 0x%04x  CID 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804429BC
lbl_804429BC:
	.ascii "HID - Originate failed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID - Originator security pass."
	.byte 0x00
	.ascii "HID - INTR Originate failed"
	.byte 0x00
	.ascii "HID - Rcvd unexpected conn cnf, CID 0x%x "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID - got CTRL conn cnf, sent cfg req, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442A74
lbl_80442A74:
	.ascii "HID - Rcvd L2CAP cfg ind, unknown CID: 0x%x"
	.byte 0x00
.global lbl_80442AA0
lbl_80442AA0:
	.ascii "HID - Rcvd cfg ind, sent cfg cfm, CID: 0x%x"
	.byte 0x00
	.ascii "HID - Rcvd cfg cfm, CID: 0x%x  Result: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442AF8
lbl_80442AF8:
	.ascii "HID - Rcvd L2CAP disc, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442B24
lbl_80442B24:
	.ascii "HID - Rcvd L2CAP disc, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442B48
lbl_80442B48:
	.ascii "HID - Rcvd L2CAP disc cfm, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442B78
lbl_80442B78:
	.ascii "HID - Rcvd L2CAP disc cfm, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442BA0
lbl_80442BA0:
	.ascii "HID - Rcvd L2CAP congestion status, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442BD8
lbl_80442BD8:
	.ascii "HID - Rcvd L2CAP congestion status, CID: 0x%x  Cong: %d"
	.byte 0x00
.global lbl_80442C10
lbl_80442C10:
	.ascii "HID - Rcvd L2CAP data, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442C40
lbl_80442C40:
	.ascii "L2CAP - L2CA_Register() called for PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no cb registering PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - invalid PSM value, PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no RCB available, PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442CE8
lbl_80442CE8:
	.ascii "L2CAP - L2CA_Deregister() called for PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442D1C
lbl_80442D1C:
	.ascii "L2CAP - PSM: 0x%04x not found for deregistration"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_ConnectReq()  PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_ConnectReq()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP connect req - BTU not ready"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no RCB for L2CA_conn_req, PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no LCB for L2CA_conn_req"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP API - L2CA_conn_req rejected - link disconnecting"
	.byte 0x00
	.ascii "L2CAP - no CCB for L2CA_conn_req"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - L2CA_conn_req() returned CID: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_ConnectRsp()  CID: 0x%04x  Result: %d  Status: %d"
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_ConnectRsp()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no LCB for L2CA_conn_rsp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no CCB for L2CA_conn_rsp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - bad id in L2CA_conn_rsp. Exp: %d  Got: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442F98
lbl_80442F98:
	.ascii "L2CA_ConfigReq()  CID: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442FB8
lbl_80442FB8:
	.ascii "L2CAP - no CCB for L2CA_cfg_req, CID: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442FE4
lbl_80442FE4:
	.ascii "L2CA_ConfigRsp()  CID: 0x%04x  Result: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443010
lbl_80443010:
	.ascii "L2CAP - no CCB for L2CA_cfg_rsp, CID: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044303C
lbl_8044303C:
	.ascii "L2CA_DisconnectReq()  CID: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443060
lbl_80443060:
	.ascii "L2CAP - no CCB for L2CA_disc_req, CID: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044308C
lbl_8044308C:
	.ascii "L2CA_DisconnectRsp()  CID: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804430B0
lbl_804430B0:
	.ascii "L2CAP - no CCB for L2CA_disc_rsp, CID: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_DataWrite()  CID: 0x%04x  Len: %d"
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no CCB for L2CA_DataWrite, CID: %d"
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - cannot send message bigger than peer's mtu size"
	.byte 0x00
	.ascii "L2CA_Ping()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.byte 0x00
	.ascii "L2CAP - no LCB for L2CA_ping"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - rejected second L2CA_ping"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - L2CA_ping rejected - link disconnecting"
	.byte 0x00
.global lbl_80443210
lbl_80443210:
	.ascii "L2CAP - no CCB for L2CA_SetIdleTimeout, CID: %d"
	.byte 0x00
	.ascii "L2CA_SetAclPriority()  bdaddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.ascii "L2CAP - no LCB for L2CA_SetAclPriority"
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_SetCompression() local cid %d, direction %d, pe_type %d, mem_level %d, wbits %d, enable %d"
	.byte 0x00
	.ascii "L2CAP - no CCB for L2CA_Flush, CID: %d"
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_Flush()  CID: 0x%04x flushed %d buffers"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_GetNumQueuedBufs()  CID: 0x%04x  abmormally returning 0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_GetNumQueuedBufs()  CID: 0x%04x  returning %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804433D0
lbl_804433D0:
	.incbin "baserom.dol", 0x43F4D0, 0x40
.global lbl_80443410
lbl_80443410:
	.ascii "L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443490
lbl_80443490:
	.incbin "baserom.dol", 0x43F590, 0xA4
.global lbl_80443534
lbl_80443534:
	.4byte 0x802D675C, 0x802D6834, 0x802D6834, 0x802D6834
	.4byte 0x802D67A0, 0x802D67CC, 0x802D6834, 0x802D6834
	.4byte 0x802D6834, 0x802D6834, 0x802D6834, 0x802D6834
	.4byte 0x802D6834, 0x802D6834, 0x802D6834, 0x802D6834
	.4byte 0x802D6814, 0x802D6834, 0x802D6834, 0x802D6834
	.4byte 0x802D6834, 0x802D6834, 0x802D6834, 0x802D6820
	.4byte 0x802D6834, 0x802D6834, 0x802D6814
.global lbl_804435A0
lbl_804435A0:
	.ascii "L2CAP - st: TERM_W4_SEC_COMP evt: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804435C8
lbl_804435C8:
	.ascii "L2CAP - Calling Connect_Ind_Cb(), CID: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804435F8
lbl_804435F8:
	.incbin "baserom.dol", 0x43F6F8, 0x168
.global lbl_80443760
lbl_80443760:
	.4byte 0x802D6A34, 0x802D6BE0, 0x802D6BE0, 0x802D6BE0
	.4byte 0x802D6BE0, 0x802D6BE0, 0x802D6BE0, 0x802D6BE0
	.4byte 0x802D6A80, 0x802D6AE0, 0x802D6B38, 0x802D6BE0
	.4byte 0x802D6BE0, 0x802D6BE0, 0x802D6BE0, 0x802D6BE0
	.4byte 0x802D6BD8, 0x802D6BE0, 0x802D6BE0, 0x802D6BE0
	.4byte 0x802D6BE0, 0x802D6BE0, 0x802D6BE0, 0x802D6BCC
	.4byte 0x802D6BE0, 0x802D6BE0, 0x802D6BD8, 0x802D6B80
.global lbl_804437D0
lbl_804437D0:
	.ascii "L2CAP - st: W4_L2CA_CON_RSP evt: %d"
	.byte 0x00
.global lbl_804437F4
lbl_804437F4:
	.incbin "baserom.dol", 0x43F8F4, 0x194
.global lbl_80443988
lbl_80443988:
	.incbin "baserom.dol", 0x43FA88, 0x8C
.global lbl_80443A14
lbl_80443A14:
	.incbin "baserom.dol", 0x43FB14, 0xC4
.global lbl_80443AD8
lbl_80443AD8:
	.4byte 0x802D7474, 0x802D75C0, 0x802D75C0, 0x802D75C0
	.4byte 0x802D75C0, 0x802D75C0, 0x802D75C0, 0x802D75C0
	.4byte 0x802D75C0, 0x802D75C0, 0x802D75C0, 0x802D75C0
	.4byte 0x802D75C0, 0x802D75C0, 0x802D7504, 0x802D74B8
	.4byte 0x802D75B8, 0x802D75C0, 0x802D75C0, 0x802D75C0
	.4byte 0x802D75C0, 0x802D75C0, 0x802D75C0, 0x802D75C0
	.4byte 0x802D75C0, 0x802D75C0, 0x802D75B8, 0x802D7564
.global lbl_80443B48
lbl_80443B48:
	.ascii "L2CAP - st: W4_L2CA_DISC_RSP evt: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443B70
lbl_80443B70:
	.incbin "baserom.dol", 0x43FC70, 0x98
.global lbl_80443C08
lbl_80443C08:
	.ascii "L2CAP failed to allocate LCB"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443C28
lbl_80443C28:
	.ascii "L2CAP got conn_req while connected"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443C50
lbl_80443C50:
	.ascii "L2CAP got conn_comp for unknown BD_ADDR"
	.byte 0x00
.global lbl_80443C78
lbl_80443C78:
	.ascii "L2CAP got conn_comp in bad state: %d  status: 0x%d"
	.byte 0x00
	.byte 0x00
.global lbl_80443CAC
lbl_80443CAC:
	.ascii "L2CAP got sec_comp for unknown BD_ADDR"
	.byte 0x00
	.byte 0x00
.global lbl_80443CD4
lbl_80443CD4:
	.ascii "L2CAP - ping timeout"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - Congested(), CID: 0x%04x, Congested"
	.byte 0x00
	.ascii "L2CAP - Calling CongestionStatus_Cb(), CID: 0x%04x, Congested"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "!!! L2CAP - buffer dropped"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - Calling CongestionStatus_Cb(), CID: 0x%04x, Uncongested"
	.byte 0x00
	.ascii "LCB %d Priority:%d XmitWindow:%d Congestion Start:%d End:%d Discard:%d"
	.byte 0x00
	.byte 0x00
.global lbl_80443E00
lbl_80443E00:
	.ascii "L2CAP - dropping incomplete pkt"
	.byte 0x00
.global lbl_80443E20
lbl_80443E20:
	.ascii "L2CAP - dropping too long pkt"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443E40
lbl_80443E40:
	.ascii "L2CAP - rcvd segment complete, unknown handle: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443E78
lbl_80443E78:
	.incbin "baserom.dol", 0x43FF78, 0x2D4
.global lbl_8044414C
lbl_8044414C:
	.ascii "L2CAP HOLD CONTINUE"
	.byte 0x00
.global lbl_80444160
lbl_80444160:
	.ascii "L2CAP HOLD TIMEOUT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444178
lbl_80444178:
	.ascii "L2CAP - no buffer cmd_rej"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444194
lbl_80444194:
	.ascii "L2CAP - no buffer for conn_req"
	.byte 0x00
	.byte 0x00
.global lbl_804441B4
lbl_804441B4:
	.ascii "L2CAP - no buffer for cfg_rej"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804441D4
lbl_804441D4:
	.ascii "L2CAP - no buffer for echo_req"
	.byte 0x00
	.byte 0x00
	.ascii "l2cu_create_conn - btm_is_sco_active_by_bdaddr() is_sco_active = %s"
	.byte 0x00
.global lbl_80444238
lbl_80444238:
	.ascii "L2CAP - no buffer for l2cu_create_conn"
	.byte 0x00
	.byte 0x00
.global lbl_80444260
lbl_80444260:
	.ascii "port_open_continue"
	.byte 0x00
	.byte 0x00
	.ascii "port_open_continue no mx channel"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444298
lbl_80444298:
	.ascii "PORT_StartCnf result:%d"
	.byte 0x00
	.ascii "PORT_StartCnf failed result:%d"
	.byte 0x00
	.byte 0x00
.global lbl_804442D0
lbl_804442D0:
	.ascii "PORT_StartInd"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804442E0
lbl_804442E0:
	.ascii "PORT_ParNegInd dlci:%d mtu:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444300
lbl_80444300:
	.ascii "PORT_ParNegInd: port not found"
	.byte 0x00
	.byte 0x00
.global lbl_80444320
lbl_80444320:
	.ascii "PORT_ParNegCnf dlci:%d mtu:%d cl: %d k: %d"
	.byte 0x00
	.byte 0x00
.global lbl_8044434C
lbl_8044434C:
	.ascii "PORT_DlcEstablishInd dlci:%d mtu:%d"
	.byte 0x00
.global lbl_80444370
lbl_80444370:
	.ascii "PORT_DlcEstablishCnf dlci:%d mtu:%d result:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804443A0
lbl_804443A0:
	.ascii "PORT_PortNegInd"
	.byte 0x00
	.ascii "PORT_PortNegCnf"
	.byte 0x00
	.ascii "PORT_PortNegCnf no port"
	.byte 0x00
	.ascii "PORT_PortNegCnf Control Already sent"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444400
lbl_80444400:
	.ascii "PORT_ControlInd"
	.byte 0x00
.global lbl_80444410
lbl_80444410:
	.ascii "PORT_ControlInd DTR_DSR : %d, RTS_CTS : %d, RI : %d, DCD : %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444450
lbl_80444450:
	.ascii "PORT_ControlCnf"
	.byte 0x00
.global lbl_80444460
lbl_80444460:
	.ascii "PORT_LineStatusInd"
	.byte 0x00
	.byte 0x00
.global lbl_80444474
lbl_80444474:
	.ascii "PORT_DlcReleaseInd"
	.byte 0x00
	.byte 0x00
.global lbl_80444488
lbl_80444488:
	.ascii "PORT_CloseInd"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444498
lbl_80444498:
	.ascii "Port_TimeOutCloseMux"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804444B0
lbl_804444B0:
	.ascii "PORT_DataInd with data length %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804444D4
lbl_804444D4:
	.ascii "PORT_DataInd. Buffer over run. Dropping the buffer"
	.byte 0x00
	.byte 0x00
.global lbl_80444508
lbl_80444508:
	.ascii "PORT_FlowInd fc:%d"
	.byte 0x00
	.byte 0x00
	.ascii "Sending RFCOMM_DataReq"
	.byte 0x00
	.byte 0x00
.global lbl_80444534
lbl_80444534:
	.ascii "port_rfc_closed in OPENING state ignored"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444560
lbl_80444560:
	.ascii "port_rfc_closed state:%d sending events:%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444590
lbl_80444590:
	.ascii "port_select_mtu bad packet size"
	.byte 0x00
	.ascii "port_select_mtu selected %d based on connection speed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "port_select_mtu selected %d based on l2cap PDU size"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "port_select_mtu application selected %d"
	.byte 0x00
	.ascii "port_select_mtu credit_rx_max %d, credit_rx_low %d, rx_buf_critical %d"
	.byte 0x00
	.byte 0x00
.global lbl_80444690
lbl_80444690:
	.ascii "rfc_port_closed DONE"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804446A8
lbl_804446A8:
	.ascii "PORT_DataInd Data reached HW. Sending FC set."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804446D8
lbl_804446D8:
	.ascii "rfc_find_lcid_mcb LCID:0x%x"
	.byte 0x00
	.ascii "rfc_find_lcid_mcb LCID reused LCID:0x%x current:0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "RFCOMM_ConnectCnf LCID:0x%x"
	.byte 0x00
	.ascii "RFCOMM_ConfigInd LCID:0x%x"
	.byte 0x00
	.byte 0x00
	.ascii "RFCOMM_ConfigCnf LCID:0x%x"
	.byte 0x00
	.byte 0x00
	.ascii "RFCOMM_DisconnectInd LCID:0x%x"
	.byte 0x00
	.byte 0x00
	.ascii "RFCOMM_BufDataInd LCID:0x%x"
	.byte 0x00
	.ascii "RFCOMM_CongestionStatusInd dropped LCID:0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "RFCOMM_CongestionStatusInd LCID:0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444818
lbl_80444818:
	.incbin "baserom.dol", 0x440918, 0x70
.global lbl_80444888
lbl_80444888:
	.ascii "RFCOMM MX ignored - evt:%d in state:%d"
	.byte 0x00
	.byte 0x00
.global lbl_804448B0
lbl_804448B0:
	.incbin "baserom.dol", 0x4409B0, 0x80
.global lbl_80444930
lbl_80444930:
	.incbin "baserom.dol", 0x440A30, 0x48
.global lbl_80444978
lbl_80444978:
	.4byte 0x802DE314, 0x802DE2C4, 0x802DE2EC, 0x802DE314
	.4byte 0x802DE314, 0x802DE2F4, 0x802DE264, 0x802DE314
	.4byte 0x802DE314, 0x802DE264, 0x802DE314, 0x802DE2A0
	.4byte 0x802DE290, 0x802DE314, 0x802DE2B0
.global lbl_804449B4
lbl_804449B4:
	.ascii "rfc_mx_sm_state_wait_sabme - evt:%d"
	.byte 0x00
.global lbl_804449D8
lbl_804449D8:
	.ascii "rfc_mx_sm_state_connected - evt:%d"
	.byte 0x00
	.byte 0x00
.global lbl_804449FC
lbl_804449FC:
	.4byte 0x802DE524, 0x802DE550, 0x802DE4EC, 0x802DE550
	.4byte 0x802DE550, 0x802DE4EC, 0x802DE550, 0x802DE550
	.4byte 0x802DE550, 0x802DE550, 0x802DE550, 0x802DE510
.global lbl_80444A2C
lbl_80444A2C:
	.ascii "rfc_mx_sm_state_disc_wait_ua - evt:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444A54
lbl_80444A54:
	.4byte 0x802DE6C4, 0x802DE608, 0x802DE608, 0x802DE674
	.4byte 0x802DE684, 0x802DE608, 0x802DE6A0, 0x802DE6C4
	.4byte 0x802DE6C0, 0x802DE6C4, 0x802DE6C4, 0x802DE6C4
	.4byte 0x802DE6C4, 0x802DE6C4, 0x802DE6AC
.global lbl_80444A90
lbl_80444A90:
	.ascii "rfc_mx_conf_cnf p_cfg:%08x res:%d "
	.byte 0x00
	.byte 0x00
.global lbl_80444AB4
lbl_80444AB4:
	.ascii "rfc_mx_conf_ind p_cfg:%0x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444AD0
lbl_80444AD0:
	.ascii "NULL port event %d"
	.byte 0x00
	.byte 0x00
.global lbl_80444AE4
lbl_80444AE4:
	.ascii "Port error state %d event %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444B04
lbl_80444B04:
	.ascii "Port state closed Event ignored %d"
	.byte 0x00
	.byte 0x00
.global lbl_80444B28
lbl_80444B28:
	.4byte 0x802DEA08, 0x802DEA40, 0x802DEA44, 0x802DEA68
	.4byte 0x802DEA4C, 0x802DEA7C, 0x802DEAB4, 0x802DEAB4
	.4byte 0x802DEAB4, 0x802DE9C0, 0x802DEAB4, 0x802DEAB4
	.4byte 0x802DEAB4, 0x802DE9F8, 0x802DE9FC
.global lbl_80444B64
lbl_80444B64:
	.ascii "Port state sabme_wait_ua Event ignored %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444B90
lbl_80444B90:
	.incbin "baserom.dol", 0x440C90, 0x98
.global lbl_80444C28
lbl_80444C28:
	.incbin "baserom.dol", 0x440D28, 0xA0
.global lbl_80444CC8
lbl_80444CC8:
	.4byte 0x802DEEE4, 0x802DEF60, 0x802DEF60, 0x802DEF60
	.4byte 0x802DEF54, 0x802DEF60, 0x802DEF60, 0x802DEF60
	.4byte 0x802DEF60, 0x802DEEE4, 0x802DEF60, 0x802DEF60
	.4byte 0x802DEF10, 0x802DEF60, 0x802DEF28, 0x802DEE94
.global lbl_80444D08
lbl_80444D08:
	.ascii "Port state opened Event ignored %d"
	.byte 0x00
	.byte 0x00
.global lbl_80444D2C
lbl_80444D2C:
	.4byte 0x802DF0B4, 0x802DF0B0, 0x802DF0C4, 0x802DF0DC
	.4byte 0x802DF100, 0x802DF110, 0x802DF148, 0x802DF148
	.4byte 0x802DF148, 0x802DEFDC, 0x802DF148, 0x802DF148
	.4byte 0x802DF00C, 0x802DF034, 0x802DF03C
.global lbl_80444D68
lbl_80444D68:
	.ascii "Port state disc_wait_ua Event ignored %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444D94
lbl_80444D94:
	.4byte 0x802DF21C, 0x802DF204, 0x802DF210, 0x802DF230
	.4byte 0x802DF244, 0x802DF260, 0x802DF268, 0x802DF268
	.4byte 0x802DF268, 0x802DF1C4, 0x802DF268, 0x802DF1C4
	.4byte 0x802DF268, 0x802DF1F0, 0x802DF1F8
.global lbl_80444DD0
lbl_80444DD0:
	.ascii "***** MX PN while disconnecting *****"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444DF8
lbl_80444DF8:
	.ascii "Bad Length1: %d"
	.byte 0x00
	.ascii "Bad Length2 %d %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad SABME"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad DISC"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad UIH - invalid DLCI"
	.byte 0x00
	.byte 0x00
	.ascii "Bad UIH - FCS"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad UIH - response"
	.byte 0x00
	.byte 0x00
	.ascii "Illegal MX Frame ea:%d len:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad MX frame"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad PN frame"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad MSC frame"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad RPN frame"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444ED0
lbl_80444ED0:
	.ascii "rfc_timer_stop"
	.byte 0x00
	.byte 0x00
.global lbl_80444EE0
lbl_80444EE0:
	.ascii "rfc_timer_start - timeout:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444F00
lbl_80444F00:
	.ascii "rfc_port_timer_start - timeout:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444F24
lbl_80444F24:
	.ascii "rfc_port_timer_stop"
	.byte 0x00
	.ascii "rfc_port_closed"
	.byte 0x00
.global lbl_80444F48
lbl_80444F48:
	.ascii "rfc_inc_credit:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444F60
lbl_80444F60:
	.ascii "SDP_InitDiscoveryDb Illegal param: p_db 0x%x, len %d, num_uuid %d, num_attr %d"
	.byte 0x00
	.byte 0x00
.global lbl_80444FB0
lbl_80444FB0:
	.ascii "SDP_AddAttribute: attr_len:%d too long. truncate to (%d)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444FEC
lbl_80444FEC:
	.ascii "SDP_AddUuidSequence - too long, add %d uuids of %d"
	.byte 0x00
	.byte 0x00
	.ascii "Deleting attr_id 0x%04x for handle 0x%x"
	.byte 0x00
.global lbl_80445048
lbl_80445048:
	.ascii "SDP - Unexp. PDU: %d in state: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445070
lbl_80445070:
	.ascii "SDP - Rcvd ServiceSearchRsp, no matches"
	.byte 0x00
.global lbl_80445098
lbl_80445098:
	.ascii "SDP - Wrong type: 0x%02x in attr_rsp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - Bad len in attr_rsp %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - DB full"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - Bad type: 0x%02x or len: %d in attr_rsp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - attr nesting too deep"
	.byte 0x00
	.ascii "SDP - bad len in UUID attr: %d"
	.byte 0x00
	.byte 0x00
	.ascii "SDP - bad len in boolean attr: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445180
lbl_80445180:
	.float -4.251332148588775e-39, -4.2498243514411614e-39, -4.2500709799708826e-39, -4.2503344240821757e-39
	.float -4.2511527823853413e-39, -4.251220044711629e-39, -4.250900548661763e-39, -4.250900548661763e-39
	.float -4.2511527823853413e-39, 0.0
.global lbl_804451A8
lbl_804451A8:
	.ascii "Service Discovery"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration Server failed"
	.byte 0x00
	.ascii "Security Registration for Client failed"
	.byte 0x00
	.ascii "SDP Registration failed"
	.byte 0x00
.global lbl_80445220
lbl_80445220:
	.ascii "SDP - Rcvd L2CAP conn ind, sent config req, CID 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - Rcvd conn cnf for unknown CID 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - got conn cnf, sent cfg req, CID: 0x%x"
	.byte 0x00
	.ascii "SDP - Rcvd conn cnf with error: 0x%x  CID 0x%x"
	.byte 0x00
	.byte 0x00
.global lbl_804452E0
lbl_804452E0:
	.ascii "SDP - Rcvd L2CAP cfg ind, unknown CID: 0x%x"
	.byte 0x00
.global lbl_8044530C
lbl_8044530C:
	.ascii "SDP - Rcvd cfg ind, sent cfg cfm, CID: 0x%x"
	.byte 0x00
	.ascii "SDP - Rcvd cfg cfm, CID: 0x%x  Result: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445364
lbl_80445364:
	.ascii "SDP - disconnect  CID: 0x%x"
	.byte 0x00
.global lbl_80445380
lbl_80445380:
	.ascii "SDP - Rcvd L2CAP disc, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804453AC
lbl_804453AC:
	.ascii "SDP - Rcvd L2CAP disc, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804453D0
lbl_804453D0:
	.ascii "SDP - Ignored L2CAP data while in state: %d, CID: 0x%x"
	.byte 0x00
	.byte 0x00
.global lbl_80445408
lbl_80445408:
	.ascii "SDP - Rcvd L2CAP data, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - no spare CCB for orig"
	.byte 0x00
	.ascii "SDP - Originate started"
	.byte 0x00
	.ascii "SDP - Originate failed"
	.byte 0x00
	.byte 0x00
.global lbl_80445480
lbl_80445480:
	.ascii "SDP - Rcvd L2CAP disc cfm, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804454B0
lbl_804454B0:
	.ascii "SDP - Rcvd L2CAP disc cfm, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804454D8
lbl_804454D8:
	.ascii "SDP - CCB timeout in state: %d  CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445508
lbl_80445508:
	.ascii "SDP - server got unknown PDU: 0x%x"
	.byte 0x00
	.byte 0x00
.global lbl_8044552C
lbl_8044552C:
	.ascii "SDP - no buf for search rsp"
	.byte 0x00
.global lbl_80445548
lbl_80445548:
	.4byte 0x802E6828, 0x802E67C8, 0x802E67D8, 0x802E6828
	.4byte 0x802E67EC, 0x802E6828, 0x802E6828, 0x802E6828
	.4byte 0x802E6800, 0x802E6828, 0x802E6828, 0x802E6828
	.4byte 0x802E6828, 0x802E6828, 0x802E6828, 0x802E6828
	.4byte 0x802E6814
.global lbl_8044558C
lbl_8044558C:
	.ascii "SDP - sdpu_build_n_send_error  code: 0x%x  CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804455C4
lbl_804455C4:
	.incbin "baserom.dol", 0x4416C4, 0x3C
.global lbl_80445600
lbl_80445600:
	.4byte 0x802E6A64, 0x802E69F4, 0x802E69FC, 0x802E6A64
	.4byte 0x802E6A04, 0x802E6A0C, 0x802E6A18, 0x802E6A34
.global lbl_80445620
lbl_80445620:
	.4byte 0x802E6F74, 0x802E6F80, 0x802E6F8C, 0x802E6F98
	.4byte 0x802E6FA4, 0x802E6FB0, 0x802E6FC0, 0x802E6FE0
.global lbl_80445640
lbl_80445640:
	.ascii "/tmp/sys"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044564C
lbl_8044564C:
	.ascii "%s/%08x/%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445660
lbl_80445660:
	.ascii "<< RVL_SDK - NAND \trelease build: Nov 30 2006 03:32:57 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804456C0
lbl_804456C0:
	.incbin "baserom.dol", 0x4417C0, 0x50
.global lbl_80445710
lbl_80445710:
	.ascii "/shared2"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044571C
lbl_8044571C:
	.ascii "/shared2/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445728
lbl_80445728:
	.ascii "CAUTION!  Unexpected error code [%d] was found.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Failed to set home directory.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/title/00010000"
	.byte 0x00
	.ascii "/title/00010001"
	.byte 0x00
	.ascii "/title/00010003"
	.byte 0x00
	.ascii "/title/00010004"
	.byte 0x00
	.ascii "/title/00010005"
	.byte 0x00
	.ascii "/title/00010006"
	.byte 0x00
	.ascii "/title/00010007"
	.byte 0x00
	.ascii "/shared2/title"
	.byte 0x00
	.byte 0x00
.global lbl_80445800
lbl_80445800:
	.float -9.171150926986775e-39, -9.17116213737449e-39, -6.276202824344278e-39, -6.276225245119707e-39
	.float -6.276247665895137e-39, -6.276270086670566e-39, -6.276292507445995e-39, -6.276314928221424e-39
	.float -6.276337348996853e-39, -6.276359769772283e-39, 0.0
.global lbl_8044582C
lbl_8044582C:
	.ascii "nandUserAreaCallback"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445844
lbl_80445844:
	.ascii "Illegal status is detected at %s()"
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - SC \trelease build: Nov 30 2006 03:33:00 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.ascii "IPL.EULA"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "IPL.SADR"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NET.CTPC"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NET.PROF"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NET.WCPC"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NET.WCFG"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804458F8
lbl_804458F8:
	.float -9.171178952956062e-39, 0.0, -9.171190163343776e-39, 1.401298464324817e-45
	.float -9.171206978925348e-39, 2.802596928649634e-45, -9.171218189313063e-39, 4.203895392974451e-45
	.float -9.171229399700777e-39, 5.605193857299268e-45, -9.171240610088492e-39, 7.006492321624085e-45
	.float -9.171251820476207e-39, 8.407790785948902e-45, -6.276628819077433e-39, 9.80908925027372e-45
	.float -9.171263030863921e-39, 1.1210387714598537e-44, -9.171274241251636e-39, 1.2611686178923354e-44
	.float -9.17128545163935e-39, 1.401298464324817e-44, -9.171296662027065e-39, 1.5414283107572988e-44
	.float -9.17130787241478e-39, 1.6815581571897805e-44, -9.171319082802494e-39, 1.8216880036222622e-44
	.float -9.171330293190209e-39, 1.961817850054744e-44, -9.171341503577923e-39, 2.1019476964872256e-44
	.float -6.276645634659005e-39, 2.2420775429197073e-44, -9.171352713965638e-39, 2.382207389352189e-44
	.float -9.171363924353353e-39, 2.5223372357846707e-44, -9.171375134741067e-39, 2.6624670822171524e-44
	.float -6.276662450240577e-39, 2.802596928649634e-44, -6.276679265822149e-39, 2.942726775082116e-44
	.float -6.27669608140372e-39, 3.0828566215145976e-44, -6.276712896985293e-39, 3.2229864679470793e-44
	.float -9.171386345128782e-39, 3.363116314379561e-44, -9.171397555516496e-39, 3.5032461608120427e-44
	.float -9.171408765904211e-39, 3.6433760072445244e-44, -9.171419976291926e-39, 3.783505853677006e-44
	.float -9.17143118667964e-39, 3.923635700109488e-44, -9.171442397067355e-39, 4.0637655465419695e-44
	.float -9.171453607455069e-39, 4.203895392974451e-44, -9.171464817842784e-39, 4.344025239406933e-44
	.float -9.171476028230499e-39, 4.484155085839415e-44, -9.171487238618213e-39, 4.624284932271896e-44
	.float -9.171498449005928e-39, 4.764414778704378e-44
.global lbl_80445A10
lbl_80445A10:
	.4byte 0x802EC028, 0x802EC06C, 0x802EC0AC, 0x802EC0DC
	.4byte 0x802EC124, 0x802EC158, 0x802EC18C, 0x802EC1D0
	.4byte 0x802EC20C, 0x802EC214
.global lbl_80445A38
lbl_80445A38:
	.incbin "baserom.dol", 0x441B38, 0x48
.global lbl_80445A80
lbl_80445A80:
	.ascii "ARCInitHandle: bad archive format"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - NCD \trelease build: Mar  9 2007 15:08:17 (0x4199_60831) >>"
	.byte 0x00
.global lbl_80445AF0
lbl_80445AF0:
	.ascii "NCDSetNwc24Permission"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445B08
lbl_80445B08:
	.ascii "NCDGetCurrentIfConfig"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445B20
lbl_80445B20:
	.ascii "NCDGetCurrentIpConfig"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445B38
lbl_80445B38:
	.ascii "/dev/net/ncd/manage"
	.byte 0x00
.global lbl_80445B4C
lbl_80445B4C:
	.ascii "NCDiGetEnabledConfigList"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445B68
lbl_80445B68:
	.ascii "ncdsystem.c"
	.byte 0x00
.global lbl_80445B74
lbl_80445B74:
	.ascii "Could not reserve heap for NCD library from IPC arena"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445BB0
lbl_80445BB0:
	.incbin "baserom.dol", 0x441CB0, 0x10
.global lbl_80445BC0
lbl_80445BC0:
	.ascii "/dev/net/wd/command"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445BD8
lbl_80445BD8:
	.incbin "baserom.dol", 0x441CD8, 0xD0
.global lbl_80445CA8
lbl_80445CA8:
	.ascii "<< RVL_SDK - MPDL \trelease build: Mar  9 2007 15:08:14 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s:%d:panic! "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "mpdlsystem.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\n\n(program is terminated)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445D30
lbl_80445D30:
	.ascii "already MPDL is running now.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445D50
lbl_80445D50:
	.ascii "failed to allocate enough memory to startup MPDL.\n"
	.byte 0x00
	.byte 0x00
.global lbl_80445D84
lbl_80445D84:
	.ascii "MPDL is not running now.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445DA0
lbl_80445DA0:
	.ascii "Unknown SOStartup Error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< REX-PPC 1.0.0.1 (RevoEX-1.0plus1) REL 070416023413 >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - SO \trelease build: Mar  9 2007 15:08:35 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
.global lbl_80445E48
lbl_80445E48:
	.incbin "baserom.dol", 0x441F48, 0x98
.global lbl_80445EE0
lbl_80445EE0:
	.4byte 0x802F5970, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5980, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5984, 0x802F5984, 0x802F5984, 0x802F5968
	.4byte 0x802F5984, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5984, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5968, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5984, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5984, 0x802F5984, 0x802F5984, 0x802F5970
	.4byte 0x802F5978, 0x802F5960
.global lbl_80445F68
lbl_80445F68:
	.float -4.3503310824963946e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.350353503271824e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.350342292884109e-39
	.float -4.3503647136595384e-39, 0.0
.global lbl_80445FE0
lbl_80445FE0:
	.ascii "%d.%d.%d.%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445FF0
lbl_80445FF0:
	.ascii "NCDGetCurrentIpConfig err = %d\n"
	.byte 0x00
	.ascii "NHTTP_bgnend.c"
	.byte 0x00
	.byte 0x00
	.ascii "NCDGetCurrentIpConfig"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446038
lbl_80446038:
	.ascii "*warning: %d connections rests! Please free connections.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446078
lbl_80446078:
	.ascii "NHTTPi_CheckCurrentThread"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s:illegal thread\n"
	.byte 0x00
	.byte 0x00
	.ascii "NHTTP_os_RVL.c"
	.byte 0x00
	.byte 0x00
.global lbl_804460B8
lbl_804460B8:
	.ascii "https://"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804460C8
lbl_804460C8:
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446110
lbl_80446110:
	.ascii "CONNECT "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " HTTP/1.1\r\n"
	.byte 0x00
	.ascii "Content-Length: 0\r\nPragma: no-cache\r\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Proxy-Authorization: Basic "
	.byte 0x00
.global lbl_8044616C
lbl_8044616C:
	.ascii "Content-Length: "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Authorization: Basic "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Content-Length"
	.byte 0x00
	.byte 0x00
	.ascii "Connection"
	.byte 0x00
	.byte 0x00
	.ascii "Keep-Alive"
	.byte 0x00
	.byte 0x00
	.ascii "Transfer-Encoding"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804461D8
lbl_804461D8:
	.ascii "[no-auth]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Using proxy server %s:%d (%s/%s).\n"
	.byte 0x00
	.byte 0x00
	.ascii "NHTTPSetProxy failed.(%d)\n"
	.byte 0x00
	.byte 0x00
	.ascii "d_nhttp.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NHTTPSetProxy"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446240
lbl_80446240:
	.float 2.077252536647478e-10, 2.1682017292690148e-10, 2.2141727340496686e-10, 0.0
	.float -4.4167638400931055e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39
	.float -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39
	.float -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.416786260868535e-39
	.float -4.416696577766818e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39
	.float -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39
	.float -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.41671339334839e-39
	.float -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.416898364745681e-39
	.float -4.417582198396271e-39, -4.416730208929962e-39, -4.417582198396271e-39, -4.417582198396271e-39
	.float -4.4167414193176763e-39, 0.0
.global lbl_804462D8
lbl_804462D8:
	.incbin "baserom.dol", 0x4423D8, 0x7C
.global lbl_80446354
lbl_80446354:
	.ascii "NWC24Config.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446364
lbl_80446364:
	.ascii "stopped."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - NWC24 \trelease build: Apr 16 2007 02:52:36 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804463BC
lbl_804463BC:
	.4byte 0x80303250, 0x8030325C, 0x8030325C, 0x80303250
	.4byte 0x8030325C, 0x8030325C, 0x80303250, 0x80303250
	.4byte 0x8030325C, 0x8030325C, 0x8030325C, 0x80303250
	.4byte 0x8030325C, 0x8030325C, 0x8030325C, 0x8030325C
	.4byte 0x8030325C, 0x8030325C, 0x8030325C, 0x8030325C
	.4byte 0x80303250, 0x8030325C, 0x8030325C, 0x80303250
	.4byte 0x8030325C, 0x8030325C, 0x8030325C, 0x80303250
	.4byte 0x80303250, 0x80303250, 0x80303250, 0x80303250
	.4byte 0x80303250, 0x80303250, 0x8030325C, 0x80303250
	.4byte 0x8030325C, 0x8030325C, 0x8030325C, 0x8030325C
	.4byte 0x8030325C, 0x8030325C, 0x8030325C, 0x8030325C
	.4byte 0x8030325C, 0x8030325C, 0x8030325C, 0x8030325C
	.4byte 0x80303250
.global lbl_80446480
lbl_80446480:
	.ascii "/wc24send.ctl"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446490
lbl_80446490:
	.ascii "/wc24recv.ctl"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804464A0
lbl_804464A0:
	.ascii "/wc24recv.mbx"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804464B0
lbl_804464B0:
	.ascii "/wc24send.mbx"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804464C0
lbl_804464C0:
	.ascii "/dev/net/kd/request"
	.byte 0x00
.global lbl_804464D4
lbl_804464D4:
	.ascii "NWC24iRequestGenerateUserId"
	.byte 0x00
.global lbl_804464F0
lbl_804464F0:
	.ascii "ExecTrySuspendScheduler"
	.byte 0x00
	.ascii "/shared2/wc24/nwc24fl.bin"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/shared2/wc24/nwc24fls.bin"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446548
lbl_80446548:
	.ascii "/dev/net/kd/time"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044655C
lbl_8044655C:
	.ascii "NWC24iSetRtcCounter"
	.byte 0x00
	.ascii "/shared2/wc24/nwc24dl.bin"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446590
lbl_80446590:
	.ascii "NWC24iPrepareShutdown"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804465A8
lbl_804465A8:
	.ascii "/dev/net/kd/request"
	.byte 0x00
.global lbl_804465BC
lbl_804465BC:
	.ascii "NWC24iRequestShutdown"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804465D8
lbl_804465D8:
	.ascii "NO NAME    "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804465E8
lbl_804465E8:
	.incbin "baserom.dol", 0x4426E8, 0xE8
.global lbl_804466D0
lbl_804466D0:
	.4byte 0x8031C540, 0x8031C510, 0x8031C4E0, 0x8031C4E0
	.4byte 0x8031C4E0, 0x8031C4E0, 0x8031C4EC, 0x8031C4F8
	.4byte 0x8031C4E0, 0x8031C510, 0x8031C504, 0x8031C504
	.4byte 0x8031C504, 0x8031C504, 0x8031C51C, 0x8031C528
	.4byte 0x8031C534, 0x8031C528
.global lbl_80446718
lbl_80446718:
	.ascii "<< RVL_SDK - DWC \trelease build: Mar 29 2007 17:04:21 (0x4199_60831) >>"
	.byte 0x00
	.ascii "RVLDWC_DL"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - DWCDL \trelease build: Mar 29 2007 17:04:21 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "sdkdev.gamespy.com"
	.byte 0x00
	.byte 0x00
	.ascii "gpcm.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "gpsp.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "gamestats.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "gamestats2.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.ascii "%s.available.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s.natneg1.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.ascii "%s.natneg2.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.ascii "%s.natneg3.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.ascii "%s.master.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s.gamestats.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s.gamestats2.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s.ms%d.gs.nintendowifi.net"
	.byte 0x00
	.ascii "Failed to cache DNS query.\n"
	.byte 0x00
.global lbl_80446968
lbl_80446968:
	.ascii "DWC_INFO     :"
	.byte 0x00
	.byte 0x00
	.ascii "++DWC_ERROR  :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_DEBUG    :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_WARN     :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_ACHECK   :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_LOGIN    :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_MATCH_NN :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_MATCH_GT2:"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_TRANSPORT:"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_QR2_REQ  :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_SB_UPDATE:"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_SEND     :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_RECV     :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_UPDATE_SV:"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_CONNECTINET:"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "DWC_AUTH     :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_AC       :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_BM       :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_UTIL     :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_OPTION_CF:"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_GAMESPY  :"
	.byte 0x00
	.byte 0x00
	.ascii "DWC_UNKNOWN  :"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446AD0
lbl_80446AD0:
	.ascii "DWC_InitGHTTP\n"
	.byte 0x00
	.byte 0x00
.global lbl_80446AE0
lbl_80446AE0:
	.ascii "DWC_ShutdownGHTTP\n"
	.byte 0x00
	.byte 0x00
.global lbl_80446AF4
lbl_80446AF4:
	.ascii "GHTTPCompleteCallback result : %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_80446B18
lbl_80446B18:
	.ascii "Callback is NULL\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446B2C
lbl_80446B2C:
	.ascii "DWC_Alloc Error\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446B40
lbl_80446B40:
	.ascii "DWC_GetGHTTPData\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446B54
lbl_80446B54:
	.ascii "Main, DWCGHTTP error %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446B70
lbl_80446B70:
	.4byte 0x8031D370, 0x8031D378, 0x8031D380, 0x8031D388
	.4byte 0x8031D388, 0x8031D388, 0x8031D390, 0x8031D3F8
	.4byte 0x8031D398, 0x8031D3A4, 0x8031D3AC, 0x8031D3B4
	.4byte 0x8031D3BC, 0x8031D3C4, 0x8031D3CC, 0x8031D3D4
	.4byte 0x8031D3D4, 0x8031D3D4, 0x8031D3C4, 0x8031D3C4
	.4byte 0x8031D3DC, 0x8031D3DC, 0x8031D3E4, 0x8031D3EC
	.4byte 0x8031D3F4, 0x8031D3F8, 0x8031D3F8, 0x8031D398
.global lbl_80446BE0
lbl_80446BE0:
	.ascii "spCntl->mAddr = %s\n"
	.byte 0x00
.global lbl_80446BF4
lbl_80446BF4:
	.ascii "dwc_lanmatch.c"
	.byte 0x00
	.byte 0x00
.global lbl_80446C04
lbl_80446C04:
	.ascii "cn_sockerror\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446C14
lbl_80446C14:
	.ascii "CBServerBrowsing:(%d)\n"
	.byte 0x00
	.byte 0x00
.global lbl_80446C2C
lbl_80446C2C:
	.ascii "connect to %s (%d)\n"
	.byte 0x00
.global lbl_80446C40
lbl_80446C40:
	.ascii "%d complete\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446C50
lbl_80446C50:
	.ascii "cn_closed (%d)\n"
	.byte 0x00
.global lbl_80446C60
lbl_80446C60:
	.ascii "%s %s (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446C70
lbl_80446C70:
	.ascii "%c%s%c%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446C80
lbl_80446C80:
	.ascii "DWC_DeleteBuddyFriendData : Deleted buddy.\n"
	.byte 0x00
.global lbl_80446CAC
lbl_80446CAC:
	.ascii "DWC_DeleteBuddyFriendData : Only clear data.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446CDC
lbl_80446CDC:
	.ascii "Connection to the stats server was lost\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446D08
lbl_80446D08:
	.ascii "Received buddy request from %u\n"
	.byte 0x00
.global lbl_80446D28
lbl_80446D28:
	.ascii "Begin to search gpInfo.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "I have authorized your request to add me to your list"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Received buddy authenticated message from %u.\n"
	.byte 0x00
	.byte 0x00
.global lbl_80446DAC
lbl_80446DAC:
	.ascii "RECV update friend status. p:%d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Change GP status->status %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Change GP status->statusString %s\n"
	.byte 0x00
	.byte 0x00
	.ascii "Change GP status->locationString %s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "gpGetNumBuddies -> %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "Deleted buddy %u\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Send buddy request to %u\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Called gpProfileSearch().\n"
	.byte 0x00
	.byte 0x00
.global lbl_80446EA0
lbl_80446EA0:
	.ascii "Found same friend in the list [%d] & [%d], %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_80446ED0
lbl_80446ED0:
	.ascii "Friend, GP error %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446EE8
lbl_80446EE8:
	.ascii "Friend, persistent error %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446F08
lbl_80446F08:
	.incbin "baserom.dol", 0x443008, 0x340
.global lbl_80447248
lbl_80447248:
	.ascii "Login Init\n"
	.byte 0x00
	.ascii "******************************************\n"
	.byte 0x00
	.ascii "  pseudo    UserID   : %016llx\n"
	.byte 0x00
	.ascii "  pseudo    PlayerID : %08x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "  authentic UserID   : %016llx\n"
	.byte 0x00
	.ascii "  authentic PlayerID : %08x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80447300
lbl_80447300:
	.ascii "Ignore invalid login state.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80447320
lbl_80447320:
	.ascii "Login, GP error %d\n"
	.byte 0x00
	.ascii "Finished connecting to GP server, result = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "  gs profile id is valid.\n"
	.byte 0x00
	.byte 0x00
	.ascii "  gs profile id is invalid.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Start Remote Auth\n"
	.byte 0x00
	.byte 0x00
	.ascii "  Hmm.. you already have authentic login id.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "  Hmm.. you need to create authentic login id.\n"
	.byte 0x00
	.ascii "    Hmm.. you are the first time to get authentic login id."
	.byte 0x00
	.ascii "- copy temp loginid from pseudo login id\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "- create temp loginid from console user id\n"
	.byte 0x00
	.ascii "    Hmm.. you are NOT the first times to get authentic login id.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " *** Auth Done\n"
	.byte 0x00
	.ascii "Succeeded to remote authentication.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " *** Auth Error [%d]\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "    login id is authenticated. set lastname field.\n"
	.byte 0x00
	.ascii "    call gpSetInfos\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "    this login id is used by anybody.... retry.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "    Account is created : %s(%s) - %d.\n"
	.byte 0x00
	.byte 0x00
	.ascii "    Login but gpSetInfo failed... %s : %d retry gpGetInfo.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " ERROR: gpGetInfo. why??? : %d\n"
	.byte 0x00
.global lbl_80447648
lbl_80447648:
	.ascii "!!DWC_InitFriendsMatch() was called!!\n"
	.byte 0x00
	.byte 0x00
.global lbl_80447670
lbl_80447670:
	.ascii "!!DWC_ShutdownFriendsMatch() was called!! stpDwcCnt = 0x%x\n"
	.byte 0x00
.global lbl_804476AC
lbl_804476AC:
	.ascii "Confirmed the backend of GameSpy server.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "!!DWC_LoginAsync() was called!!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "ingamesn is NULL!!\n"
	.byte 0x00
.global lbl_80447710
lbl_80447710:
	.ascii "But ignored.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80447720
lbl_80447720:
	.ascii "!!DWC_UpdateServersAsync() was called!!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044774C
lbl_8044774C:
	.ascii "!!DWC_ConnectToAnybodyAsync() was called!!\n"
	.byte 0x00
	.ascii "!!DWC_ConnectToFriendsAsync() was called!!\n"
	.byte 0x00
.global lbl_804477A4
lbl_804477A4:
	.ascii "!!DWC_SetupGameServer() was called!!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "!!DWC_ConnectToGameServerAsync() was called!!\n"
	.byte 0x00
	.byte 0x00
	.ascii "pid %d is not buddy.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "pid %d is not game server.\n"
	.byte 0x00
	.ascii "pid %d is fully occupied.\n"
	.byte 0x00
	.byte 0x00
	.ascii "!!DWC_CloseConnectionsAsync() was called!!\n"
	.byte 0x00
	.ascii "Closed 0 connection.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "!!DWC_CloseAllConnectionsHard() was called!!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "!!DWC_CloseConnectionHard() was called!! aid = %d.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "No connection!\n"
	.byte 0x00
	.ascii "!!DWC_CloseConnectionHardBitmap() was called!! AID bitmap = 0x%x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044794C
lbl_8044794C:
	.ascii "gt2Socket is already made.\n"
	.byte 0x00
.global lbl_80447968
lbl_80447968:
	.ascii "--- Private port = %d ---\n"
	.byte 0x00
	.byte 0x00
.global lbl_80447984
lbl_80447984:
	.ascii "Main, GP error %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_80447998
lbl_80447998:
	.ascii "Not handle an error here.\n"
	.byte 0x00
	.byte 0x00
.global lbl_804479B4
lbl_804479B4:
	.ascii "Main, GT2 error %d\n"
	.byte 0x00
.global lbl_804479C8
lbl_804479C8:
	.incbin "baserom.dol", 0x443AC8, 0x5EC
.global lbl_80447FB4
lbl_80447FB4:
	.ascii "Ping: %dms\n"
	.byte 0x00
.global lbl_80447FC0
lbl_80447FC0:
	.ascii "Socket fatal error! (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80447FE0
lbl_80447FE0:
	.ascii "!!DWC_RegisterMatchingStatus() was called!!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80448010
lbl_80448010:
	.ascii "But ignored.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80448020
lbl_80448020:
	.ascii "Now unable to cancel.\n"
	.byte 0x00
	.byte 0x00
.global lbl_80448038
lbl_80448038:
	.ascii " Close Matching....\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80448050
lbl_80448050:
	.ascii "DWC_AddMatchKeyInt: key='%s', value=%d\n"
	.byte 0x00
	.ascii "DWC_AddMatchKeyString: key='%s' value='%s'\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804480A8
lbl_804480A8:
	.ascii "!!DWC_SetMatchingOption() was called!! type %d\n"
	.byte 0x00
	.ascii "[OPT_SC_BLOCK] ClearMOSCConnectBlock\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80448100
lbl_80448100:
	.ascii "QR2 is already set up.\n"
	.byte 0x00
	.ascii "%s = %d and %s != %u and maxplayers = %d and numplayers < %d and %s = %d and %s != %s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "dwc_mver"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "dwc_mtype"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "dwc_mresv"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80448194
lbl_80448194:
	.ascii "dwc_eval"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Timeout: wait server response %d/%d.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NN resv(with %u) timed out. Try next server.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Timeout: wait gt2Connect().\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "RTT Timeout with DWC_MATCH_STATE_CL_GT2.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Stop resending command %d.\n"
	.byte 0x00
	.ascii "Reservation timeout. Cancel reservation.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Wait clients connecting timeout.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "DWCi_RestartFromTimeout() shouldn't be called.\n"
	.byte 0x00
	.ascii "Closed all connections and restart matching.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "No data from server %d/%d.\n"
	.byte 0x00
	.ascii "Timeout: Connection to server was shut down.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Timeout : wait NN retry.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "ServerBrowserLimitUpdate timeout.\n"
	.byte 0x00
	.byte 0x00
	.ascii "RTT Timeout with DWCi_MatchProcess.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Timeout : Wait prior profileID.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804483E8
lbl_804483E8:
	.incbin "baserom.dol", 0x4444E8, 0x2E8
.global lbl_804486D0
lbl_804486D0:
	.ascii "<GP> RECV-0x%02x <- [--------:-----] [pid=%u]\n"
	.byte 0x00
	.byte 0x00
.global lbl_80448700
lbl_80448700:
	.ascii "Received SYN %d packet from aid %d.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80448728
lbl_80448728:
	.ascii "Wait max latency %d msec.\n"
	.byte 0x00
	.byte 0x00
	.ascii "DWCi_ProcessMatchClosing: SC_SV.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Reserve NN to %u.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Wait prior profileID.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Restart matching immediately.\n"
	.byte 0x00
	.byte 0x00
	.ascii "%s and (%s)"
	.byte 0x00
	.ascii "---DWCi_SBUpdateAsync() illegal state %d.\n"
	.byte 0x00
	.byte 0x00
	.ascii "ServerBrowserFilter : %s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Server[%d] is behind same NAT as me.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Server[%d] is behind NAT.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Server[%d] is not behind NAT. But I'm behind NAT.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Both I and Server[%d] are not behind NAT.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Send NN cookie = %x.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " dns error occurs when NatNegotiation begin... retry\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804488FC
lbl_804488FC:
	.ascii "<GP> SEND-0x%02x -> [--------:-----] [pid=%u]\n"
	.byte 0x00
	.byte 0x00
.global lbl_8044892C
lbl_8044892C:
	.ascii "<SB> SEND-0x%02x -> [%08x:%d] [pid=--------]\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "friend IP:%x, port:%d\n"
	.byte 0x00
	.byte 0x00
	.ascii "Succeeded NN reservation.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Server IP:%x, port:%d\n"
	.byte 0x00
	.byte 0x00
	.ascii "But some clients are not friends.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Closed all connections. Begin NN to %u\n"
	.byte 0x00
	.ascii "Reservation was denied by %u.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Game server is fully occupied.\n"
	.byte 0x00
	.ascii "NN parent is behind same NAT as me. Received IP %x & port %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80448A78
lbl_80448A78:
	.ascii "But already canceled reservation.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Ignore delayed NEW_PID_AID command.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "profileID %d is acceptable? - %d.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Received new client's profileID = %u & aid = %d.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Ignore delayed LINK_CLS_REQ command.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Resend command %d for delayed command %d.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Client IP:%x, port:%d\n"
	.byte 0x00
	.byte 0x00
	.ascii "Next, try to connect to %u.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Ignore delayed command %d.\n"
	.byte 0x00
	.ascii "Ignore delayed CLOSE_LINK command.\n"
	.byte 0x00
	.ascii "Received close command. Next try to %u.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Received close command. Server %u or its clients are not friends.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Ignore delayed CANCEL command.\n"
	.byte 0x00
	.ascii "Received cancel command from %u data[0] = %d.\n"
	.byte 0x00
	.byte 0x00
	.ascii "numHost nn=%d gt2=%d, state %d\n"
	.byte 0x00
	.ascii "Close shutdown client.\n"
	.byte 0x00
	.ascii "[OPT_MIN_COMP] time is %lu.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "New client was accepted? - %d.\n"
	.byte 0x00
	.ascii "Received unexpected matching command 0x%02x.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80448D50
lbl_80448D50:
	.4byte 0x8032A778, 0x80328E28, 0x8032909C, 0x8032950C
	.4byte 0x803296D8, 0x803297C4, 0x80329828, 0x80329930
	.4byte 0x80329AF8, 0x80329D68, 0x80329DD8, 0x80328E28
	.4byte 0x80329FE0, 0x8032A0CC, 0x8032A0CC, 0x8032A0CC
	.4byte 0x8032A104, 0x8032A1B4, 0x8032A2D4, 0x8032A378
	.4byte 0x8032A778, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A778, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A778, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A4C8, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A778, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A778, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A778, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A778, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A778, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A778, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A778, 0x8032A778, 0x8032A778, 0x8032A778
	.4byte 0x8032A700, 0x8032A78C
.global lbl_80448E58
lbl_80448E58:
	.ascii "This friend doesn't exist in friendIdxList.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80448E88
lbl_80448E88:
	.ascii "Delay ResvCommand - qr2IP & qr2Port = 0.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "DWCi_CancelPreConnectedServerProcess : client\n"
	.byte 0x00
	.byte 0x00
	.ascii "DWCi_CancelPreConnectedServerProcess : server\n"
	.byte 0x00
	.byte 0x00
.global lbl_80448F14
lbl_80448F14:
	.ascii "Sent CANCEL SYN %d command to %u.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Close all connection and restart matching.\n"
	.byte 0x00
	.ascii "Cancel and restart client process.\n"
	.byte 0x00
	.ascii "Cancel and retry to reserve.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Send client-client link request.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Tell new client completion of matching.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "FRIEND_ACCEPT command droped.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Completed matching!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "[OPT_SC_BLOCK] Connect block start!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80449058
lbl_80449058:
	.ascii "CANCEL! state %d, numHost nn=%d gt2=%d.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80449084
lbl_80449084:
	.ascii "ERROR - DWCi_RestartFromCancel : matchType %d, level %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804490C0
lbl_804490C0:
	.ascii "Sent SYN %d packet to aid %d.\n"
	.byte 0x00
	.byte 0x00
	.ascii "[SYN] No ACK from server %d/%d.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Timeout: [SYN] Connection to server was shut down.\n"
	.byte 0x00
	.ascii "Timeout: wait SYN-ACK (aidbitmap 0x%x). Restart matching.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Received CANCEL SYN %d command from %u.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Ignore delayed CANCEL SYN.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804491C0
lbl_804491C0:
	.ascii "Timeout: wait cancel SYN-ACK (aidbitmap 0x%x).\n"
	.byte 0x00
	.ascii "[OPT_MIN_COMP] Timeout occured in all hosts.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "[OPT_MIN_COMP] Some clients is in time.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "[OPT_MIN_COMP] Timeout: wait poll-ACK %d/%d.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "[OPT_MIN_COMP] Timeout: aidbitmap 0x%x. Restart matching.\n"
	.byte 0x00
	.byte 0x00
	.ascii "[OPT_MIN_COMP] Poll timeout (my time is %lu).\n"
	.byte 0x00
	.byte 0x00
.global lbl_804492E8
lbl_804492E8:
	.ascii "Match, GP error %d\n"
	.byte 0x00
.global lbl_804492FC
lbl_804492FC:
	.ascii "Match, SB error %d\n"
	.byte 0x00
.global lbl_80449310
lbl_80449310:
	.ascii "Match, QR2 error %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80449328
lbl_80449328:
	.ascii "Match, NN error %d\n"
	.byte 0x00
	.ascii "Match, NN result %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NN Ping Timeout\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80449368
lbl_80449368:
	.ascii "Match, GT2 error %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80449380
lbl_80449380:
	.incbin "baserom.dol", 0x445480, 0x228
.global lbl_804495A8
lbl_804495A8:
	.ascii "Server[%d] is selected (%d/100: rand %d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804495D4
lbl_804495D4:
	.ascii "QR2, Received ServerKeyReq : keyID %d - %d\n"
	.byte 0x00
.global lbl_80449600
lbl_80449600:
	.ascii "QR2, Received KeyListReq : keytype %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_80449628
lbl_80449628:
	.ascii "QR2 Failed query addition to master server %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_80449658
lbl_80449658:
	.ascii "Got my query IP %08x & port %d.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044967C
lbl_8044967C:
	.ascii "Got NN request, cookie = %x.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Ignore delayed SB matching command.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Got undefined SBcommand.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Got different version SBcommand.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<SB> RECV-0x%02x <- [%08x:%d] [pid=%u]\n"
	.byte 0x00
.global lbl_80449730
lbl_80449730:
	.ascii "NN, Got state update: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NN, Complete NAT Negotiation. result : %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "NN cookie = %x.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Ignore delayed NN after cancel.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NN, remote address : %s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NN child finished Nat Negotiation.\n"
	.byte 0x00
	.ascii "gt2Connect() to pidList[%d] (%s)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NN parent finished Nat Negotiation.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Ignore delayed NN error after cancel.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Failed %d/%d NN send.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Abort NN.\n"
	.byte 0x00
	.byte 0x00
	.ascii "NN failure %d/%d.\n"
	.byte 0x00
	.byte 0x00
	.ascii "Failed %d/%d NN recv.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804498B8
lbl_804498B8:
	.ascii "aid %d is unavailable.\n"
	.byte 0x00
	.ascii "+++ Cannot send to %d from %d (busy)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "+++ Cannot send to %d from %d (outgoing buffer is not enough) %d < %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_80449940
lbl_80449940:
	.ascii "aid %d is now unavailable.\n"
	.byte 0x00
.global lbl_8044995C
lbl_8044995C:
	.ascii "+++ SendUnreliable size is too large ( %d > %d )\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80449990
lbl_80449990:
	.ascii "+++ Cannot set recv buffer\n"
	.byte 0x00
.global lbl_804499AC
lbl_804499AC:
	.ascii "DWC_Ping:not connected yet:%d\n"
	.byte 0x00
	.byte 0x00
.global lbl_804499CC
lbl_804499CC:
	.ascii "Recv NULL message %x, size = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804499F0
lbl_804499F0:
	.ascii "Recv data size is too large (%d > %d)\n"
	.byte 0x00
	.byte 0x00
	.ascii "DWCi_TransportProcess:timeout aid=%d,time=%d[ms],timeout time=%d[ms]\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "DWCi_TransportProcess:freeSpace < sendSize:aid:%d, %d < %d\n"
	.byte 0x00
	.ascii "+++ Recv buffer is not set\n"
	.byte 0x00
	.ascii "+++ Recv size is too large ( buffer size = %d < %d )\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Recv error (state is %d).\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80449B10
lbl_80449B10:
	.ascii "+++ Invalid header from aid %d\n"
	.byte 0x00
.global lbl_80449B30
lbl_80449B30:
	.ascii "Received system header.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80449B50
lbl_80449B50:
	.ascii "Recv buffer over flow.\n"
	.byte 0x00
.global lbl_80449B68
lbl_80449B68:
	.ascii "aid = %d size = %d/%d state = %d incoming buffer = %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_80449BA0
lbl_80449BA0:
	.ascii " get console friend code = %016lld\n"
	.byte 0x00
	.ascii " failed to get console friend code.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " failed to open NWC24.[%d]\n"
	.byte 0x00
.global lbl_80449C08
lbl_80449C08:
	.ascii "0123456789abcdefghijklmnopqrstuv"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80449C2C
lbl_80449C2C:
	.ascii "%s%c%c%c%c%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%08x: %08x\n"
	.byte 0x00
	.ascii "invalid\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " GS_ID : %d (ok)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " GS_ID : %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " F_KEY : %s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " LN_ID : %s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " NO_DATA \n"
	.byte 0x00
	.byte 0x00
	.ascii "*******************************\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " [pseudo login id]\n"
	.byte 0x00
	.ascii "+++++++++++++++++++++++++++++++\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " [authentic login id]\n"
	.byte 0x00
	.byte 0x00
.global lbl_80449D18
lbl_80449D18:
	.incbin "baserom.dol", 0x445E18, 0x100
.global lbl_80449E18
lbl_80449E18:
	.ascii "NHTTPDestroyResponse()\n"
	.byte 0x00
	.ascii " read userid = %llu\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " illigal size userid read = %d\n"
	.byte 0x00
	.ascii " delete illegal userid.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " acctcreate timeout.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " illigal size userid write = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " login timeout.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80449ED4
lbl_80449ED4:
	.incbin "baserom.dol", 0x445FD4, 0x4D4
.global lbl_8044A3A8
lbl_8044A3A8:
	.ascii "DWCi_Auth_EndProcess()\n"
	.byte 0x00
.global lbl_8044A3C0
lbl_8044A3C0:
	.ascii " NAND access failed.[%d]\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A3E0
lbl_8044A3E0:
	.incbin "baserom.dol", 0x4464E0, 0x40
.global lbl_8044A420
lbl_8044A420:
	.ascii "localhost"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A430
lbl_8044A430:
	.ascii "%s.available.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A458
lbl_8044A458:
	.ascii "Invalid func."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A468
lbl_8044A468:
	.ascii "No callback."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Nick too long."
	.byte 0x00
	.byte 0x00
	.ascii "Uniquenick too long."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Email too long."
	.byte 0x00
	.ascii "Password too long."
	.byte 0x00
	.byte 0x00
	.ascii "Desirednick too long."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A4DC
lbl_8044A4DC:
	.ascii "The connection has already been disconnected."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid nick."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid profile."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid reason."
	.byte 0x00
	.ascii "\\addbuddy\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\sesskey\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\newprofileid\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\reason\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A578
lbl_8044A578:
	.ascii "Invalid status."
	.byte 0x00
.global lbl_8044A588
lbl_8044A588:
	.ascii "Invalid index."
	.byte 0x00
	.byte 0x00
	.ascii "Invalid statusString."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid locationString."
	.byte 0x00
	.ascii "\\status\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\statstring\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\locstring\\"
	.byte 0x00
.global lbl_8044A5F0
lbl_8044A5F0:
	.ascii "Invalid message."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid numProductIDs."
	.byte 0x00
	.byte 0x00
	.ascii "Invalid productIDs."
	.byte 0x00
	.ascii "\\inviteto\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\products\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\pinvite\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\profileid\\"
	.byte 0x00
	.ascii "\\productid\\"
	.byte 0x00
	.ascii "\\location\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\revoke\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A688
lbl_8044A688:
	.ascii "There was an error reading from the server."
	.byte 0x00
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
	.ascii "The server has closed the connection."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid state."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A700
lbl_8044A700:
	.ascii "Unexpected data was received from the server."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
	.ascii "|signed|"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A74C
lbl_8044A74C:
	.ascii "\\sesskey\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid profile."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\authadd\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\fromprofileid\\"
	.byte 0x00
	.ascii "\\delbuddy\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\delprofileid\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A7A8
lbl_8044A7A8:
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
.global lbl_8044A7B8
lbl_8044A7B8:
	.ascii "There was an error sending on a socket."
	.byte 0x00
.global lbl_8044A7E0
lbl_8044A7E0:
	.ascii "There was an error reading from a socket."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044A810
lbl_8044A810:
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
.global lbl_8044A820
lbl_8044A820:
	.ascii "gpcm.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "There was an error creating a socket."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "There was an error making a socket non-blocking."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "There was an error binding a socket."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "There was an error listening on a socket."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "There was an error getting a socket's addres."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Could not resolve connection mananger host name."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "There was an error connecting a socket."
	.byte 0x00
	.ascii "Invalid connection."
	.byte 0x00
	.ascii "Invalid firewall."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
	.byte 0x00
	.byte 0x00
	.ascii "%s%s%s%s%s%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "                                                "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\challenge\\"
	.byte 0x00
	.ascii "\\authtoken\\"
	.byte 0x00
	.ascii "\\uniquenick\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\userid\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\profileid\\"
	.byte 0x00
	.ascii "\\partnerid\\"
	.byte 0x00
	.ascii "\\response\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\firewall\\1"
	.byte 0x00
	.ascii "\\productid\\"
	.byte 0x00
	.ascii "\\gamename\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\namespaceid\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\sdkrevision\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\newuser\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\passwordenc\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\cdkeyenc\\"
	.byte 0x00
	.byte 0x00
	.ascii "Unexpected data was received from the server."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Unexepected data was received from the server."
	.byte 0x00
	.byte 0x00
	.ascii "\\sesskey\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Could not authenticate server."
	.byte 0x00
	.byte 0x00
.global lbl_8044ABAC
lbl_8044ABAC:
	.ascii "The server has refused the connection."
	.byte 0x00
	.byte 0x00
.global lbl_8044ABD4
lbl_8044ABD4:
	.ascii "\\logout\\\\sesskey\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044ABE8
lbl_8044ABE8:
	.incbin "baserom.dol", 0x446CE8, 0x64
.global lbl_8044AC4C
lbl_8044AC4C:
	.ascii "\\profileid\\"
	.byte 0x00
	.ascii "\\uniquenick\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\firstname\\"
	.byte 0x00
	.ascii "\\lastname\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\icquin\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\homepage\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\zipcode\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\countrycode\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\birthday\\"
	.byte 0x00
	.byte 0x00
	.ascii "Invalid date."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
	.ascii "\\updatepro\\\\sesskey\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\partnerid\\"
	.byte 0x00
	.ascii "\\updateui\\\\sesskey\\"
	.byte 0x00
	.ascii "Invalid zipcode."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid sex."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\cpubrandid\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\cpuspeed\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\memory\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\videocard1ram\\"
	.byte 0x00
	.ascii "\\videocard2ram\\"
	.byte 0x00
	.ascii "\\connectionid\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\connectionspeed\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\hasnetwork\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid info."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044ADCC
lbl_8044ADCC:
	.incbin "baserom.dol", 0x446ECC, 0xD0
.global lbl_8044AE9C
lbl_8044AE9C:
	.incbin "baserom.dol", 0x446F9C, 0x8C
.global lbl_8044AF28
lbl_8044AF28:
	.ascii "\\getprofile\\\\sesskey\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044AF40
lbl_8044AF40:
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
.global lbl_8044AF50
lbl_8044AF50:
	.ascii "Error connecting to a peer."
	.byte 0x00
	.ascii "Error getting buddy authorization."
	.byte 0x00
	.byte 0x00
	.ascii "Error parsing buddy message."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044AFB0
lbl_8044AFB0:
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
	.ascii "There was an error creating a socket."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "There was an error making a socket non-blocking."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "There was an error connecting a socket."
	.byte 0x00
.global lbl_8044B048
lbl_8044B048:
	.ascii "\\m\\%d\\xfer\\%d %u %u"
	.byte 0x00
.global lbl_8044B05C
lbl_8044B05C:
	.ascii "\\len\\%d\\msg\\\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B070
lbl_8044B070:
	.ascii "gp.info"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B174
lbl_8044B174:
	.ascii "Unexpected data was received from the server."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\profileid\\"
	.byte 0x00
.global lbl_8044B1B0
lbl_8044B1B0:
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
	.ascii "Invalid nick."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid replace."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\newprofile\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\sesskey\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\replace\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\oldnick\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\delprofile\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B228
lbl_8044B228:
	.ascii "gpsp.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B268
lbl_8044B268:
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
	.ascii "There was an error creating a socket."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "There was an error making a socket non-blocking."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Could not resolve search mananger host name."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "There was an error connecting a socket."
	.byte 0x00
.global lbl_8044B330
lbl_8044B330:
	.ascii "No search criteria."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid e-mail."
	.byte 0x00
	.ascii "Invalid password."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "The search timed out"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Could not connect to the search manager."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\search\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\sesskey\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\profileid\\"
	.byte 0x00
	.ascii "\\namespaceid\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\partnerid\\"
	.byte 0x00
	.ascii "\\uniquenick\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\firstname\\"
	.byte 0x00
	.ascii "\\lastname\\"
	.byte 0x00
	.byte 0x00
	.ascii "\\icquin\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\passenc\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\pmatch\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\productid\\"
	.byte 0x00
	.ascii "\\newuser\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\productID\\"
	.byte 0x00
	.ascii "\\others\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\uniquesearch\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\\preferrednick\\"
	.byte 0x00
	.ascii "\\gamename\\"
	.byte 0x00
	.byte 0x00
	.ascii "There was an error reading from the server."
	.byte 0x00
	.ascii "uniquenick"
	.byte 0x00
	.byte 0x00
	.ascii "firstname"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "lastname"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Error reading from the search server."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "statuscode"
	.byte 0x00
	.byte 0x00
.global lbl_8044B520
lbl_8044B520:
	.ascii "\\version\\%d\\result\\%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B538
lbl_8044B538:
	.ascii "%d %u %u"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B548
lbl_8044B548:
	.ascii "Unexpected data was received from the server."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B578
lbl_8044B578:
	.ascii "Out of memory."
	.byte 0x00
	.byte 0x00
.global lbl_8044B588
lbl_8044B588:
	.ascii "\\errmsg\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B598
lbl_8044B598:
	.ascii "There was an error checking for a completed connection."
	.byte 0x00
.global lbl_8044B5D0
lbl_8044B5D0:
	.ascii "Parse Error."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B5E0
lbl_8044B5E0:
	.ascii "3b8dd8995f7c40a9a5c5b7dd5b481341"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B608
lbl_8044B608:
	.incbin "baserom.dol", 0x447708, 0x394
.global lbl_8044B99C
lbl_8044B99C:
	.ascii "%s.master.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044B9C0
lbl_8044B9C0:
	.ascii "No challenge value was received from the master server."
	.byte 0x00
.global lbl_8044B9F8
lbl_8044B9F8:
	.ascii "255.255.255.255"
	.byte 0x00
.global lbl_8044BA08
lbl_8044BA08:
	.ascii "splitnum"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044BA14
lbl_8044BA14:
	.ascii "%08X%04X"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044BA20
lbl_8044BA20:
	.incbin "baserom.dol", 0x447B20, 0x158
.global lbl_8044BB78
lbl_8044BB78:
	.incbin "baserom.dol", 0x447C78, 0x3F8
.global lbl_8044BF70
lbl_8044BF70:
	.ascii "https://"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044BF80
lbl_8044BF80:
	.ascii "https://"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044BF8C
lbl_8044BF8C:
	.ascii "666666666666666666666666666666666666666666666666"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044BFC0
lbl_8044BFC0:
	.ascii "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044BFF8
lbl_8044BFF8:
	.ascii "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_@-.*"
	.byte 0x00
	.ascii "application/dime"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "multipart/form-data; boundary=Qr4G823s23d---<<><><<<>--7d118e0536"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "text/xml"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "application/x-www-form-urlencoded"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C0C4
lbl_8044C0C4:
	.ascii "--Qr4G823s23d---<<><><<<>--7d118e0536"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "http://schemas.xmlsoap.org/soap/envelope/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C118
lbl_8044C118:
	.ascii "0123456789ABCDEF"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%sContent-Disposition: form-data; name=\"%s\"\r\n\r\n"
	.byte 0x00
	.ascii "--Qr4G823s23d---<<><><<<>--7d118e0536\r\n"
	.byte 0x00
	.ascii "\r\n--Qr4G823s23d---<<><><<<>--7d118e0536\r\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%sContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: %s\r\n\r\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C208
lbl_8044C208:
	.ascii "\r\n--Qr4G823s23d---<<><><<<>--7d118e0536--\r\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C238
lbl_8044C238:
	.ascii "https://"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " HTTP/1.1\r\n"
	.byte 0x00
	.ascii "User-Agent"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GameSpyHTTP/1.0"
	.byte 0x00
	.ascii "Connection"
	.byte 0x00
	.byte 0x00
	.ascii "Keep-Alive"
	.byte 0x00
	.byte 0x00
	.ascii "Content-Length"
	.byte 0x00
	.byte 0x00
	.ascii "Content-Type"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C2A8
lbl_8044C2A8:
	.ascii "HTTP/%d.%d %d%n"
	.byte 0x00
	.ascii "Location:"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "http://%s:%d%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Content-Length:"
	.byte 0x00
	.ascii "Transfer-Encoding: chunked"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C308
lbl_8044C308:
	.byte 0x00
	.ascii "ameSpy3D"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C318
lbl_8044C318:
	.byte 0x00
	.ascii "rojectAphex"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "final\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C338
lbl_8044C338:
	.incbin "baserom.dol", 0x448438, 0xD8
.global lbl_8044C410
lbl_8044C410:
	.incbin "baserom.dol", 0x448510, 0x140
.global lbl_8044C550
lbl_8044C550:
	.float 1.9816686680937357e-27, 5.605193857299268e-44, 2.8432847216347145e-20, 0.5043182373046875
.global lbl_8044C560
lbl_8044C560:
	.ascii "natneg1.gs.nintendowifi.net"
	.byte 0x00
	.ascii "natneg2.gs.nintendowifi.net"
	.byte 0x00
	.ascii "natneg3.gs.nintendowifi.net"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C5B8
lbl_8044C5B8:
	.ascii "\\basic\\\\info\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C5C8
lbl_8044C5C8:
	.ascii "\\status\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C5D4
lbl_8044C5D4:
	.ascii "splitnum"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C5E0
lbl_8044C5E0:
	.ascii "splitnum"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C5F0
lbl_8044C5F0:
	.incbin "baserom.dol", 0x4486F0, 0x30
.global lbl_8044C620
lbl_8044C620:
	.ascii "%s.ms%d.gs.nintendowifi.net"
	.byte 0x00
	.ascii "\\echo\\test"
	.byte 0x00
	.byte 0x00
.global lbl_8044C648
lbl_8044C648:
	.ascii "-------------------------------- TRACE\n"
	.byte 0x00
	.ascii "Address:   BackChain   LR save\n"
	.byte 0x00
	.ascii "%08X:  %08X    %08X "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044C6A8
lbl_8044C6A8:
	.ascii "%s:%d Panic:"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s:%d Warning:"
	.byte 0x00
	.byte 0x00
.global lbl_8044C6C8
lbl_8044C6C8:
	.float 0.0, 0.0, -4.976918888222308e-39, -4.977008571324025e-39
	.float -4.9774345660571794e-39
.global lbl_8044C6DC
lbl_8044C6DC:
	.float 0.0, 0.0, -4.9756969559614167e-39, -4.9757866390631334e-39
	.float -4.976212633796288e-39
.global lbl_8044C6F0
lbl_8044C6F0:
	.float 0.0, 0.0, -4.980679973300556e-39, -4.9793291215809466e-39
	.float -4.9794972773966656e-39, -4.9796093812738115e-39, -4.97979995786496e-39, -4.97811839970777e-39
	.float -4.978124004901627e-39, -4.980668762912841e-39, -4.980635131749697e-39, -4.980612710974268e-39
	.float -4.9806015005865535e-39, -4.980579079811124e-39, -4.98056786942341e-39, -4.980556659035695e-39
	.float -4.980646342137412e-39, -4.980405318801548e-39, -4.9804165291892626e-39, -4.980427739576977e-39
	.float -4.980623921361983e-39, -4.980590290198839e-39, -4.9806575525251265e-39, -4.980141874690255e-39
	.float -4.9802259525981145e-39, 0.0
.global lbl_8044C758
lbl_8044C758:
	.float 0.0, 0.0, -4.981515147185293e-39, -4.9810331005135656e-39
	.float -4.9794972773966656e-39, -4.981156414778426e-39, -4.981503936797579e-39, -4.97811839970777e-39
	.float -4.978124004901627e-39, -4.980668762912841e-39, -4.9814815160221495e-39, -4.980612710974268e-39
	.float -4.9806015005865535e-39, -4.980579079811124e-39, -4.98056786942341e-39, -4.980556659035695e-39
	.float -4.980646342137412e-39, -4.980405318801548e-39, -4.9804165291892626e-39, -4.980427739576977e-39
	.float -4.980623921361983e-39, -4.980590290198839e-39, -4.9806575525251265e-39, -4.981318965400288e-39
	.float -4.981492726409864e-39, 0.0
.global lbl_8044C7C0
lbl_8044C7C0:
	.incbin "baserom.dol", 0x4488C0, 0x30
.global lbl_8044C7F0
lbl_8044C7F0:
	.incbin "baserom.dol", 0x4488F0, 0x68
.global lbl_8044C858
lbl_8044C858:
	.float 0.0, 0.0, -4.981963562693877e-39, -4.982070061377166e-39
	.float -4.982086876958738e-39, -4.98210369254031e-39, -4.9821205081218816e-39, -4.982148534091168e-39
	.float -4.9821765600604546e-39, -4.982198980835884e-39, -4.982221401611313e-39, -4.982243822386742e-39
	.float -4.982255032774457e-39, -4.982277453549886e-39, -4.982299874325315e-39, -4.982333505488459e-39
	.float -4.9823783470393174e-39, -4.982591344405895e-39, -4.9826081599874667e-39, -4.9827146586707553e-39
	.float -4.983045365108336e-39, -4.983275178056485e-39
.global lbl_8044C8B0
lbl_8044C8B0:
	.float 0.0, 0.0, -4.984037484421078e-39, -4.982070061377166e-39
	.float -4.982086876958738e-39, -4.98210369254031e-39, -4.9821205081218816e-39, -4.982148534091168e-39
	.float -4.9821765600604546e-39, -4.982198980835884e-39, -4.982221401611313e-39, -4.982243822386742e-39
	.float -4.982255032774457e-39, -4.982277453549886e-39, -4.982299874325315e-39, -4.982333505488459e-39
	.float -4.9823783470393174e-39, -4.982591344405895e-39, -4.9826081599874667e-39, -4.9827146586707553e-39
	.float -4.983045365108336e-39, -4.983275178056485e-39
.global lbl_8044C908
lbl_8044C908:
	.incbin "baserom.dol", 0x448A08, 0x28
.global lbl_8044C930
lbl_8044C930:
	.float 0.0, 0.0, -5.040016555473926e-39, -5.039926872372209e-39
	.float -5.036289101558822e-39, -5.034293652545623e-39, -5.034327283708767e-39, -5.034977486196214e-39
	.float -5.035879922407239e-39, -5.035913553570383e-39, -5.0382116830518754e-39, 0.0
	.float -5.036277891171107e-39, -5.038839464763893e-39, -5.038901121896323e-39, -5.0391309348444725e-39
	.float -5.039142145232187e-39, -5.039153355619902e-39, -5.039164566007616e-39, -5.038727360886747e-39
	.float -5.039444825700481e-39, -5.0395625347714845e-39, -5.039646612679344e-39, 0.0
	.float 0.0, -5.033901288975612e-39, 0.0, 0.0
.global lbl_8044C9A0
lbl_8044C9A0:
	.float 0.0, 0.0, -4.981515147185293e-39, -5.0494725175111896e-39
	.float -4.9794972773966656e-39, -5.049164231849038e-39, -4.981503936797579e-39, -4.97811839970777e-39
	.float -4.978124004901627e-39, -4.980668762912841e-39, -4.9814815160221495e-39, -4.980612710974268e-39
	.float -4.9806015005865535e-39, -4.980579079811124e-39, -4.98056786942341e-39, -4.980556659035695e-39
	.float -5.0494164655726166e-39, -5.0492258889814685e-39, -4.9804165291892626e-39, -4.980427739576977e-39
	.float -4.980623921361983e-39, -4.980590290198839e-39, -5.049427675960331e-39, -4.981318965400288e-39
	.float -4.981492726409864e-39, 0.0
.global lbl_8044CA08
lbl_8044CA08:
	.float 0.0, 0.0, -5.047662039895282e-39, -5.049461307123475e-39
	.float -5.0494500967357604e-39, -5.0489624448701754e-39, -5.0484243462598747e-39, -5.0486821851773104e-39
.global lbl_8044CA28
lbl_8044CA28:
	.float 0.0, 0.0, -3.438209096485799e-39, -5.0534409947621575e-39
	.float -5.0536820180980214e-39, -5.05428737903461e-39, -5.053418573986728e-39, -5.053429784374443e-39
.global lbl_8044CA48
lbl_8044CA48:
	.float 0.0, 0.0, -3.4383828574953755e-39, -5.054965607491343e-39
	.float -5.055206630827207e-39, -5.055789570988366e-39, -5.054943186715914e-39, -5.054954397103628e-39
.global lbl_8044CA68
lbl_8044CA68:
	.float 0.0, 0.0, -3.4376878134570704e-39, -5.056165118976805e-39
	.float -5.056406142312669e-39, -5.057190869452691e-39, -5.056142698201376e-39, -5.0561539085890904e-39
.global lbl_8044CA88
lbl_8044CA88:
	.float 0.0, 0.0, -3.437861574466647e-39, -5.05756641744113e-39
	.float -5.0578074407769936e-39, -5.0585921679170155e-39, -5.0575439966657006e-39, -5.057555207053415e-39
.global lbl_8044CAA8
lbl_8044CAA8:
	.float 0.0, 0.0, -3.438035335476223e-39, -5.0589677159054546e-39
	.float -5.0592087392413185e-39, -5.0599205988611955e-39, -5.0589452951300254e-39, -5.05895650551774e-39
.global lbl_8044CAC8
lbl_8044CAC8:
	.ascii "#%08x[%d]: printvar %sVAR_%d(%d) = %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_8044CAF0
lbl_8044CAF0:
	.float -5.0642309929374586e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.065189481087057e-39
	.float -5.0652791641887736e-39, -5.065301584964203e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.064219782549744e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.064354307202319e-39
	.float -5.0642870448760316e-39, -5.064309465651461e-39, -5.0643206760391754e-39, -5.06433188642689e-39
	.float -5.0643430968146046e-39, -5.0643991487531776e-39, -5.064410359140892e-39, -5.0647746967416166e-39
	.float -5.0648307486801896e-39, -5.064449595497893e-39, -5.0645112526303236e-39, -5.064572909762754e-39
	.float -5.0645841201504685e-39, -5.0648643798433334e-39, -5.064438385110179e-39, -5.0646794084460425e-39
	.float -5.064690618833757e-39, -5.064701829221472e-39, -5.0647130396091863e-39, -5.065436109616778e-39
	.float -5.064298255263746e-39, -5.064948457751193e-39, -5.064387938365463e-39, -5.06489240581262e-39
	.float -5.0649036162003345e-39, -5.064914826588049e-39, -5.064937247363478e-39, -5.064371122783891e-39
	.float -5.0642646241006024e-39, -5.064926036975764e-39, -5.064724249996901e-39, -5.064595330538183e-39
	.float -5.0642085721620294e-39, -5.0666468314899546e-39, -5.064617751313612e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39
	.float -5.0666468314899546e-39, -5.0666468314899546e-39, -5.0666468314899546e-39, -5.06551458233078e-39
	.float -5.065380057678205e-39, 0.0
.global lbl_8044CCE8
lbl_8044CCE8:
	.float 0.0, 0.0, -5.064090863091026e-39, -5.0666804626530984e-39
.global lbl_8044CCF8
lbl_8044CCF8:
	.float 0.0, 0.0, -5.067369901497546e-39, -5.06734187552826e-39
.global lbl_8044CD08
lbl_8044CD08:
	.float 0.0, 0.0, -5.0678239221999874e-39, -5.067493215762407e-39
	.float -5.0676389508026966e-39, -5.067812711812273e-39
.global lbl_8044CD20
lbl_8044CD20:
	.float 0.0, 0.0, -5.0723641292244e-39, -5.0741185549017345e-39
	.float -5.074281105523596e-39, -5.074634232736606e-39, -5.061798338803391e-39, -5.061770312834104e-39
	.float -5.061742286864818e-39, 0.0, 0.0, -5.0782607931622787e-39
	.float -5.061837575160392e-39, -5.061826364772677e-39, 0.0, 0.0
	.float -5.078272003549993e-39, -5.061859995935821e-39, -5.0617366816709604e-39, -5.0618487855481064e-39
	.float -5.0753573027441976e-39, -5.061731076477103e-39, -5.0782551879684214e-39, -5.0617030505078166e-39
	.float -5.061708655701674e-39, 0.0
.global lbl_8044CD88
lbl_8044CD88:
	.float 0.0, 0.0, -5.080850392724351e-39, -5.079819037054608e-39
	.float -5.036289101558822e-39, -5.034293652545623e-39, -5.034327283708767e-39, -5.034977486196214e-39
	.float -5.035879922407239e-39, -5.035913553570383e-39, -5.0795107513924564e-39, -5.0808391823366363e-39
	.float -5.036277891171107e-39, -5.038839464763893e-39, -5.038901121896323e-39, -5.0391309348444725e-39
	.float -5.039142145232187e-39, -5.039153355619902e-39, -5.039164566007616e-39, -5.079992798064184e-39
	.float -5.039444825700481e-39, -5.0395625347714845e-39, -5.039646612679344e-39, -5.0803178993079075e-39
	.float -5.080345925277194e-39, -5.078625130763003e-39, -5.080816761561207e-39, -5.080827971948922e-39
.global lbl_8044CDF8
lbl_8044CDF8:
	.float 0.0, 0.0, -5.0785018164981425e-39, -5.0803571356649086e-39
	.float -5.080704657684061e-39, -5.080755104428777e-39
.global lbl_8044CE10
lbl_8044CE10:
	.incbin "baserom.dol", 0x448F10, 0x10
.global lbl_8044CE20
lbl_8044CE20:
	.float 0.0, 0.0, -5.0876607032609695e-39, 0.0
	.float 0.0, -5.0909565572490615e-39, -5.090945346861347e-39, -5.0878849110152615e-39
	.float -5.0907715858517706e-39, -5.0909173208920604e-39
.global lbl_8044CE48
lbl_8044CE48:
	.incbin "baserom.dol", 0x448F48, 0x20
.global lbl_8044CE68
lbl_8044CE68:
	.float 0.0, 0.0, -5.101438269762211e-39, -5.1104570266786057e-39
	.float -5.110574735749609e-39, 0.0, 0.0, -5.1116173018070666e-39
	.float -5.111606091419352e-39, -5.1115948810316374e-39, -5.1066735208249287e-39, -5.111460356379062e-39
.global lbl_8044CE98
lbl_8044CE98:
	.float 0.0, 0.0, -5.1008441192133374e-39, -5.1111072291660524e-39
.global lbl_8044CEA8
lbl_8044CEA8:
	.float 0.0, 0.0, -5.1007544361116206e-39, -5.110692444820612e-39
.global lbl_8044CEB8
lbl_8044CEB8:
	.float 0.0, 0.0, -5.111471566766777e-39, -5.112301135457657e-39
.global lbl_8044CEC8
lbl_8044CEC8:
	.incbin "baserom.dol", 0x448FC8, 0x58
.global lbl_8044CF20
lbl_8044CF20:
	.float 0.0, 0.0, -5.1271436887917856e-39, -5.128090966553669e-39
	.float -5.1291447429988414e-39, -5.1295371065688524e-39, -5.139077146513976e-39, -5.139065936126261e-39
	.float -5.1390547257385465e-39, 0.0, 0.0, -5.139121988064834e-39
	.float -5.1391107776771195e-39, -5.139099567289405e-39, -5.1390883569016903e-39, -5.139021094575403e-39
	.float -5.13902669976926e-39, -5.1390323049631173e-39
.global lbl_8044CF68
lbl_8044CF68:
	.float 0.0, 0.0, -5.127020374526925e-39, -5.1383204453432403e-39
	.float -5.138589494648391e-39, -5.138785676433396e-39
.global lbl_8044CF80
lbl_8044CF80:
	.float 0.0, 0.0, -5.1268970602620644e-39, -5.137866424640799e-39
	.float -5.137978528517945e-39, -5.1379841337118024e-39
.global lbl_8044CF98
lbl_8044CF98:
	.float 0.0, 0.0, -5.140259842417866e-39, -5.13973295419528e-39
	.float -5.036289101558822e-39, -5.034293652545623e-39, -5.034327283708767e-39, -5.034977486196214e-39
	.float -5.035879922407239e-39, -5.035913553570383e-39, -5.139514351634845e-39, -5.140248632030151e-39
	.float -5.036277891171107e-39, -5.038839464763893e-39, -5.038901121896323e-39, -5.0391309348444725e-39
	.float -5.039142145232187e-39, -5.039153355619902e-39, -5.039164566007616e-39, -5.1398618736539976e-39
	.float -5.039444825700481e-39, -5.0395625347714845e-39, -5.039646612679344e-39, -5.140186974897721e-39
	.float -5.1402150008670075e-39, -5.033901288975612e-39, -5.140226211254722e-39, -5.140237421642437e-39
.global lbl_8044D008
lbl_8044D008:
	.4byte 0x80381FCC, 0x80381FD4, 0x80381FE4, 0x80381FF8
	.4byte 0x80382004, 0x80382014, 0x80382028, 0x80382034
	.4byte 0x80382048
.global lbl_8044D02C
lbl_8044D02C:
	.float 0.0, 0.0, -5.143561301599815e-39, -5.157490208335204e-39
	.float -5.157024977245048e-39
.global lbl_8044D040
lbl_8044D040:
	.float -5.899191880308472e-39, -5.900632415129798e-39, -5.902072949951124e-39, 0.0
.global lbl_8044D050
lbl_8044D050:
	.float 0.0, 0.0, -5.1634373190177984e-39, -5.162927246376784e-39
	.float -5.036289101558822e-39, -5.034293652545623e-39, -5.034327283708767e-39, -5.034977486196214e-39
	.float -5.035879922407239e-39, -5.035913553570383e-39, -5.1627086438163494e-39, -5.163426108630084e-39
	.float -5.036277891171107e-39, -5.038839464763893e-39, -5.038901121896323e-39, -5.0391309348444725e-39
	.float -5.039142145232187e-39, -5.039153355619902e-39, -5.039164566007616e-39, -5.16303935025393e-39
	.float -5.039444825700481e-39, -5.0395625347714845e-39, -5.039646612679344e-39, -5.1633644514976535e-39
	.float -5.16339247746694e-39, -5.033901288975612e-39, -5.1634036878546546e-39, -5.163414898242369e-39
.global lbl_8044D0C0
lbl_8044D0C0:
	.float 0.0, 0.0, -5.162400358154198e-39, -5.1656513705914316e-39
	.float -5.165813921213293e-39, -5.166167048426303e-39, -5.1700682633509834e-39, -5.170040237381697e-39
	.float -5.1700122114124104e-39, 0.0, 0.0, -5.170118710095699e-39
	.float -5.1701074997079845e-39, -5.17009628932027e-39, 0.0, 0.0
	.float -5.170152341258843e-39, -5.170141130871128e-39, -5.0617366816709604e-39, -5.170129920483414e-39
	.float -5.1666603054857454e-39, -5.170006606218553e-39, -5.1699785802492666e-39, -5.169984185443124e-39

# TODO: make up a name for this table in nw4r::math

# NOTE: This is an array of structs each containing 4 floats, and it is 
# used by SinFIdx__Q24nw4r4mathFf and CosFIdx__Q24nw4r4mathFf in a 
# linear interpolation method to compute the sine and cosine of x

# NOTE: Here is the element structure (table is indexed using floor(x)):
  # { 
  #   sin(floor(x)*2*pi/256);
  #   cos(floor(x)*2*pi/256); 
  #   sin_correction_coeff;
  #   cos_correction_coeff;
  # };

.global lbl_8044D120
lbl_8044D120:
    .float 0.000000, 1.000000, 0.024541, -0.000301
    .float 0.024541, 0.999699, 0.024526, -0.000903
    .float 0.049068, 0.998795, 0.024497, -0.001505
    .float 0.073565, 0.997290, 0.024453, -0.002106
    .float 0.098017, 0.995185, 0.024394, -0.002705
    .float 0.122411, 0.992480, 0.024320, -0.003303
    .float 0.146730, 0.989177, 0.024231, -0.003899
    .float 0.170962, 0.985278, 0.024128, -0.004492
    .float 0.195090, 0.980785, 0.024011, -0.005083
    .float 0.219101, 0.975702, 0.023879, -0.005671
    .float 0.242980, 0.970031, 0.023733, -0.006255
    .float 0.266713, 0.963776, 0.023572, -0.006836
    .float 0.290285, 0.956940, 0.023397, -0.007412
    .float 0.313682, 0.949528, 0.023208, -0.007984
    .float 0.336890, 0.941544, 0.023005, -0.008551
    .float 0.359895, 0.932993, 0.022788, -0.009113
    .float 0.382683, 0.923880, 0.022558, -0.009670
    .float 0.405241, 0.914210, 0.022314, -0.010220
    .float 0.427555, 0.903989, 0.022056, -0.010765
    .float 0.449611, 0.893224, 0.021785, -0.011303
    .float 0.471397, 0.881921, 0.021501, -0.011834
    .float 0.492898, 0.870087, 0.021205, -0.012358
    .float 0.514103, 0.857729, 0.020895, -0.012875
    .float 0.534998, 0.844854, 0.020573, -0.013384
    .float 0.555570, 0.831470, 0.020238, -0.013885
    .float 0.575808, 0.817585, 0.019891, -0.014377
    .float 0.595699, 0.803208, 0.019532, -0.014861
    .float 0.615232, 0.788346, 0.019162, -0.015336
    .float 0.634393, 0.773010, 0.018780, -0.015802
    .float 0.653173, 0.757209, 0.018386, -0.016258
    .float 0.671559, 0.740951, 0.017982, -0.016704
    .float 0.689541, 0.724247, 0.017566, -0.017140
    .float 0.707107, 0.707107, 0.017140, -0.017566
    .float 0.724247, 0.689541, 0.016704, -0.017982
    .float 0.740951, 0.671559, 0.016258, -0.018386
    .float 0.757209, 0.653173, 0.015802, -0.018780
    .float 0.773010, 0.634393, 0.015336, -0.019162
    .float 0.788346, 0.615232, 0.014861, -0.019532
    .float 0.803208, 0.595699, 0.014377, -0.019891
    .float 0.817585, 0.575808, 0.013885, -0.020238
    .float 0.831470, 0.555570, 0.013384, -0.020573
    .float 0.844854, 0.534998, 0.012875, -0.020895
    .float 0.857729, 0.514103, 0.012358, -0.021205
    .float 0.870087, 0.492898, 0.011834, -0.021501
    .float 0.881921, 0.471397, 0.011303, -0.021785
    .float 0.893224, 0.449611, 0.010765, -0.022056
    .float 0.903989, 0.427555, 0.010220, -0.022314
    .float 0.914210, 0.405241, 0.009670, -0.022558
    .float 0.923880, 0.382683, 0.009113, -0.022788
    .float 0.932993, 0.359895, 0.008551, -0.023005
    .float 0.941544, 0.336890, 0.007984, -0.023208
    .float 0.949528, 0.313682, 0.007412, -0.023397
    .float 0.956940, 0.290285, 0.006836, -0.023572
    .float 0.963776, 0.266713, 0.006255, -0.023733
    .float 0.970031, 0.242980, 0.005671, -0.023879
    .float 0.975702, 0.219101, 0.005083, -0.024011
    .float 0.980785, 0.195090, 0.004492, -0.024128
    .float 0.985278, 0.170962, 0.003899, -0.024231
    .float 0.989177, 0.146730, 0.003303, -0.024320
    .float 0.992480, 0.122411, 0.002705, -0.024394
    .float 0.995185, 0.098017, 0.002106, -0.024453
    .float 0.997290, 0.073565, 0.001505, -0.024497
    .float 0.998795, 0.049068, 0.000903, -0.024526
    .float 0.999699, 0.024541, 0.000301, -0.024541
    .float 1.000000, 0.000000, -0.000301, -0.024541
    .float 0.999699, -0.024541, -0.000903, -0.024526
    .float 0.998795, -0.049068, -0.001505, -0.024497
    .float 0.997290, -0.073565, -0.002106, -0.024453
    .float 0.995185, -0.098017, -0.002705, -0.024394
    .float 0.992480, -0.122411, -0.003303, -0.024320
    .float 0.989177, -0.146730, -0.003899, -0.024231
    .float 0.985278, -0.170962, -0.004492, -0.024128
    .float 0.980785, -0.195090, -0.005083, -0.024011
    .float 0.975702, -0.219101, -0.005671, -0.023879
    .float 0.970031, -0.242980, -0.006255, -0.023733
    .float 0.963776, -0.266713, -0.006836, -0.023572
    .float 0.956940, -0.290285, -0.007412, -0.023397
    .float 0.949528, -0.313682, -0.007984, -0.023208
    .float 0.941544, -0.336890, -0.008551, -0.023005
    .float 0.932993, -0.359895, -0.009113, -0.022788
    .float 0.923880, -0.382683, -0.009670, -0.022558
    .float 0.914210, -0.405241, -0.010220, -0.022314
    .float 0.903989, -0.427555, -0.010765, -0.022056
    .float 0.893224, -0.449611, -0.011303, -0.021785
    .float 0.881921, -0.471397, -0.011834, -0.021501
    .float 0.870087, -0.492898, -0.012358, -0.021205
    .float 0.857729, -0.514103, -0.012875, -0.020895
    .float 0.844854, -0.534998, -0.013384, -0.020573
    .float 0.831470, -0.555570, -0.013885, -0.020238
    .float 0.817585, -0.575808, -0.014377, -0.019891
    .float 0.803208, -0.595699, -0.014861, -0.019532
    .float 0.788346, -0.615232, -0.015336, -0.019162
    .float 0.773010, -0.634393, -0.015802, -0.018780
    .float 0.757209, -0.653173, -0.016258, -0.018386
    .float 0.740951, -0.671559, -0.016704, -0.017982
    .float 0.724247, -0.689541, -0.017140, -0.017566
    .float 0.707107, -0.707107, -0.017566, -0.017140
    .float 0.689541, -0.724247, -0.017982, -0.016704
    .float 0.671559, -0.740951, -0.018386, -0.016258
    .float 0.653173, -0.757209, -0.018780, -0.015802
    .float 0.634393, -0.773010, -0.019162, -0.015336
    .float 0.615232, -0.788346, -0.019532, -0.014861
    .float 0.595699, -0.803208, -0.019891, -0.014377
    .float 0.575808, -0.817585, -0.020238, -0.013885
    .float 0.555570, -0.831470, -0.020573, -0.013384
    .float 0.534998, -0.844854, -0.020895, -0.012875
    .float 0.514103, -0.857729, -0.021205, -0.012358
    .float 0.492898, -0.870087, -0.021501, -0.011834
    .float 0.471397, -0.881921, -0.021785, -0.011303
    .float 0.449611, -0.893224, -0.022056, -0.010765
    .float 0.427555, -0.903989, -0.022314, -0.010220
    .float 0.405241, -0.914210, -0.022558, -0.009670
    .float 0.382683, -0.923880, -0.022788, -0.009113
    .float 0.359895, -0.932993, -0.023005, -0.008551
    .float 0.336890, -0.941544, -0.023208, -0.007984
    .float 0.313682, -0.949528, -0.023397, -0.007412
    .float 0.290285, -0.956940, -0.023572, -0.006836
    .float 0.266713, -0.963776, -0.023733, -0.006255
    .float 0.242980, -0.970031, -0.023879, -0.005671
    .float 0.219101, -0.975702, -0.024011, -0.005083
    .float 0.195090, -0.980785, -0.024128, -0.004492
    .float 0.170962, -0.985278, -0.024231, -0.003899
    .float 0.146730, -0.989177, -0.024320, -0.003303
    .float 0.122411, -0.992480, -0.024394, -0.002705
    .float 0.098017, -0.995185, -0.024453, -0.002106
    .float 0.073565, -0.997290, -0.024497, -0.001505
    .float 0.049068, -0.998795, -0.024526, -0.000903
    .float 0.024541, -0.999699, -0.024541, -0.000301
    .float 0.000000, -1.000000, -0.024541, 0.000301
    .float -0.024541, -0.999699, -0.024526, 0.000903
    .float -0.049068, -0.998795, -0.024497, 0.001505
    .float -0.073565, -0.997290, -0.024453, 0.002106
    .float -0.098017, -0.995185, -0.024394, 0.002705
    .float -0.122411, -0.992480, -0.024320, 0.003303
    .float -0.146730, -0.989177, -0.024231, 0.003899
    .float -0.170962, -0.985278, -0.024128, 0.004492
    .float -0.195090, -0.980785, -0.024011, 0.005083
    .float -0.219101, -0.975702, -0.023879, 0.005671
    .float -0.242980, -0.970031, -0.023733, 0.006255
    .float -0.266713, -0.963776, -0.023572, 0.006836
    .float -0.290285, -0.956940, -0.023397, 0.007412
    .float -0.313682, -0.949528, -0.023208, 0.007984
    .float -0.336890, -0.941544, -0.023005, 0.008551
    .float -0.359895, -0.932993, -0.022788, 0.009113
    .float -0.382683, -0.923880, -0.022558, 0.009670
    .float -0.405241, -0.914210, -0.022314, 0.010220
    .float -0.427555, -0.903989, -0.022056, 0.010765
    .float -0.449611, -0.893224, -0.021785, 0.011303
    .float -0.471397, -0.881921, -0.021501, 0.011834
    .float -0.492898, -0.870087, -0.021205, 0.012358
    .float -0.514103, -0.857729, -0.020895, 0.012875
    .float -0.534998, -0.844854, -0.020573, 0.013384
    .float -0.555570, -0.831470, -0.020238, 0.013885
    .float -0.575808, -0.817585, -0.019891, 0.014377
    .float -0.595699, -0.803208, -0.019532, 0.014861
    .float -0.615232, -0.788346, -0.019162, 0.015336
    .float -0.634393, -0.773010, -0.018780, 0.015802
    .float -0.653173, -0.757209, -0.018386, 0.016258
    .float -0.671559, -0.740951, -0.017982, 0.016704
    .float -0.689541, -0.724247, -0.017566, 0.017140
    .float -0.707107, -0.707107, -0.017140, 0.017566
    .float -0.724247, -0.689541, -0.016704, 0.017982
    .float -0.740951, -0.671559, -0.016258, 0.018386
    .float -0.757209, -0.653173, -0.015802, 0.018780
    .float -0.773010, -0.634393, -0.015336, 0.019162
    .float -0.788346, -0.615232, -0.014861, 0.019532
    .float -0.803208, -0.595699, -0.014377, 0.019891
    .float -0.817585, -0.575808, -0.013885, 0.020238
    .float -0.831470, -0.555570, -0.013384, 0.020573
    .float -0.844854, -0.534998, -0.012875, 0.020895
    .float -0.857729, -0.514103, -0.012358, 0.021205
    .float -0.870087, -0.492898, -0.011834, 0.021501
    .float -0.881921, -0.471397, -0.011303, 0.021785
    .float -0.893224, -0.449611, -0.010765, 0.022056
    .float -0.903989, -0.427555, -0.010220, 0.022314
    .float -0.914210, -0.405241, -0.009670, 0.022558
    .float -0.923880, -0.382683, -0.009113, 0.022788
    .float -0.932993, -0.359895, -0.008551, 0.023005
    .float -0.941544, -0.336890, -0.007984, 0.023208
    .float -0.949528, -0.313682, -0.007412, 0.023397
    .float -0.956940, -0.290285, -0.006836, 0.023572
    .float -0.963776, -0.266713, -0.006255, 0.023733
    .float -0.970031, -0.242980, -0.005671, 0.023879
    .float -0.975702, -0.219101, -0.005083, 0.024011
    .float -0.980785, -0.195090, -0.004492, 0.024128
    .float -0.985278, -0.170962, -0.003899, 0.024231
    .float -0.989177, -0.146730, -0.003303, 0.024320
    .float -0.992480, -0.122411, -0.002705, 0.024394
    .float -0.995185, -0.098017, -0.002106, 0.024453
    .float -0.997290, -0.073565, -0.001505, 0.024497
    .float -0.998795, -0.049068, -0.000903, 0.024526
    .float -0.999699, -0.024541, -0.000301, 0.024541
    .float -1.000000, -0.000000, 0.000301, 0.024541
    .float -0.999699, 0.024541, 0.000903, 0.024526
    .float -0.998795, 0.049068, 0.001505, 0.024497
    .float -0.997290, 0.073565, 0.002106, 0.024453
    .float -0.995185, 0.098017, 0.002705, 0.024394
    .float -0.992480, 0.122411, 0.003303, 0.024320
    .float -0.989177, 0.146730, 0.003899, 0.024231
    .float -0.985278, 0.170962, 0.004492, 0.024128
    .float -0.980785, 0.195090, 0.005083, 0.024011
    .float -0.975702, 0.219101, 0.005671, 0.023879
    .float -0.970031, 0.242980, 0.006255, 0.023733
    .float -0.963776, 0.266713, 0.006836, 0.023572
    .float -0.956940, 0.290285, 0.007412, 0.023397
    .float -0.949528, 0.313682, 0.007984, 0.023208
    .float -0.941544, 0.336890, 0.008551, 0.023005
    .float -0.932993, 0.359895, 0.009113, 0.022788
    .float -0.923880, 0.382683, 0.009670, 0.022558
    .float -0.914210, 0.405241, 0.010220, 0.022314
    .float -0.903989, 0.427555, 0.010765, 0.022056
    .float -0.893224, 0.449611, 0.011303, 0.021785
    .float -0.881921, 0.471397, 0.011834, 0.021501
    .float -0.870087, 0.492898, 0.012358, 0.021205
    .float -0.857729, 0.514103, 0.012875, 0.020895
    .float -0.844854, 0.534998, 0.013384, 0.020573
    .float -0.831470, 0.555570, 0.013885, 0.020238
    .float -0.817585, 0.575808, 0.014377, 0.019891
    .float -0.803208, 0.595699, 0.014861, 0.019532
    .float -0.788346, 0.615232, 0.015336, 0.019162
    .float -0.773010, 0.634393, 0.015802, 0.018780
    .float -0.757209, 0.653173, 0.016258, 0.018386
    .float -0.740951, 0.671559, 0.016704, 0.017982
    .float -0.724247, 0.689541, 0.017140, 0.017566
    .float -0.707107, 0.707107, 0.017566, 0.017140
    .float -0.689541, 0.724247, 0.017982, 0.016704
    .float -0.671559, 0.740951, 0.018386, 0.016258
    .float -0.653173, 0.757209, 0.018780, 0.015802
    .float -0.634393, 0.773010, 0.019162, 0.015336
    .float -0.615232, 0.788346, 0.019532, 0.014861
    .float -0.595699, 0.803208, 0.019891, 0.014377
    .float -0.575808, 0.817585, 0.020238, 0.013885
    .float -0.555570, 0.831470, 0.020573, 0.013384
    .float -0.534998, 0.844854, 0.020895, 0.012875
    .float -0.514103, 0.857729, 0.021205, 0.012358
    .float -0.492898, 0.870087, 0.021501, 0.011834
    .float -0.471397, 0.881921, 0.021785, 0.011303
    .float -0.449611, 0.893224, 0.022056, 0.010765
    .float -0.427555, 0.903989, 0.022314, 0.010220
    .float -0.405241, 0.914210, 0.022558, 0.009670
    .float -0.382683, 0.923880, 0.022788, 0.009113
    .float -0.359895, 0.932993, 0.023005, 0.008551
    .float -0.336890, 0.941544, 0.023208, 0.007984
    .float -0.313682, 0.949528, 0.023397, 0.007412
    .float -0.290285, 0.956940, 0.023572, 0.006836
    .float -0.266713, 0.963776, 0.023733, 0.006255
    .float -0.242980, 0.970031, 0.023879, 0.005671
    .float -0.219101, 0.975702, 0.024011, 0.005083
    .float -0.195090, 0.980785, 0.024128, 0.004492
    .float -0.170962, 0.985278, 0.024231, 0.003899
    .float -0.146730, 0.989177, 0.024320, 0.003303
    .float -0.122411, 0.992480, 0.024394, 0.002705
    .float -0.098017, 0.995185, 0.024453, 0.002106
    .float -0.073565, 0.997290, 0.024497, 0.001505
    .float -0.049068, 0.998795, 0.024526, 0.000903
    .float -0.024541, 0.999699, 0.024541, 0.000301
    .float -0.000000, 1.000000, 0.024541, -0.000301

# NOTE: used by Atan2FIdx__Q24nw4r4mathFff     
.global lbl_8044E130
lbl_8044E130:
    .float 0.00000000, 1.27282536
    .float 1.27282536, 1.27034581
    .float 2.54317117, 1.26541555
    .float 3.80858660, 1.25809157
    .float 5.06667852, 1.24845707
    .float 6.31513548, 1.23661947
    .float 7.55175495, 1.22270715
    .float 8.77446175, 1.20686662
    .float 9.98132896, 1.18925822
    .float 11.17058659, 1.17005289
    .float 12.34064007, 1.14942801
    .float 13.49006748, 1.12756443
    .float 14.61763191, 1.10464227
    .float 15.72227478, 1.08083868
    .float 16.80311394, 1.05632508
    .float 17.85943794, 1.03126490
    .float 18.89070320, 1.00581205
    .float 19.89651489, 0.98010963
    .float 20.87662506, 0.95428908
    .float 21.83091354, 0.92846978
    .float 22.75938416, 0.90275896
    .float 23.66214180, 0.87725157
    .float 24.53939438, 0.85203087
    .float 25.39142418, 0.82716888
    .float 26.21859360, 0.80272698
    .float 27.02132034, 0.77875656
    .float 27.80007744, 0.75530010
    .float 28.55537796, 0.73239148
    .float 29.28776932, 0.71005738
    .float 29.99782562, 0.68831748
    .float 30.68614388, 0.66718566
    .float 31.35332870, 0.64667052
    .float 32.00000000, 0.62677616
    
.global lbl_8044E238
lbl_8044E238:
	.float 0.0, 0.0, -5.171665743600314e-39, -5.176525446674592e-39
	.float -5.1731230940032115e-39, -5.1741880808360983e-39, -5.174373052233389e-39, -5.1743786574272465e-39
	.float -5.174574839212252e-39, -5.172472891515765e-39, -5.1724897070973367e-39, -5.172495312291194e-39
	.float -5.172551364229767e-39, -5.17260741616834e-39, -5.1726186265560546e-39, -5.172624231749912e-39
	.float -5.172865255085776e-39, -5.1748270729358305e-39, -5.1748663092928316e-39, -5.1750680962716943e-39
	.float -5.175101727434838e-39, -5.175398802709275e-39, -5.175566958524994e-39, -5.1765142362868775e-39
	.float -5.17582479744243e-39, 0.0
.global lbl_8044E2A0
lbl_8044E2A0:
	.incbin "baserom.dol", 0x44A3A0, 0x10
.global lbl_8044E2B0
lbl_8044E2B0:
	.float 0.0, 0.0, -5.178352739872072e-39, -5.17875070863594e-39
	.float -5.1798269058565414e-39, -5.1803706096606994e-39, -5.180421056405415e-39, -5.180471503150131e-39
	.float -5.180499529119417e-39, -5.180549975864133e-39, -5.1805948174149914e-39, -5.18063965896585e-39
	.float -5.180824630363141e-39, 0.0
.global lbl_8044E2E8
lbl_8044E2E8:
	.float 0.0, 0.0, -5.182567845652761e-39, -5.183963538923228e-39
	.float -5.1731230940032115e-39, -5.1741880808360983e-39, -5.183655253261077e-39, -5.1743786574272465e-39
	.float -5.174574839212252e-39, -5.1834646766699286e-39, -5.183526333802359e-39, -5.172495312291194e-39
	.float -5.172551364229767e-39, -5.183587990934789e-39, -5.183621622097933e-39, -5.172624231749912e-39
	.float -5.172865255085776e-39, -5.1748270729358305e-39, -5.1748663092928316e-39, -5.1750680962716943e-39
	.float -5.175101727434838e-39, -5.175398802709275e-39, -5.175566958524994e-39, -5.1765142362868775e-39
	.float -5.17582479744243e-39, -5.182853710539483e-39
.global lbl_8044E350
lbl_8044E350:
	.float 0.0, 0.0, -5.185191076377977e-39, -5.188212275867061e-39
	.float -5.1731230940032115e-39, -5.1741880808360983e-39, -5.186037460650429e-39, -5.1743786574272465e-39
	.float -5.174574839212252e-39, -5.185734780182135e-39, -5.18580764770228e-39, -5.172495312291194e-39
	.float -5.172551364229767e-39, -5.1859701983241414e-39, -5.186003829487285e-39, -5.172624231749912e-39
	.float -5.172865255085776e-39, -5.1748270729358305e-39, -5.1748663092928316e-39, -5.1750680962716943e-39
	.float -5.175101727434838e-39, -5.175398802709275e-39, -5.175566958524994e-39, -5.1765142362868775e-39
	.float -5.17582479744243e-39, -5.18678295143345e-39, -5.186951107249169e-39, -5.1870520007386e-39
	.float -5.18719773577889e-39, 0.0
.global lbl_8044E3C8
lbl_8044E3C8:
	.float 3.587324068671532e-43, 9.219562986332269e-41, 9.219422856485836e-41, 3.60133705331478e-43
	.float 9.183689745645554e-41, 9.219562986332269e-41, 3.587324068671532e-43, 9.183689745645554e-41
	.float 3.60133705331478e-43, 2.3510604481259484e-38, 2.369356081135866e-38, 2.350988701644575e-38
	.float 9.219422856485836e-41, 2.369355800876173e-38, 9.219422856485836e-41
.global lbl_8044E404
lbl_8044E404:
	.float 0.0, 0.0, -5.1889689770377965e-39, -5.2012947983299976e-39
	.float -5.1731230940032115e-39, -5.1741880808360983e-39, -5.190403906665265e-39, -5.1743786574272465e-39
	.float -5.190852322173849e-39, -5.190213330074117e-39, -5.190274987206547e-39, -5.172495312291194e-39
	.float -5.172551364229767e-39, -5.1903366443389775e-39, -5.1903702755021213e-39, -5.172624231749912e-39
	.float -5.189428602934095e-39, -5.1748270729358305e-39, -5.1748663092928316e-39, -5.1750680962716943e-39
	.float -5.191054109152712e-39, -5.1897761249532476e-39, -5.190005937901397e-39, -5.1765142362868775e-39
	.float -5.17582479744243e-39, -5.2012723775545684e-39, -5.2012163256159954e-39, -5.1912558961315746e-39
	.float -5.191642654507728e-39, -5.1937277866226436e-39, -5.1961436251751396e-39
.global lbl_8044E480
lbl_8044E480:
	.float 0.0, 0.0, -5.2014069022071436e-39, -5.2015358216658615e-39
	.float -5.1731230940032115e-39, -5.1741880808360983e-39, -5.201530216472004e-39, -5.1743786574272465e-39
	.float -5.174574839212252e-39, -5.172472891515765e-39, -5.1724897070973367e-39, -5.172495312291194e-39
	.float -5.172551364229767e-39, -5.17260741616834e-39, -5.1726186265560546e-39, -5.172624231749912e-39
	.float -5.172865255085776e-39, -5.1748270729358305e-39, -5.1748663092928316e-39, -5.1750680962716943e-39
	.float -5.175101727434838e-39, -5.175398802709275e-39, -5.175566958524994e-39, -5.1765142362868775e-39
	.float -5.17582479744243e-39, 0.0
.global lbl_8044E4E8
lbl_8044E4E8:
	.float 4.344025239406933e-44, 3.783505853677006e-44, 3.2229864679470793e-44, 2.6624670822171524e-44
	.float 4.203895392974451e-44, 3.6433760072445244e-44, 3.0828566215145976e-44, 2.5223372357846707e-44
.global lbl_8044E508
lbl_8044E508:
	.float 4.344025239406933e-44, 3.783505853677006e-44, 3.2229864679470793e-44, 2.6624670822171524e-44
	.float 4.203895392974451e-44, 3.6433760072445244e-44, 3.0828566215145976e-44, 2.5223372357846707e-44
.global lbl_8044E528
lbl_8044E528:
	.float 0.0, 0.0, -5.2084694464673407e-39, -5.2126621314726005e-39
	.float -5.2179085929230326e-39, -5.217947829280034e-39, -5.218127195483467e-39, -5.218155221452754e-39
	.float -5.218396244788618e-39, -5.218407455176332e-39
.global lbl_8044E550
lbl_8044E550:
	.incbin "baserom.dol", 0x44A650, 0x10
.global lbl_8044E560
lbl_8044E560:
	.float 0.0, 0.0, -5.2210362910954056e-39, -5.2212212624926965e-39
	.float -5.2216696780012804e-39, -5.2220284104081476e-39, -5.222297459713298e-39, -5.222986898557746e-39
.global lbl_8044E580
lbl_8044E580:
	.incbin "baserom.dol", 0x44A680, 0x18
.global lbl_8044E598
lbl_8044E598:
	.float 0.0, 0.0, -5.225537261762817e-39, -5.225335474783954e-39
	.float -5.2253803163348126e-39, 0.0
.global lbl_8044E5B0
lbl_8044E5B0:
	.incbin "baserom.dol", 0x44A6B0, 0x30
.global lbl_8044E5E0
lbl_8044E5E0:
	.float 0.0, 0.0, 0.0, 0.0
	.float 1.917669101157112e-38, 1.0761972206014595e-42, 2.369356081135866e-38, 0.0
	.float 0.0, 1.917669101157112e-38, 3.5971331579218054e-42, 2.424737358263833e-38
	.float 1.401298464324817e-43, 0.0, -1.917669101157112e-38, 3.9628720571105827e-42
	.float 2.424737638523526e-38, 1.4153114489680652e-43, 0.0, -1.917669101157112e-38
	.float 4.3089927777988125e-42, 2.4247379187832187e-38, 1.4293244336113134e-43, 0.0
	.float -1.917669101157112e-38, 4.6761329754519146e-42, 2.4247381990429115e-38, 1.4433374182545616e-43
	.float 0.0, -1.917669101157112e-38, 5.0292601884617685e-42, 2.4247384793026044e-38
	.float 1.4573504028978098e-43, 0.0, -1.917669101157112e-38, 5.383788699935947e-42
	.float 2.4247387595622973e-38, 1.471363387541058e-43, 0.0, -1.917669101157112e-38
	.float 5.74532370373175e-42, 2.42473903982199e-38, 1.485376372184306e-43, 0.0
	.float -1.917669101157112e-38, 6.115266498313502e-42, 2.424739320081683e-38, 1.4993893568275543e-43
	.float 0.0, -1.917669101157112e-38, 6.457183323608757e-42, 2.424739600341376e-38
	.float 1.5134023414708024e-43, 0.0, -1.917669101157112e-38, 6.82152092433321e-42
	.float 2.4247398806010687e-38, 1.5274153261140506e-43, 0.0, -1.917669101157112e-38
	.float 7.187259823521987e-42, 2.4247401608607616e-38, 1.5414283107572988e-43, 0.0
	.float -1.917669101157112e-38, 7.533380544210217e-42, 2.4247404411204545e-38, 1.555441295400547e-43
	.float 0.0, -1.917669101157112e-38, 1.1479437019748901e-41, 2.5643997950759094e-29
	.float 0.0, 0.0, 1.917669101157112e-38, 1.1838169426616055e-41
	.float 2.56470072162972e-29, 0.0, 0.0, 1.917669101157112e-38
	.float 1.2196901833483208e-41, 2.564400096002463e-29, 0.0, 0.0
	.float 1.917669101157112e-38, 1.255563424035036e-41, 2.564400396929017e-29, 0.0
	.float 0.0, 1.917669101157112e-38, 1.2914366647217514e-41, 2.5644298877312904e-29
	.float 1.5694542800437951e-43, 0.0, 1.917669101157112e-38, 1.3273099054084667e-41
	.float 2.5644599803866715e-29, 0.0, 0.0, 1.917669101157112e-38
	.float 1.363183146095182e-41, 2.5644602813132253e-29, 0.0, 0.0
	.float 1.917669101157112e-38, 1.3990563867818974e-41, 2.5644900730420525e-29, 0.0
	.float 0.0, 1.917669101157112e-38, 1.4349296274686127e-41, 2.5645201656974336e-29
	.float 0.0, 0.0, 1.917669101157112e-38, 1.470802868155328e-41
	.float 2.564640536318958e-29, 0.0, 0.0, 1.917669101157112e-38
	.float 1.5066761088420433e-41, 2.5646408372455116e-29, 0.0, 0.0
	.float 1.917669101157112e-38, 1.5425493495287586e-41, 2.5646411381720654e-29, 0.0
	.float 0.0, 1.917669101157112e-38, 1.578422590215474e-41, 2.564670628974339e-29
	.float 0.0, 0.0, 1.917669101157112e-38, 1.6142958309021893e-41
	.float 2.564430188657844e-29, 0.0, 0.0, 1.917669101157112e-38
	.float 1.6501690715889046e-41, 2.564730814285101e-29, 0.0, 0.0
	.float 1.917669101157112e-38, 0.0
.global lbl_8044E828
lbl_8044E828:
	.incbin "baserom.dol", 0x44A928, 0x190
.global lbl_8044E9B8
lbl_8044E9B8:
	.incbin "baserom.dol", 0x44AAB8, 0x78
.global lbl_8044EA30
lbl_8044EA30:
	.incbin "baserom.dol", 0x44AB30, 0x15D4
.global lbl_80450004
lbl_80450004:
	.incbin "baserom.dol", 0x44C104, 0x8D94
.global lbl_80458D98
lbl_80458D98:
	.float 7.006492321624085e-45, 7.847271400218976e-44, 0.0, 0.0
	.float -6.387510763962527e-39, 3.923635700109488e-43, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 1.401298464324817e-45
	.float 1.0, 0.0, 0.0, 0.0
	.float 0.009999999776482582, 0.0, 0.0, 0.0
	.float 10.0, 0.0, 5.0, 0.0
	.float 0.10000000149011612, 2.351046995660691e-38, 0.0, 1.0
	.float 1.0, 0.019999999552965164, 1.7999999523162842, 0.0
	.float 0.0, 0.0, 10.0, 0.0
	.float 5.0, 0.0, 0.10000000149011612, 6.705474176186582e-30
	.float 1.0, 0.10000000149011612, 1.0, 0.009999999776482582
	.float 3.0, 0.6000000238418579, 0.4000000059604645, 0.10000000149011612
	.float 10.0, 0.0, 5.0, 0.0
	.float 0.10000000149011612, 2.682189670474633e-29, 1.0, 0.0
	.float 0.0, 0.0, 0.009999999776482582, 0.0
	.float 0.0, 0.0, 10.0, 0.0
	.float 5.0, 0.0, 0.10000000149011612, 2.351046995660691e-38
	.float 1.0, 0.5, 1.0, 0.009999999776482582
	.float 2.0, 0.6000000238418579, 0.4000000059604645, 0.10000000149011612
	.float 10.0, 0.0, 5.0, 0.0
	.float 0.10000000149011612, 1.072875868189853e-28
.global lbl_80458EE0
lbl_80458EE0:
	.incbin "baserom.dol", 0x454FE0, 0xA978
.global lbl_80463858
lbl_80463858:
	.float 6.922414413764596e-43, 2.802596928649634e-44, 0.0, 0.0
	.float -6.448764322435094e-39, 1.3844828827529193e-41, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 1.401298464324817e-45
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 1.7681616129400956e-34, 1.7832081702193613e-34, 1.798057051593147e-34
	.float 1.6714315337074908e-38, 2.7508594647340327e-36, 1.8057780061382598e-34, 1.8208245634175255e-34
	.float 1.8356729856138303e-34, 1.6806152234531363e-38, 2.762614587608459e-36, 1.843394399336424e-34
	.float 1.8584409566156897e-34, 1.8732889196345137e-34, 1.6897989131987819e-38, 2.7743697104828853e-36
	.float 1.8810107925345882e-34, 1.8960573498138539e-34, 1.9109048536551971e-34, 1.6989826029444274e-38
	.float 2.7861248333573116e-36, 1.9186271857327524e-34, 1.9414175416368003e-34, 1.971111630964525e-34
	.float 1.708166292690073e-38, 2.797879956231738e-36, 1.9865572134745973e-34, 2.0166503280331287e-34
	.float 2.046343499005892e-34, 1.7173499824357185e-38, 2.8096350791061643e-36, 2.0617899998709257e-34
	.float 2.091883114429457e-34, 2.1215753670472588e-34, 1.726533672181364e-38, 2.8213902019805906e-36
	.float 2.137022786267254e-34, 2.1671159008257854e-34, 2.1968072350886255e-34, 1.7357173619270096e-38
	.float 2.833145324855017e-36, 2.2122555726635824e-34, 2.2423486872221138e-34, 2.2720391031299923e-34
	.float 1.7449010516726552e-38, 2.8449004477294432e-36, 2.287488359059911e-34, 2.317581473618442e-34
	.float 2.347270971171359e-34, 1.7540847414183007e-38, 2.8566555706038695e-36, 2.362721145456239e-34
	.float 2.3928142600147705e-34, 2.422502839212726e-34, 1.7632684311639463e-38, 2.8684106934782958e-36
	.float 2.4379539318525676e-34, 2.468047046411099e-34, 2.4977347072540927e-34, 1.7724521209095919e-38
	.float 2.880165816352722e-36, 2.513186718248896e-34, 2.5432798328074273e-34, 2.5729665752954595e-34
	.float 1.7816358106552374e-38, 2.8919209392271484e-36, 2.5884195046452243e-34, 2.6185126192037557e-34
	.float 2.6481984433368263e-34, 1.790819500400883e-38, 2.9036760621015747e-36, 2.6636522910415527e-34
	.float 2.693745405600084e-34, 2.723430311378193e-34, 1.8000031901465285e-38, 2.915431184976001e-36
	.float 2.738885077437881e-34, 2.7689781919964124e-34, 2.79866217941956e-34, 1.809186879892174e-38
	.float 2.9271863078504273e-36, 2.8141178638342094e-34, 2.8442109783927408e-34, 2.8738940474609267e-34
	.float 1.8183705696378196e-38, 2.9389414307248536e-36, 2.889350650230538e-34, 2.919443764789069e-34
	.float 2.9491259155022935e-34, 1.8275542593834652e-38, 2.95069655359928e-36, 2.964583436626866e-34
	.float 2.9946765511853975e-34, 3.0243577835436603e-34, 1.8367379491291107e-38, 2.9624516764737063e-36
	.float 3.0398162230231946e-34, 3.069909337581726e-34, 3.099589651585027e-34, 1.8459216388747563e-38
	.float 2.9742067993481326e-36, 3.115049009419523e-34, 3.1451421239780543e-34, 3.174821519626394e-34
	.float 1.8551053286204018e-38, 2.985961922222559e-36, 3.1902817958158513e-34, 3.2203749103743827e-34
	.float 3.2500533876677607e-34, 1.8642890183660474e-38, 2.9977170450969852e-36, 3.2655145822121797e-34
	.float 3.295607696770711e-34, 3.3252852557091275e-34, 1.873472708111693e-38, 3.009678797837767e-36
	.float 3.340747368608508e-34, 3.3708404831670394e-34, 3.4005171237504943e-34, 1.8826563978573385e-38
	.float 3.0331890435866196e-36, 3.4159801550048364e-34, 3.446073269563368e-34, 3.475748991791861e-34
	.float 1.891840087602984e-38, 3.056699289335472e-36, 3.491212941401165e-34, 3.521306055959696e-34
	.float 3.550980859833228e-34, 1.9010237773486296e-38, 3.080209535084325e-36, 3.566445727797493e-34
	.float 3.5965388423560245e-34, 3.6262127278745947e-34, 1.9102074670942752e-38, 3.1037197808331775e-36
	.float 3.6416785141938216e-34, 3.671771628752353e-34, 3.7014445959159615e-34, 1.9193911568399207e-38
	.float 3.12723002658203e-36, 3.71691130059015e-34, 3.7470044151486813e-34, 3.7766764639573283e-34
	.float 1.9285748465855663e-38, 3.150740272330883e-36, 3.7921440869864783e-34, 3.8222372015450097e-34
	.float 3.851956775222918e-34, 1.9377585363312118e-38, 3.174250518079735e-36, 3.882893857991142e-34
	.float 3.943080087108204e-34, 4.002420511305652e-34, 1.9469422260768574e-38, 3.197760763828588e-36
	.float 4.033359430783798e-34, 4.093545659900861e-34, 4.1528842473883856e-34, 1.956125915822503e-38
	.float 3.2212710095774405e-36, 4.183825003576455e-34, 4.244011232693518e-34, 4.303347983471119e-34
	.float 1.9653096055681485e-38, 3.244781255326293e-36, 4.334290576369112e-34, 4.394476805486175e-34
	.float 4.453811719553853e-34, 1.974493295313794e-38, 3.268291501075146e-36, 4.484756149161769e-34
	.float 4.544942378278831e-34, 4.604275455636586e-34, 1.9836769850594396e-38, 3.2918017468239984e-36
	.float 4.6352217219544254e-34, 4.695407951071488e-34, 4.75473919171932e-34, 1.9928606748050851e-38
	.float 3.315311992572851e-36, 4.785687294747082e-34, 4.845873523864145e-34, 4.9052029278020535e-34
	.float 2.0020443645507307e-38, 3.3388222383217036e-36, 4.936152867539739e-34, 4.996339096656802e-34
	.float 5.055666663884787e-34, 2.0112280542963762e-38, 3.362332484070556e-36, 5.086618440332396e-34
	.float 5.146804669449458e-34, 5.206130399967521e-34, 2.0204117440420218e-38, 3.385842729819409e-36
	.float 5.2370840131250524e-34, 5.297270242242115e-34, 5.356594136050254e-34, 2.0295954337876674e-38
	.float 3.4093529755682615e-36, 5.387549585917709e-34, 5.447735815034772e-34, 5.507057872132988e-34
	.float 2.038779123533313e-38, 3.432863221317114e-36, 5.538015158710366e-34, 5.598201387827429e-34
	.float 5.6575216082157215e-34, 2.0479628132789585e-38, 3.456373467065967e-36, 5.688480731503023e-34
	.float 5.748666960620085e-34, 5.807985344298455e-34, 2.057146503024604e-38, 3.479883712814819e-36
	.float 5.8389463042956794e-34, 5.899132533412742e-34, 5.958449080381189e-34, 2.0663301927702496e-38
	.float 3.503393958563672e-36, 5.989411877088336e-34, 6.049598106205399e-34, 6.108912816463922e-34
	.float 2.075513882515895e-38, 3.5269042043125246e-36, 6.139877449880993e-34, 6.200063678998056e-34
	.float 6.259376552546656e-34, 2.0846975722615407e-38, 3.550414450061377e-36, 6.29034302267365e-34
	.float 6.350529251790712e-34, 6.4098402886293894e-34, 2.0938812620071862e-38, 3.57392469581023e-36
	.float 6.4408085954663064e-34, 6.500994824583369e-34, 6.560304024712123e-34, 2.1030649517528318e-38
	.float 3.5974349415590824e-36, 6.591274168258963e-34, 6.651460397376026e-34, 6.710767760794857e-34
	.float 2.1122486414984773e-38, 3.620945187307935e-36, 6.74173974105162e-34, 6.801925970168683e-34
	.float 6.86123149687759e-34, 2.121432331244123e-38, 3.6444554330567876e-36, 6.892205313844277e-34
	.float 6.952391542961339e-34, 7.011695232960324e-34, 2.1306160209897684e-38, 3.66796567880564e-36
	.float 7.0426708866369334e-34, 7.102857115753996e-34, 7.162158969043057e-34, 2.139799710735414e-38
	.float 3.691475924554493e-36, 7.19313645942959e-34, 7.253322688546653e-34, 7.312622705125791e-34
	.float 2.1489834004810596e-38, 3.7149861703033455e-36, 7.343602032222247e-34, 7.40378826133931e-34
	.float 7.4630864412085246e-34, 2.158167090226705e-38, 3.738496416052198e-36, 7.494067605014904e-34
	.float 7.554253834131966e-34, 7.613550177291258e-34, 2.1673507799723507e-38, 3.762006661801051e-36
	.float 7.6445331778075604e-34, 7.705719036300303e-34, 7.82430804919904e-34, 2.1765344697179962e-38
	.float 3.7855169075499034e-36, 7.886277723651491e-34, 8.006650181885616e-34, 8.125235521364507e-34
	.float 2.1857181594636418e-38, 3.809027153298756e-36, 8.187208869236804e-34, 8.30758132747093e-34
	.float 8.426162993529974e-34, 2.1949018492092873e-38, 3.8325373990476086e-36, 8.488140014822118e-34
	.float 8.608512473056243e-34, 8.727090465695442e-34, 2.204085538954933e-38, 3.856047644796461e-36
	.float 8.789071160407431e-34, 8.909443618641557e-34, 9.028017937860909e-34, 2.2132692287005784e-38
	.float 3.879557890545314e-36, 9.090002305992745e-34, 9.21037476422687e-34, 9.328945410026376e-34
	.float 2.222452918446224e-38, 3.9030681362941664e-36, 9.390933451578058e-34, 9.511305909812184e-34
	.float 9.629872882191843e-34, 2.2316366081918695e-38, 3.926578382043019e-36, 9.691864597163372e-34
	.float 9.812237055397497e-34, 9.93080035435731e-34, 2.240820297937515e-38, 3.950088627791872e-36
	.float 9.992795742748685e-34, 1.0113168200982811e-33, 1.0231727826522778e-33, 2.2500039876831606e-38
	.float 3.973598873540724e-36, 1.0293726888333999e-33, 1.0414099346568124e-33, 1.0532655298688245e-33
	.float 2.2591876774288062e-38, 3.997109119289577e-36, 1.0594658033919312e-33, 1.0715030492153438e-33
	.float 1.0833582770853712e-33, 2.2683713671744517e-38, 4.0206193650384295e-36, 1.0895589179504626e-33
	.float 1.1015961637738751e-33, 1.1134510243019179e-33, 2.2775550569200973e-38, 4.044129610787282e-36
	.float 1.119652032508994e-33, 1.1316892783324065e-33, 1.1435437715184646e-33, 2.2867387466657429e-38
	.float 4.067639856536135e-36, 1.1497451470675253e-33, 1.1617823928909378e-33, 1.1736365187350113e-33
	.float 2.2959224364113884e-38, 4.0911501022849874e-36, 1.1798382616260567e-33, 1.1918755074494692e-33
	.float 1.203729265951558e-33, 2.305106126157034e-38, 4.11466034803384e-36, 1.209931376184588e-33
	.float 1.2219686220080005e-33, 1.2338220131681048e-33, 2.3142898159026795e-38, 4.1381705937826926e-36
	.float 1.2400244907431194e-33, 1.2520617365665319e-33, 1.2639147603846515e-33, 2.323473505648325e-38
	.float 4.161680839531545e-36, 1.2701176053016507e-33, 1.2821548511250632e-33, 1.2940075076011982e-33
	.float 2.3326571953939706e-38, 4.185191085280398e-36, 1.300210719860182e-33, 1.3122479656835946e-33
	.float 1.324100254817745e-33, 2.3418408851396162e-38, 4.2087013310292505e-36, 1.3303038344187134e-33
	.float 1.342341080242126e-33, 1.3541930020342917e-33, 2.3510604481259484e-38, 4.232211576778103e-36
	.float 1.3603969489772448e-33, 1.3724341948006573e-33, 1.3842857492508384e-33, 2.3694278276172396e-38
	.float 4.255721822526956e-36, 1.3904900635357761e-33, 1.4025273093591886e-33, 1.4143784964673851e-33
	.float 2.3877952071085307e-38, 4.279232068275808e-36, 1.4205831780943075e-33, 1.43262042391772e-33
	.float 1.4444712436839318e-33, 2.406162586599822e-38, 4.302742314024661e-36, 1.4506762926528388e-33
	.float 1.4627135384762513e-33, 1.4745639909004785e-33, 2.424529966091113e-38, 4.3262525597735136e-36
	.float 1.4807694072113702e-33, 1.4928066530347827e-33, 1.5046567381170252e-33, 2.442897345582404e-38
	.float 4.349762805522366e-36, 1.5108625217699015e-33, 1.522899767593314e-33, 1.534749485333572e-33
	.float 2.461264725073695e-38, 4.373273051271219e-36, 1.541167317147077e-33, 1.565241808793902e-33
	.float 1.5889405095904487e-33, 2.479632104564986e-38, 4.3967832970200714e-36, 1.6013535462641397e-33
	.float 1.6254280379109648e-33, 1.649126004023542e-33, 2.4979994840562773e-38, 4.420293542768924e-36
	.float 1.6615397753812024e-33, 1.6856142670280275e-33, 1.7093114984566356e-33, 2.5163668635475684e-38
	.float 4.4438037885177766e-36, 1.721726004498265e-33, 1.7458004961450902e-33, 1.769496992889729e-33
	.float 2.5347342430388595e-38, 4.467314034266629e-36, 1.7819122336153278e-33, 1.805986725262153e-33
	.float 1.8296824873228224e-33, 2.5531016225301506e-38, 4.490824280015482e-36, 1.8420984627323905e-33
	.float 1.8661729543792156e-33, 1.889867981755916e-33, 2.5714690020214417e-38, 4.5143345257643345e-36
	.float 1.9022846918494532e-33, 1.9263591834962783e-33, 1.9500534761890093e-33, 2.589836381512733e-38
	.float 4.537844771513187e-36, 1.962470920966516e-33, 1.986545412613341e-33, 2.0102389706221027e-33
	.float 2.608203761004024e-38, 4.56135501726204e-36, 2.0226571500835786e-33, 2.0467316417304037e-33
	.float 2.0704244650551962e-33, 2.626571140495315e-38, 4.5848652630108923e-36, 2.0828433792006413e-33
	.float 2.1069178708474664e-33, 2.1306099594882896e-33, 2.644938519986606e-38, 4.608375508759745e-36
	.float 2.143029608317704e-33, 2.167104099964529e-33, 2.190795453921383e-33, 2.6633058994778973e-38
	.float 4.6318857545085976e-36, 2.2032158374347667e-33, 2.2272903290815918e-33, 2.2509809483544765e-33
	.float 2.6816732789691884e-38, 4.65539600025745e-36, 2.2634020665518294e-33, 2.2874765581986545e-33
	.float 2.31116644278757e-33, 2.7000406584604795e-38, 4.678906246006303e-36, 2.323588295668892e-33
	.float 2.3476627873157172e-33, 2.3713519372206634e-33, 2.7184080379517706e-38, 4.7024164917551554e-36
	.float 2.3837745247859548e-33, 2.40784901643278e-33, 2.4315374316537568e-33, 2.7367754174430617e-38
	.float 4.725926737504008e-36, 2.4439607539030175e-33, 2.4680352455498426e-33, 2.4917229260868502e-33
	.float 2.755142796934353e-38, 4.7494369832528607e-36, 2.5041469830200802e-33, 2.5282214746669053e-33
	.float 2.5519084205199437e-33, 2.773510176425644e-38, 4.772947229001713e-36, 2.564333212137143e-33
	.float 2.588407703783968e-33, 2.612093914953037e-33, 2.791877555916935e-38, 4.796457474750566e-36
	.float 2.6245194412542056e-33, 2.6485939329010307e-33, 2.6722794093861305e-33, 2.810244935408226e-38
	.float 4.8199677204994185e-36, 2.6847056703712683e-33, 2.7087801620180934e-33, 2.732464903819224e-33
	.float 2.828612314899517e-38, 4.843477966248271e-36, 2.744891899488331e-33, 2.768966391135156e-33
	.float 2.7926503982523174e-33, 2.8469796943908083e-38, 4.866988211997124e-36, 2.8050781286053937e-33
	.float 2.8291526202522188e-33, 2.852835892685411e-33, 2.8653470738820995e-38, 4.8904984577459764e-36
	.float 2.8652643577224564e-33, 2.8893388493692815e-33, 2.9130213871185043e-33, 2.8837144533733906e-38
	.float 4.914008703494829e-36, 2.925450586839519e-33, 2.9495250784863442e-33, 2.9732068815515977e-33
	.float 2.9020818328646817e-38, 4.9375189492436816e-36, 2.985636815956582e-33, 3.009711307603407e-33
	.float 3.033392375984691e-33, 2.920449212355973e-38, 4.961029194992534e-36, 3.0458230450736445e-33
	.float 3.0698975367204696e-33, 3.105667829815992e-33, 2.938816591847264e-38, 4.984539440741387e-36
	.float 3.130530637361837e-33, 3.178679620655487e-33, 3.226038818682179e-33, 2.957183971338555e-38
	.float 5.0080496864902395e-36, 3.2509030955959625e-33, 3.2990520788896127e-33, 3.3464098075483656e-33
	.float 2.975551350829846e-38, 5.031559932239092e-36, 3.371275553830088e-33, 3.419424537123738e-33
	.float 3.4667807964145524e-33, 2.993918730321137e-38, 5.055070177987945e-36, 3.491648012064213e-33
	.float 3.5397969953578635e-33, 3.587151785280739e-33, 3.0122861098124283e-38, 5.078580423736797e-36
	.float 3.612020470298339e-33, 3.660169453591989e-33, 3.707522774146926e-33, 3.0306534893037194e-38
	.float 5.10209066948565e-36, 3.732392928532464e-33, 3.780541911826114e-33, 3.827893763013113e-33
	.float 3.0490208687950105e-38, 5.1256009152345025e-36, 3.8527653867665895e-33, 3.90091437006024e-33
	.float 3.9482647518793e-33, 3.0673882482863016e-38, 5.149111160983355e-36, 3.973137845000715e-33
	.float 4.021286828294365e-33, 4.068635740745487e-33, 3.0857556277775927e-38, 5.172621406732208e-36
	.float 4.09351030323484e-33, 4.1416592865284905e-33, 4.189006729611674e-33, 3.104123007268884e-38
	.float 5.1961316524810604e-36, 4.213882761468966e-33, 4.262031744762616e-33, 4.3093777184778605e-33
	.float 3.122490386760175e-38, 5.219641898229913e-36, 4.334255219703091e-33, 4.382404202996741e-33
	.float 4.4297487073440474e-33, 3.140857766251466e-38, 5.2431521439787656e-36, 4.4546276779372165e-33
	.float 4.502776661230867e-33, 4.550119696210234e-33, 3.159225145742757e-38, 5.266662389727618e-36
	.float 4.575000136171342e-33, 4.623149119464992e-33, 4.670490685076421e-33, 3.1775925252340483e-38
	.float 5.290172635476471e-36, 4.695372594405467e-33, 4.7435215776991175e-33, 4.790861673942608e-33
	.float 3.1959599047253394e-38, 5.3136828812253235e-36, 4.815745052639593e-33, 4.863894035933243e-33
	.float 4.911232662808795e-33, 3.2143272842166305e-38, 5.337193126974176e-36, 4.936117510873718e-33
	.float 4.984266494167368e-33, 5.031603651674982e-33, 3.2326946637079216e-38, 5.360703372723029e-36
	.float 5.0564899691078435e-33, 5.104638952401494e-33, 5.1519746405411687e-33, 3.2510620431992127e-38
	.float 5.384213618471881e-36, 5.176862427341969e-33, 5.225011410635619e-33, 5.2723456294073555e-33
	.float 3.269429422690504e-38, 5.407723864220734e-36, 5.297234885576094e-33, 5.3453838688697445e-33
	.float 5.3927166182735424e-33, 3.287796802181795e-38, 5.4312341099695866e-36, 5.41760734381022e-33
	.float 5.46575632710387e-33, 5.513087607139729e-33, 3.306164181673086e-38, 5.454744355718439e-36
	.float 5.537979802044345e-33, 5.586128785337995e-33, 5.633458596005916e-33, 3.324531561164377e-38
	.float 5.478254601467292e-36, 5.6583522602784705e-33, 5.706501243572121e-33, 5.753829584872103e-33
	.float 3.342898940655668e-38, 5.5017648472161444e-36, 5.778724718512596e-33, 5.826873701806246e-33
	.float 5.87420057373829e-33, 3.3612663201469593e-38, 5.525275092964997e-36, 5.899097176746721e-33
	.float 5.9472461600403715e-33, 5.994571562604477e-33, 3.3796336996382505e-38, 5.5487853387138497e-36
	.float 6.019469634980847e-33, 6.067618618274497e-33, 6.1149425514706636e-33, 3.3980010791295416e-38
	.float 5.572295584462702e-36, 6.139842093214972e-33, 6.21300633097809e-33, 6.307651258634546e-33
	.float 3.4163684586208327e-38, 5.595805830211555e-36, 6.35745328085904e-33, 6.45375124744634e-33
	.float 6.54839323636692e-33, 3.434735838112124e-38, 5.6193160759604075e-36, 6.598198197327291e-33
	.float 6.694496163914591e-33, 6.789135214099294e-33, 3.453103217603415e-38, 5.64282632170926e-36
	.float 6.838943113795542e-33, 6.935241080382842e-33, 7.029877191831668e-33, 3.471470597094706e-38
	.float 5.666336567458113e-36, 7.079688030263793e-33, 7.175985996851093e-33, 7.270619169564041e-33
	.float 3.489837976585997e-38, 5.6898468132069654e-36, 7.320432946732043e-33, 7.416730913319344e-33
	.float 7.511361147296415e-33, 3.508205356077288e-38, 5.713357058955818e-36, 7.561177863200294e-33
	.float 7.657475829787595e-33, 7.752103125028789e-33, 3.5265727355685793e-38, 5.7368673047046706e-36
	.float 7.801922779668545e-33, 7.898220746255845e-33, 7.992845102761163e-33, 3.5449401150598704e-38
	.float 5.760377550453523e-36, 8.042667696136796e-33, 8.138965662724096e-33, 8.233587080493536e-33
	.float 3.5633074945511615e-38, 5.783887796202376e-36, 8.283412612605047e-33, 8.379710579192347e-33
	.float 8.47432905822591e-33, 3.5816748740424526e-38, 5.8073980419512284e-36, 8.524157529073298e-33
	.float 8.620455495660598e-33, 8.715071035958284e-33, 3.600042253533744e-38, 5.830908287700081e-36
	.float 8.764902445541548e-33, 8.861200412128849e-33, 8.955813013690657e-33, 3.618409633025035e-38
	.float 5.854418533448934e-36, 9.005647362009799e-33, 9.1019453285971e-33, 9.196554991423031e-33
	.float 3.636777012516326e-38, 5.877928779197786e-36, 9.24639227847805e-33, 9.34269024506535e-33
	.float 9.437296969155405e-33, 3.655144392007617e-38, 5.901439024946639e-36, 9.487137194946301e-33
	.float 9.583435161533601e-33, 9.678038946887779e-33, 3.673511771498908e-38, 5.9249492706954915e-36
	.float 9.727882111414552e-33, 9.824180078001852e-33, 9.918780924620152e-33, 3.6918791509901993e-38
	.float 5.948459516444344e-36, 9.968627027882802e-33, 1.0064924994470103e-32, 1.0159522902352526e-32
	.float 3.7102465304814904e-38, 5.971969762193197e-36, 1.0209371944351053e-32, 1.0305669910938353e-32
	.float 1.04002648800849e-32, 3.7286139099727815e-38, 5.9954800079420494e-36, 1.0450116860819304e-32
	.float 1.0546414827406604e-32, 1.0641006857817274e-32, 3.7469812894640726e-38, 6.019449431171692e-36
	.float 1.0690861777287555e-32, 1.0787159743874855e-32, 1.0881748835549647e-32, 3.7653486689553637e-38
	.float 6.066469922669397e-36, 1.0931606693755806e-32, 1.1027904660343106e-32, 1.1122490813282021e-32
	.float 3.783716048446655e-38, 6.113490414167102e-36, 1.1172351610224056e-32, 1.1268649576811357e-32
	.float 1.1363232791014395e-32, 3.802083427937946e-38, 6.160510905664808e-36, 1.1413096526692307e-32
	.float 1.1509394493279607e-32, 1.1603974768746769e-32, 3.820450807429237e-38, 6.207531397162513e-36
	.float 1.1653841443160558e-32, 1.1750139409747858e-32, 1.1844716746479142e-32, 3.838818186920528e-38
	.float 6.254551888660218e-36, 1.1894586359628809e-32, 1.1990884326216109e-32, 1.2085458724211516e-32
	.float 3.857185566411819e-38, 6.301572380157923e-36, 1.213533127609706e-32, 1.223162924268436e-32
	.float 1.232644975980947e-32, 3.8755529459031104e-38, 6.348592871655629e-36, 1.242620074105231e-32
	.float 1.2618796674226912e-32, 1.2807933715274218e-32, 3.8939203253944015e-38, 6.395613363153334e-36
	.float 1.2907690573988813e-32, 1.3100286507163413e-32, 1.3289417670738965e-32, 3.9122877048856926e-38
	.float 6.442633854651039e-36, 1.3389180406925314e-32, 1.3581776340099915e-32, 1.3770901626203713e-32
	.float 3.9306550843769837e-38, 6.489654346148744e-36, 1.3870670239861816e-32, 1.4063266173036417e-32
	.float 1.425238558166846e-32, 3.949022463868275e-38, 6.53667483764645e-36, 1.4352160072798318e-32
	.float 1.4544756005972918e-32, 1.4733869537133208e-32, 3.967389843359566e-38, 6.583695329144155e-36
	.float 1.483364990573482e-32, 1.502624583890942e-32, 1.5215353492597955e-32, 3.985757222850857e-38
	.float 6.63071582064186e-36, 1.531513973867132e-32, 1.5507735671845921e-32, 1.5696837448062703e-32
	.float 4.004124602342148e-38, 6.677736312139565e-36, 1.5796629571607822e-32, 1.5989225504782423e-32
	.float 1.617832140352745e-32, 4.022491981833439e-38, 6.72475680363727e-36, 1.6278119404544324e-32
	.float 1.6470715337718925e-32, 1.6659805358992198e-32, 4.0408593613247303e-38, 6.771777295134976e-36
	.float 1.6759609237480826e-32, 1.6952205170655426e-32, 1.7141289314456945e-32, 4.0592267408160214e-38
	.float 6.818797786632681e-36, 1.7241099070417327e-32, 1.7433695003591928e-32, 1.7622773269921693e-32
	.float 4.0775941203073125e-38, 6.865818278130386e-36, 1.772258890335383e-32, 1.791518483652843e-32
	.float 1.810425722538644e-32, 4.0959614997986036e-38, 6.912838769628091e-36, 1.820407873629033e-32
	.float 1.839667466946493e-32, 1.8585741180851188e-32, 4.114328879289895e-38, 6.959859261125797e-36
	.float 1.8685568569226832e-32, 1.8878164502401433e-32, 1.9067225136315935e-32, 4.132696258781186e-38
	.float 7.006879752623502e-36, 1.9167058402163334e-32, 1.9359654335337934e-32, 1.9548709091780683e-32
	.float 4.151063638272477e-38, 7.053900244121207e-36, 1.9648548235099835e-32, 1.9841144168274436e-32
	.float 2.003019304724543e-32, 4.169431017763768e-38, 7.100920735618912e-36, 2.0130038068036337e-32
	.float 2.0322634001210937e-32, 2.0511677002710178e-32, 4.187798397255059e-38, 7.147941227116618e-36
	.float 2.0611527900972838e-32, 2.080412383414744e-32, 2.0993160958174925e-32, 4.2061657767463503e-38
	.float 7.194961718614323e-36, 2.109301773390934e-32, 2.128561366708394e-32, 2.1474644913639673e-32
	.float 4.2245331562376414e-38, 7.241982210112028e-36, 2.1574507566845842e-32, 2.1767103500020442e-32
	.float 2.195612886910442e-32, 4.2429005357289325e-38, 7.289002701609733e-36, 2.2055997399782343e-32
	.float 2.2248593332956944e-32, 2.2437612824569168e-32, 4.2612679152202236e-38, 7.336023193107439e-36
	.float 2.2537487232718845e-32, 2.2730083165893445e-32, 2.2919096780033915e-32, 4.2796352947115147e-38
	.float 7.383043684605144e-36, 2.3018977065655346e-32, 2.3211572998829947e-32, 2.3400580735498663e-32
	.float 4.298002674202806e-38, 7.430064176102849e-36, 2.3500466898591848e-32, 2.369306283176645e-32
	.float 2.388206469096341e-32, 4.316370053694097e-38, 7.477084667600554e-36, 2.398195673152835e-32
	.float 2.417455266470295e-32, 2.4363548646428158e-32, 4.334737433185388e-38, 7.52410515909826e-36
	.float 2.446344656446485e-32, 2.4660181707122285e-32, 2.503816191562919e-32, 4.353104812676679e-38
	.float 7.571125650595965e-36, 2.5237969506646087e-32, 2.562316137299529e-32, 2.6001129826558686e-32
	.float 4.37147219216797e-38, 7.61814614209367e-36, 2.620094917251909e-32, 2.658614103886829e-32
	.float 2.696409773748818e-32, 4.3898395716592614e-38, 7.665166633591375e-36, 2.7163928838392093e-32
	.float 2.7549120704741294e-32, 2.7927065648417676e-32, 4.4082069511505525e-38, 7.71218712508908e-36
	.float 2.8126908504265096e-32, 2.85121003706143e-32, 2.889003355934717e-32, 4.4265743306418436e-38
	.float 7.759207616586786e-36, 2.90898881701381e-32, 2.94750800364873e-32, 2.9853001470276666e-32
	.float 4.4449417101331347e-38, 7.806228108084491e-36, 3.0052867836011103e-32, 3.0438059702360304e-32
	.float 3.081596938120616e-32, 4.463309089624426e-38, 7.853248599582196e-36, 3.1015847501884106e-32
	.float 3.140103936823331e-32, 3.1778937292135656e-32, 4.481676469115717e-38, 7.900269091079901e-36
	.float 3.197882716775711e-32, 3.236401903410631e-32, 3.274190520306515e-32, 4.500043848607008e-38
	.float 7.947289582577607e-36, 3.294180683363011e-32, 3.3326998699979314e-32, 3.3704873113994646e-32
	.float 4.518411228098299e-38, 7.994310074075312e-36, 3.3904786499503116e-32, 3.4289978365852317e-32
	.float 3.466784102492414e-32, 4.53677860758959e-38, 8.041330565573017e-36, 3.486776616537612e-32
	.float 3.525295803172532e-32, 3.5630808935853636e-32, 4.5551459870808813e-38, 8.088351057070722e-36
	.float 3.583074583124912e-32, 3.6215937697598323e-32, 3.659377684678313e-32, 4.5735133665721724e-38
	.float 8.135371548568428e-36, 3.6793725497122125e-32, 3.7178917363471327e-32, 3.7556744757712626e-32
	.float 4.5918807460634635e-38, 8.182392040066133e-36, 3.775670516299513e-32, 3.814189702934433e-32
	.float 3.851971266864212e-32, 4.6102481255547546e-38, 8.229412531563838e-36, 3.871968482886813e-32
	.float 3.9104876695217333e-32, 3.9482680579571616e-32, 4.628615505046046e-38, 8.276433023061543e-36
	.float 3.9682664494741135e-32, 4.0067856361090336e-32, 4.044564849050111e-32, 4.646982884537337e-38
	.float 8.323453514559248e-36, 4.064564416061414e-32, 4.103083602696334e-32, 4.1408616401430606e-32
	.float 4.665350264028628e-38, 8.370474006056954e-36, 4.160862382648714e-32, 4.199381569283634e-32
	.float 4.23715843123601e-32, 4.683717643519919e-38, 8.417494497554659e-36, 4.2571603492360144e-32
	.float 4.2956795358709346e-32, 4.3334552223289596e-32, 4.70219264273327e-38, 8.464514989052364e-36
	.float 4.353458315823315e-32, 4.391977502458235e-32, 4.429752013421909e-32, 4.738927401715853e-38
	.float 8.51153548055007e-36, 4.449756282410615e-32, 4.488275469045535e-32, 4.5260488045148586e-32
	.float 4.775662160698435e-38, 8.558555972047775e-36, 4.5460542489979154e-32, 4.5845734356328355e-32
	.float 4.622345595607808e-32, 4.812396919681017e-38, 8.60557646354548e-36, 4.642352215585216e-32
	.float 4.680871402220136e-32, 4.7186423867007576e-32, 4.849131678663599e-38, 8.652596955043185e-36
	.float 4.738650182172516e-32, 4.777169368807436e-32, 4.814939177793707e-32, 4.885866437646181e-38
	.float 8.69961744654089e-36, 4.8349481487598164e-32, 4.8734673353947365e-32, 4.9112359688866566e-32
	.float 4.922601196628764e-38, 8.746637938038596e-36, 4.93211157306291e-32, 5.00914994633275e-32
	.float 5.084684862327888e-32, 4.959335955611346e-38, 8.793658429536301e-36, 5.12470750623751e-32
	.float 5.20174587950735e-32, 5.277278444513787e-32, 4.996070714593928e-38, 8.840678921034006e-36
	.float 5.317303439412111e-32, 5.394341812681951e-32, 5.469872026699686e-32, 5.03280547357651e-38
	.float 8.887699412531711e-36, 5.509899372586712e-32, 5.586937745856552e-32, 5.662465608885585e-32
	.float 5.069540232559092e-38, 8.934719904029416e-36, 5.702495305761312e-32, 5.779533679031152e-32
	.float 5.855059191071484e-32, 5.106274991541675e-38, 8.981740395527122e-36, 5.895091238935913e-32
	.float 5.972129612205753e-32, 6.047652773257383e-32, 5.143009750524257e-38, 9.028760887024827e-36
	.float 6.087687172110513e-32, 6.164725545380354e-32, 6.240246355443282e-32, 5.179744509506839e-38
	.float 9.075781378522532e-36, 6.280283105285114e-32, 6.357321478554954e-32, 6.432839937629181e-32
	.float 5.216479268489421e-38, 9.122801870020237e-36, 6.472879038459715e-32, 6.549917411729555e-32
	.float 6.62543351981508e-32, 5.253214027472004e-38, 9.169822361517943e-36, 6.665474971634315e-32
	.float 6.742513344904156e-32, 6.818027102000979e-32, 5.289948786454586e-38, 9.216842853015648e-36
	.float 6.858070904808916e-32, 6.935109278078756e-32, 7.010620684186878e-32, 5.326683545437168e-38
	.float 9.263863344513353e-36, 7.050666837983517e-32, 7.127705211253357e-32, 7.203214266372777e-32
	.float 5.36341830441975e-38, 9.310883836011058e-36, 7.243262771158117e-32, 7.320301144427958e-32
	.float 7.395807848558676e-32, 5.400153063402332e-38, 9.357904327508764e-36, 7.435858704332718e-32
	.float 7.512897077602558e-32, 7.588401430744575e-32, 5.436887822384915e-38, 9.404924819006469e-36
	.float 7.628454637507319e-32, 7.705493010777159e-32, 7.780995012930474e-32, 5.473622581367497e-38
	.float 9.451945310504174e-36, 7.821050570681919e-32, 7.89808894395176e-32, 7.973588595116373e-32
	.float 5.510357340350079e-38, 9.498965802001879e-36, 8.01364650385652e-32, 8.09068487712636e-32
	.float 8.166182177302272e-32, 5.547092099332661e-38, 9.545986293499585e-36, 8.20624243703112e-32
	.float 8.283280810300961e-32, 8.358775759488171e-32, 5.583826858315243e-38, 9.59300678499729e-36
	.float 8.398838370205721e-32, 8.475876743475561e-32, 8.55136934167407e-32, 5.620561617297826e-38
	.float 9.640027276494995e-36, 8.591434303380322e-32, 8.668472676650162e-32, 8.743962923859969e-32
	.float 5.657296376280408e-38, 9.6870477679927e-36, 8.784030236554922e-32, 8.861068609824763e-32
	.float 8.936556506045868e-32, 5.69403113526299e-38, 9.734068259490405e-36, 8.976626169729523e-32
	.float 9.053664542999363e-32, 9.129150088231767e-32, 5.730765894245572e-38, 9.781088750988111e-36
	.float 9.169222102904124e-32, 9.246260476173964e-32, 9.321743670417666e-32, 5.767500653228155e-38
	.float 9.828109242485816e-36, 9.361818036078724e-32, 9.438856409348565e-32, 9.514337252603565e-32
	.float 5.804235412210737e-38, 9.875129733983521e-36, 9.554413969253325e-32, 9.631452342523165e-32
	.float 9.706930834789464e-32, 5.840970171193319e-38, 9.922150225481226e-36, 9.747009902427926e-32
	.float 9.824048275697766e-32, 9.93828751868808e-32, 5.877704930175901e-38, 9.969170716978932e-36
	.float 1.0018450355942405e-31, 1.0172527102482085e-31, 1.0323474683059877e-31, 5.914439689158483e-38
	.float 1.0016191208476637e-35, 1.0403642222291606e-31, 1.0557718968831287e-31, 1.0708661847431675e-31
	.float 5.951174448141066e-38, 1.0063211699974342e-35, 1.0788834088640808e-31, 1.0942910835180488e-31
	.float 1.1093849011803473e-31, 5.987909207123648e-38, 1.0110232191472047e-35, 1.1174025954990009e-31
	.float 1.132810270152969e-31, 1.147903617617527e-31, 6.02464396610623e-38, 1.0157252682969753e-35
	.float 1.155921782133921e-31, 1.171329456787889e-31, 1.186422334054707e-31, 6.061378725088812e-38
	.float 1.0204273174467458e-35, 1.1944409687688411e-31, 1.2098486434228092e-31, 1.2249410504918867e-31
	.float 6.098113484071394e-38, 1.0251293665965163e-35, 1.2329601554037613e-31, 1.2483678300577293e-31
	.float 1.2634597669290665e-31, 6.134848243053977e-38, 1.0298314157462868e-35, 1.2714793420386814e-31
	.float 1.2868870166926494e-31, 1.3019784833662463e-31, 6.171583002036559e-38, 1.0345334648960574e-35
	.float 1.3099985286736015e-31, 1.3254062033275696e-31, 1.340497199803426e-31, 6.208317761019141e-38
	.float 1.0392355140458279e-35, 1.3485177153085217e-31, 1.3639253899624897e-31, 1.379015916240606e-31
	.float 6.245052520001723e-38, 1.0439375631955984e-35, 1.3870369019434418e-31, 1.4024445765974098e-31
	.float 1.4175346326777857e-31, 6.281787278984306e-38, 1.0486396123453689e-35, 1.425556088578362e-31
	.float 1.44096376323233e-31, 1.4560533491149655e-31, 6.318522037966888e-38, 1.0533416614951394e-35
	.float 1.464075275213282e-31, 1.47948294986725e-31, 1.4945720655521453e-31, 6.35525679694947e-38
	.float 1.05804371064491e-35, 1.5025944618482022e-31, 1.5180021365021702e-31, 1.533090781989325e-31
	.float 6.391991555932052e-38, 1.0627457597946805e-35, 1.5411136484831223e-31, 1.5565213231370903e-31
	.float 1.571609498426505e-31, 6.428726314914634e-38, 1.067447808944451e-35, 1.5796328351180424e-31
	.float 1.5950405097720105e-31, 1.6101282148636847e-31, 6.465461073897217e-38, 1.0721498580942215e-35
	.float 1.6181520217529625e-31, 1.6335596964069306e-31, 1.6486469313008645e-31, 6.502195832879799e-38
	.float 1.076851907243992e-35, 1.6566712083878827e-31, 1.6720788830418507e-31, 1.6871656477380443e-31
	.float 6.538930591862381e-38, 1.0815539563937626e-35, 1.6951903950228028e-31, 1.7105980696767709e-31
	.float 1.725684364175224e-31, 6.575665350844963e-38, 1.0862560055435331e-35, 1.733709581657723e-31
	.float 1.749117256311691e-31, 1.764203080612404e-31, 6.612400109827545e-38, 1.0909580546933036e-35
	.float 1.772228768292643e-31, 1.7876364429466111e-31, 1.8027217970495837e-31, 6.649134868810128e-38
	.float 1.0956601038430742e-35, 1.8107479549275632e-31, 1.8261556295815312e-31, 1.8412405134867635e-31
	.float 6.68586962779271e-38, 1.1003621529928447e-35, 1.8492671415624833e-31, 1.8646748162164514e-31
	.float 1.8797592299239433e-31, 6.722604386775292e-38, 1.1050642021426152e-35, 1.8877863281974034e-31
	.float 1.9031940028513715e-31, 1.918277946361123e-31, 6.759339145757874e-38, 1.1097662512923857e-35
	.float 1.9263055148323236e-31, 1.9417131894862916e-31, 1.9567966627983029e-31, 6.796073904740457e-38
	.float 1.1144683004421563e-35, 1.9648247014672437e-31, 1.988312489189894e-31, 2.018478495418436e-31
	.float 6.832808663723039e-38, 1.1191703495919268e-35, 2.034535513151798e-31, 2.0653508624597342e-31
	.float 2.0955159282927955e-31, 6.869543422705621e-38, 1.1238723987416973e-35, 2.1115738864216384e-31
	.float 2.1423892357295745e-31, 2.172553361167155e-31, 6.906278181688203e-38, 1.1285744478914678e-35
	.float 2.1886122596914787e-31, 2.2194276089994148e-31, 2.2495907940415147e-31, 6.943012940670785e-38
	.float 1.1332764970412383e-35, 2.265650632961319e-31, 2.296465982269255e-31, 2.3266282269158743e-31
	.float 6.979747699653368e-38, 1.1379785461910089e-35, 2.342689006231159e-31, 2.3735043555390953e-31
	.float 2.403665659790234e-31, 7.01648245863595e-38, 1.1426805953407794e-35, 2.4197273795009994e-31
	.float 2.4505427288089355e-31, 2.4807030926645935e-31, 7.053217217618532e-38, 1.1473826444905499e-35
	.float 2.4967657527708397e-31, 2.527581102078776e-31, 2.557740525538953e-31, 7.089951976601114e-38
	.float 1.1520846936403204e-35, 2.57380412604068e-31, 2.604619475348616e-31, 2.6347779584133127e-31
	.float 7.126686735583696e-38, 1.156786742790091e-35, 2.65084249931052e-31, 2.6816578486184563e-31
	.float 2.7118153912876723e-31, 7.163421494566279e-38, 1.1614887919398615e-35, 2.7278808725803605e-31
	.float 2.7586962218882966e-31, 2.788852824162032e-31, 7.200156253548861e-38, 1.166190841089632e-35
	.float 2.8049192458502007e-31, 2.835734595158137e-31, 2.8658902570363914e-31, 7.236891012531443e-38
	.float 1.1708928902394025e-35, 2.881957619120041e-31, 2.912772968427977e-31, 2.942927689910751e-31
	.float 7.273625771514025e-38, 1.175594939389173e-35, 2.9589959923898812e-31, 2.9898113416978173e-31
	.float 3.0199651227851106e-31, 7.310360530496608e-38, 1.1802969885389436e-35, 3.0360343656597215e-31
	.float 3.0668497149676576e-31, 3.0970025556594702e-31, 7.34709528947919e-38, 1.1849990376887141e-35
	.float 3.1130727389295617e-31, 3.143888088237498e-31, 3.17403998853383e-31, 7.383830048461772e-38
	.float 1.1897010868384846e-35, 3.190111112199402e-31, 3.220926461507338e-31, 3.2510774214081894e-31
	.float 7.420564807444354e-38, 1.1944031359882552e-35, 3.2671494854692422e-31, 3.2979648347771784e-31
	.float 3.328114854282549e-31, 7.457299566426936e-38, 1.1991051851380257e-35, 3.3441878587390825e-31
	.float 3.3750032080470186e-31, 3.4051522871569086e-31, 7.494034325409519e-38, 1.20390825333357e-35
	.float 3.4212262320089228e-31, 3.452041581316859e-31, 3.4821897200312682e-31, 7.530769084392101e-38
	.float 1.213312351633111e-35, 3.498264605278763e-31, 3.529079954586699e-31, 3.559227152905628e-31
	.float 7.567503843374683e-38, 1.222716449932652e-35, 3.5753029785486033e-31, 3.6061183278565394e-31
	.float 3.6362645857799874e-31, 7.604238602357265e-38, 1.232120548232193e-35, 3.6523413518184435e-31
	.float 3.6831567011263796e-31, 3.713302018654347e-31, 7.640973361339847e-38, 1.2415246465317342e-35
	.float 3.729379725088284e-31, 3.76019507439622e-31, 3.7903394515287066e-31, 7.67770812032243e-38
	.float 1.2509287448312752e-35, 3.806418098358124e-31, 3.83723344766606e-31, 3.8673768844030662e-31
	.float 7.714442879305012e-38, 1.2603328431308163e-35, 3.8834564716279643e-31, 3.9142718209359004e-31
	.float 3.944524108449793e-31, 7.751177638287594e-38, 1.2697369414303573e-35, 3.97668516369055e-31
	.float 4.038315862306422e-31, 4.098598974198512e-31, 7.787912397270176e-38, 1.2791410397298984e-35
	.float 4.130761910230231e-31, 4.192392608846103e-31, 4.252673839947231e-31, 7.824647156252759e-38
	.float 1.2885451380294394e-35, 4.284838656769911e-31, 4.346469355385783e-31, 4.40674870569595e-31
	.float 7.861381915235341e-38, 1.2979492363289805e-35, 4.438915403309592e-31, 4.500546101925464e-31
	.float 4.560823571444669e-31, 7.898116674217923e-38, 1.3073533346285215e-35, 4.592992149849272e-31
	.float 4.654622848465144e-31, 4.714898437193389e-31, 7.934851433200505e-38, 1.3167574329280626e-35
	.float 4.747068896388953e-31, 4.808699595004825e-31, 4.868973302942108e-31, 7.971586192183087e-38
	.float 1.3261615312276036e-35, 4.901145642928633e-31, 4.962776341544505e-31, 5.023048168690827e-31
	.float 8.00832095116567e-38, 1.3355656295271446e-35, 5.055222389468314e-31, 5.116853088084186e-31
	.float 5.177123034439546e-31, 8.045055710148252e-38, 1.3449697278266857e-35, 5.209299136007994e-31
	.float 5.270929834623866e-31, 5.331197900188265e-31, 8.081790469130834e-38, 1.3543738261262267e-35
	.float 5.363375882547675e-31, 5.425006581163547e-31, 5.485272765936985e-31, 8.118525228113416e-38
	.float 1.3637779244257678e-35, 5.517452629087355e-31, 5.579083327703227e-31, 5.639347631685704e-31
	.float 8.155259987095998e-38, 1.3731820227253088e-35, 5.671529375627036e-31, 5.733160074242908e-31
	.float 5.793422497434423e-31, 8.191994746078581e-38, 1.38258612102485e-35, 5.825606122166716e-31
	.float 5.8872368207825884e-31, 5.947497363183142e-31, 8.228729505061163e-38, 1.391990219324391e-35
	.float 5.979682868706397e-31, 6.041313567322269e-31, 6.101572228931861e-31, 8.265464264043745e-38
	.float 1.401394317623932e-35, 6.133759615246077e-31, 6.1953903138619495e-31, 6.255647094680581e-31
	.float 8.302199023026327e-38, 1.410798415923473e-35, 6.287836361785758e-31, 6.34946706040163e-31
	.float 6.4097219604293e-31, 8.33893378200891e-38, 1.420202514223014e-35, 6.441913108325438e-31
	.float 6.5035438069413105e-31, 6.563796826178019e-31, 8.375668540991492e-38, 1.429606612522555e-35
	.float 6.595989854865119e-31, 6.657620553480991e-31, 6.717871691926738e-31, 8.412403299974074e-38
	.float 1.4390107108220962e-35, 6.750066601404799e-31, 6.8116973000206715e-31, 6.871946557675457e-31
	.float 8.449138058956656e-38, 1.4484148091216372e-35, 6.90414334794448e-31, 6.965774046560352e-31
	.float 7.026021423424177e-31, 8.485872817939238e-38, 1.4578189074211783e-35, 7.05822009448416e-31
	.float 7.1198507931000325e-31, 7.180096289172896e-31, 8.522607576921821e-38, 1.4672230057207193e-35
	.float 7.212296841023841e-31, 7.273927539639713e-31, 7.334171154921615e-31, 8.559342335904403e-38
	.float 1.4766271040202603e-35, 7.366373587563521e-31, 7.428004286179394e-31, 7.488246020670334e-31
	.float 8.596077094886985e-38, 1.4860312023198014e-35, 7.520450334103202e-31, 7.582081032719074e-31
	.float 7.642320886419053e-31, 8.632811853869567e-38, 1.4954353006193424e-35, 7.674527080642882e-31
	.float 7.736157779258755e-31, 7.7963957521677726e-31, 8.66954661285215e-38, 1.5048393989188835e-35
	.float 7.828603827182563e-31, 7.891859999386752e-31, 8.012332183622865e-31, 8.706281371834732e-38
	.float 1.5142434972184245e-35, 8.076752095234369e-31, 8.200013492466113e-31, 8.320481915120304e-31
	.float 8.743016130817314e-38, 1.5236475955179656e-35, 8.38490558831373e-31, 8.508166985545474e-31
	.float 8.628631646617742e-31, 8.779750889799896e-38, 1.5330516938175066e-35, 8.69305908139309e-31
	.float 8.816320478624835e-31, 8.93678137811518e-31, 8.816485648782478e-38, 1.5424557921170477e-35
	.float 9.001212574472452e-31, 9.124473971704196e-31, 9.244931109612619e-31, 8.853220407765061e-38
	.float 1.5518598904165887e-35, 9.309366067551813e-31, 9.432627464783557e-31, 9.553080841110057e-31
	.float 8.889955166747643e-38, 1.5612639887161298e-35, 9.617519560631174e-31, 9.740780957862918e-31
	.float 9.861230572607496e-31, 8.926689925730225e-38, 1.5706680870156708e-35, 9.925673053710535e-31
	.float 1.004893445094228e-30, 1.0169380304104934e-30, 8.963424684712807e-38, 1.5800721853152119e-35
	.float 1.0233826546789896e-30, 1.035708794402164e-30, 1.0477530035602373e-30, 9.000159443695389e-38
	.float 1.589476283614753e-35, 1.0541980039869257e-30, 1.0665241437101001e-30, 1.0785679767099811e-30
	.float 9.036894202677972e-38, 1.598880381914294e-35, 1.0850133532948618e-30, 1.0973394930180362e-30
	.float 1.109382949859725e-30, 9.073628961660554e-38, 1.608284480213835e-35, 1.1158287026027979e-30
	.float 1.1281548423259723e-30, 1.1401979230094688e-30, 9.110363720643136e-38, 1.617688578513376e-35
	.float 1.146644051910734e-30, 1.1589701916339084e-30, 1.1710128961592126e-30, 9.147098479625718e-38
	.float 1.627092676812917e-35, 1.1774594012186701e-30, 1.1897855409418446e-30, 1.2018278693089565e-30
	.float 9.1838332386083e-38, 1.6364967751124581e-35, 1.2082747505266062e-30, 1.2206008902497807e-30
	.float 1.2326428424587003e-30, 9.220567997590883e-38, 1.6459008734119992e-35, 1.2390900998345423e-30
	.float 1.2514162395577168e-30, 1.2634578156084441e-30, 9.257302756573465e-38, 1.6553049717115402e-35
	.float 1.2699054491424784e-30, 1.2822315888656529e-30, 1.294272788758188e-30, 9.294037515556047e-38
	.float 1.6647090700110813e-35, 1.3007207984504145e-30, 1.313046938173589e-30, 1.3250877619079318e-30
	.float 9.330772274538629e-38, 1.6741131683106223e-35, 1.3315361477583506e-30, 1.343862287481525e-30
	.float 1.3559027350576757e-30, 9.367507033521212e-38, 1.6835172666101634e-35, 1.3623514970662867e-30
	.float 1.3746776367894612e-30, 1.3867177082074195e-30, 9.404528778429288e-38, 1.6929213649097044e-35
	.float 1.3931668463742228e-30, 1.4054929860973973e-30, 1.4175326813571633e-30, 9.477998296394452e-38
	.float 1.7023254632092455e-35, 1.423982195682159e-30, 1.4363083354053334e-30, 1.4483476545069072e-30
	.float 9.551467814359616e-38, 1.7117295615087865e-35, 1.454797544990095e-30, 1.4671236847132695e-30
	.float 1.479162627656651e-30, 9.62493733232478e-38, 1.7211336598083276e-35, 1.4856128942980311e-30
	.float 1.4979390340212056e-30, 1.5099776008063949e-30, 9.698406850289945e-38, 1.7305377581078686e-35
	.float 1.5164282436059672e-30, 1.5287543833291417e-30, 1.5407925739561387e-30, 9.77187636825511e-38
	.float 1.7399418564074097e-35, 1.5472435929139033e-30, 1.5595697326370778e-30, 1.5716075471058825e-30
	.float 9.845345886220274e-38, 1.7493459547069507e-35, 1.5783960740016553e-30, 1.603048353448004e-30
	.float 1.627123230069229e-30, 9.918815404185439e-38, 1.7587500530064918e-35, 1.6400267726175275e-30
	.float 1.6646790520638764e-30, 1.6887531763687168e-30, 9.992284922150603e-38, 1.7681541513060328e-35
	.float 1.7016574712333997e-30, 1.7263097506797486e-30, 1.7503831226682045e-30, 1.0065754440115767e-37
	.float 1.7775582496055739e-35, 1.763288169849272e-30, 1.7879404492956208e-30, 1.812013068967692e-30
	.float 1.0139223958080932e-37, 1.786962347905115e-35, 1.824918868465144e-30, 1.849571147911493e-30
	.float 1.87364301526718e-30, 1.0212693476046096e-37, 1.796366446204656e-35, 1.8865495670810163e-30
	.float 1.9112018465273652e-30, 1.9352729615666675e-30, 1.028616299401126e-37, 1.805770544504197e-35
	.float 1.9481802656968885e-30, 1.9728325451432374e-30, 1.9969029078661552e-30, 1.0359632511976425e-37
	.float 1.815174642803738e-35, 2.0098109643127607e-30, 2.0344632437591096e-30, 2.058532854165643e-30
	.float 1.043310202994159e-37, 1.824578741103279e-35, 2.071441662928633e-30, 2.0960939423749818e-30
	.float 2.1201628004651306e-30, 1.0506571547906754e-37, 1.83398283940282e-35, 2.133072361544505e-30
	.float 2.157724640990854e-30, 2.1817927467646182e-30, 1.0580041065871918e-37, 1.8433869377023612e-35
	.float 2.1947030601603773e-30, 2.2193553396067262e-30, 2.243422693064106e-30, 1.0653510583837083e-37
	.float 1.8527910360019022e-35, 2.2563337587762495e-30, 2.2809860382225984e-30, 2.3050526393635936e-30
	.float 1.0726980101802247e-37, 1.8621951343014433e-35, 2.3179644573921217e-30, 2.3426167368384706e-30
	.float 2.3666825856630813e-30, 1.0800449619767412e-37, 1.8715992326009843e-35, 2.379595156007994e-30
	.float 2.4042474354543428e-30, 2.428312531962569e-30, 1.0873919137732576e-37, 1.8810033309005254e-35
	.float 2.441225854623866e-30, 2.465878134070215e-30, 2.4899424782620566e-30, 1.094738865569774e-37
	.float 1.8904074292000664e-35, 2.5028565532397384e-30, 2.5275088326860872e-30, 2.5515724245615443e-30
	.float 1.1020858173662905e-37, 1.8998115274996075e-35, 2.5644872518556106e-30, 2.5891395313019594e-30
	.float 2.613202370861032e-30, 1.109432769162807e-37, 1.9092156257991485e-35, 2.6261179504714828e-30
	.float 2.6507702299178316e-30, 2.6748323171605197e-30, 1.1167797209593234e-37, 1.9186197240986896e-35
	.float 2.687748649087355e-30, 2.712400928533704e-30, 2.7364622634600074e-30, 1.1241266727558398e-37
	.float 1.9280238223982306e-35, 2.749379347703227e-30, 2.774031627149576e-30, 2.798092209759495e-30
	.float 1.1314736245523563e-37, 1.9374279206977716e-35, 2.8110100463190994e-30, 2.8356623257654483e-30
	.float 2.8597221560589827e-30, 1.1388205763488727e-37, 1.9468320189973127e-35, 2.8726407449349716e-30
	.float 2.8972930243813205e-30, 2.9213521023584704e-30, 1.1461675281453892e-37, 1.9562361172968537e-35
	.float 2.9342714435508438e-30, 2.9589237229971927e-30, 2.982982048657958e-30, 1.1535144799419056e-37
	.float 1.9656402155963948e-35, 2.995902142166716e-30, 3.020554421613065e-30, 3.0446119949574457e-30
	.float 1.160861431738422e-37, 1.9750443138959358e-35, 3.0575328407825882e-30, 3.082185120228937e-30
	.float 3.1062419412569334e-30, 1.1682083835349385e-37, 1.984448412195477e-35, 3.1191635393984604e-30
	.float 3.1438158188448093e-30, 3.180300154228795e-30, 1.175555335331455e-37, 1.993852510495018e-35
	.float 3.206144855144618e-30, 3.255449414037316e-30, 3.30356004682777e-30, 1.1829022871279714e-37
	.float 2.003256608794559e-35, 3.3294062523763624e-30, 3.37871081126906e-30, 3.426819939426746e-30
	.float 1.1902492389244878e-37, 2.0126607070941e-35, 3.452667649608107e-30, 3.5019722085008046e-30
	.float 3.550079832025721e-30, 1.1975961907210043e-37, 2.022064805393641e-35, 3.575929046839851e-30
	.float 3.625233605732549e-30, 3.6733397246246964e-30, 1.2049431425175207e-37, 2.031468903693182e-35
	.float 3.6991904440715956e-30, 3.7484950029642934e-30, 3.796599617223672e-30, 1.2122900943140371e-37
	.float 2.0408730019927232e-35, 3.82245184130334e-30, 3.871756400196038e-30, 3.919859509822647e-30
	.float 1.2196370461105536e-37, 2.0502771002922642e-35, 3.9457132385350845e-30, 3.995017797427782e-30
	.float 4.0431194024216225e-30, 1.22698399790707e-37, 2.0596811985918053e-35, 4.068974635766829e-30
	.float 4.1182791946595266e-30, 4.166379295020598e-30, 1.2343309497035865e-37, 2.0690852968913463e-35
	.float 4.192236032998573e-30, 4.241540591891271e-30, 4.289639187619573e-30, 1.241677901500103e-37
	.float 2.0784893951908874e-35, 4.315497430230318e-30, 4.3648019891230155e-30, 4.4128990802185486e-30
	.float 1.2490248532966194e-37, 2.0878934934904284e-35, 4.438758827462062e-30, 4.48806338635476e-30
	.float 4.536158972817524e-30, 1.2563718050931358e-37, 2.0972975917899694e-35, 4.5620202246938065e-30
	.float 4.611324783586504e-30, 4.659418865416499e-30, 1.2637187568896522e-37, 2.1067016900895105e-35
	.float 4.685281621925551e-30, 4.734586180818249e-30, 4.7826787580154746e-30, 1.2710657086861687e-37
	.float 2.1161057883890515e-35, 4.808543019157295e-30, 4.857847578049993e-30, 4.90593865061445e-30
	.float 1.2784126604826851e-37, 2.1255098866885926e-35, 4.93180441638904e-30, 4.9811089752817375e-30
	.float 5.029198543213425e-30, 1.2857596122792016e-37, 2.1349139849881336e-35, 5.055065813620784e-30
	.float 5.104370372513482e-30, 5.152458435812401e-30, 1.293106564075718e-37, 2.1443180832876747e-35
	.float 5.1783272108525286e-30, 5.227631769745226e-30, 5.275718328411376e-30, 1.3004535158722345e-37
	.float 2.1537221815872157e-35, 5.301588608084273e-30, 5.350893166976971e-30, 5.3989782210103514e-30
	.float 1.307800467668751e-37, 2.1631262798867568e-35, 5.4248500053160174e-30, 5.474154564208715e-30
	.float 5.522238113609327e-30, 1.3151474194652673e-37, 2.1725303781862978e-35, 5.548111402547762e-30
	.float 5.5974159614404596e-30, 5.645498006208302e-30, 1.3224943712617838e-37, 2.181934476485839e-35
	.float 5.671372799779506e-30, 5.720677358672204e-30, 5.7687578988072775e-30, 1.3298413230583002e-37
	.float 2.19133857478538e-35, 5.7946341970112506e-30, 5.8439387559039484e-30, 5.892017791406253e-30
	.float 1.3371882748548167e-37, 2.200742673084921e-35, 5.917895594242995e-30, 5.967200153135693e-30
	.float 6.015277684005228e-30, 1.3445352266513331e-37, 2.210146771384462e-35, 6.0411569914747394e-30
	.float 6.090461550367437e-30, 6.1385375766042036e-30, 1.3518821784478496e-37, 2.219550869684003e-35
	.float 6.164418388706484e-30, 6.2137229475991816e-30, 6.261797469203179e-30, 1.359229130244366e-37
	.float 2.228954967983544e-35, 6.287679785938228e-30, 6.363081447893758e-30, 6.459227481836214e-30
	.float 1.3665760820408824e-37, 2.2383590662830852e-35, 6.510995124571851e-30, 6.609604242357246e-30
	.float 6.705747267034165e-30, 1.3739230338373989e-37, 2.2477631645826262e-35, 6.75751791903534e-30
	.float 6.856127036820735e-30, 6.952267052232116e-30, 1.3812699856339153e-37, 2.2571672628821672e-35
	.float 7.004040713498829e-30, 7.102649831284224e-30, 7.198786837430066e-30, 1.3886169374304318e-37
	.float 2.2665713611817083e-35, 7.250563507962317e-30, 7.349172625747713e-30, 7.445306622628017e-30
	.float 1.3959638892269482e-37, 2.2759754594812493e-35, 7.497086302425806e-30, 7.595695420211202e-30
	.float 7.691826407825968e-30, 1.4033108410234647e-37, 2.2853795577807904e-35, 7.743609096889295e-30
	.float 7.84221821467469e-30, 7.938346193023918e-30, 1.410657792819981e-37, 2.2947836560803314e-35
	.float 7.990131891352784e-30, 8.08874100913818e-30, 8.184865978221869e-30, 1.4180047446164975e-37
	.float 2.3041877543798725e-35, 8.236654685816273e-30, 8.335263803601668e-30, 8.43138576341982e-30
	.float 1.425351696413014e-37, 2.3135918526794135e-35, 8.483177480279761e-30, 8.581786598065157e-30
	.float 8.67790554861777e-30, 1.4326986482095304e-37, 2.3229959509789546e-35, 8.72970027474325e-30
	.float 8.828309392528646e-30, 8.924425333815721e-30, 1.4400456000060469e-37, 2.3324000492784956e-35
	.float 8.976223069206739e-30, 9.074832186992135e-30, 9.170945119013672e-30, 1.4473925518025633e-37
	.float 2.3418041475780367e-35, 9.222745863670228e-30, 9.321354981455623e-30, 9.417464904211623e-30
	.float 1.4547395035990798e-37, 2.3512082458775777e-35, 9.469268658133717e-30, 9.567877775919112e-30
	.float 9.663984689409573e-30, 1.4620864553955962e-37, 2.3606123441771188e-35, 9.715791452597206e-30
	.float 9.814400570382601e-30, 9.910504474607524e-30, 1.4694334071921126e-37, 2.3700164424766598e-35
	.float 9.962314247060694e-30, 1.006092336484609e-29, 1.0157024259805475e-29, 1.476780358988629e-37
	.float 2.3794205407762009e-35, 1.0208837041524183e-29, 1.0307446159309579e-29, 1.0403544045003426e-29
	.float 1.4841273107851455e-37, 2.388824639075742e-35, 1.0455359835987672e-29, 1.0553968953773068e-29
	.float 1.0650063830201376e-29, 1.491474262581662e-37, 2.398228737375283e-35, 1.0701882630451161e-29
	.float 1.0800491748236556e-29, 1.0896583615399327e-29, 1.4988212143781784e-37, 2.407853240865603e-35
	.float 1.094840542491465e-29, 1.1047014542700045e-29, 1.1143103400597278e-29, 1.5061681661746949e-37
	.float 2.4266614374646853e-35, 1.1194928219378138e-29, 1.1293537337163534e-29, 1.1389623185795228e-29
	.float 1.5135151179712113e-37, 2.4454696340637674e-35, 1.1441451013841627e-29, 1.1540060131627023e-29
	.float 1.1636142970993179e-29, 1.5208620697677277e-37, 2.4642778306628495e-35, 1.1687973808305116e-29
	.float 1.1786582926090512e-29, 1.188266275619113e-29, 1.5282090215642442e-37, 2.4830860272619315e-35
	.float 1.1934496602768605e-29, 1.2033105720554e-29, 1.212918254138908e-29, 1.5355559733607606e-37
	.float 2.5018942238610136e-35, 1.2181019397232094e-29, 1.2279628515017489e-29, 1.2375702326587031e-29
	.float 1.542902925157277e-37, 2.520702420460096e-35, 1.2427542191695583e-29, 1.2526151309480978e-29
	.float 1.2622669740033775e-29, 1.5502498769537935e-37, 2.539510617059178e-35, 1.2726355488781954e-29
	.float 1.2923573724352745e-29, 1.3115709310429677e-29, 1.55759682875031e-37, 2.55831881365826e-35
	.float 1.3219401077708932e-29, 1.3416619313279723e-29, 1.3608748880825578e-29, 1.5649437805468264e-37
	.float 2.577127010257342e-35, 1.371244666663591e-29, 1.39096649022067e-29, 1.410178845122148e-29
	.float 1.5722907323433428e-37, 2.595935206856424e-35, 1.4205492255562887e-29, 1.4402710491133678e-29
	.float 1.459482802161738e-29, 1.5796376841398593e-37, 2.614743403455506e-35, 1.4698537844489864e-29
	.float 1.4895756080060656e-29, 1.5087867592013282e-29, 1.5869846359363757e-37, 2.6335516000545883e-35
	.float 1.5191583433416842e-29, 1.5388801668987633e-29, 1.5580907162409184e-29, 1.5943315877328922e-37
	.float 2.6523597966536704e-35, 1.568462902234382e-29, 1.588184725791461e-29, 1.6073946732805085e-29
	.float 1.6016785395294086e-37, 2.6711679932527525e-35, 1.6177674611270797e-29, 1.6374892846841588e-29
	.float 1.6566986303200987e-29, 1.609025491325925e-37, 2.6899761898518346e-35, 1.6670720200197775e-29
	.float 1.6867938435768566e-29, 1.7060025873596888e-29, 1.6163724431224415e-37, 2.7087843864509167e-35
	.float 1.7163765789124753e-29, 1.7360984024695544e-29, 1.755306544399279e-29, 1.623719394918958e-37
	.float 2.727592583049999e-35, 1.765681137805173e-29, 1.785402961362252e-29, 1.804610501438869e-29
	.float 1.6310663467154744e-37, 2.746400779649081e-35, 1.8149856966978708e-29, 1.83470752025495e-29
	.float 1.8539144584784592e-29, 1.6384132985119908e-37, 2.765208976248163e-35, 1.8642902555905686e-29
	.float 1.8840120791476477e-29, 1.9032184155180494e-29, 1.6457602503085073e-37, 2.784017172847245e-35
	.float 1.9135948144832663e-29, 1.9333166380403454e-29, 1.9525223725576395e-29, 1.6531072021050237e-37
	.float 2.802825369446327e-35, 1.962899373375964e-29, 1.9826211969330432e-29, 2.0018263295972297e-29
	.float 1.6604541539015402e-37, 2.821633566045409e-35, 2.0122039322686619e-29, 2.031925755825741e-29
	.float 2.0511302866368198e-29, 1.6678011056980566e-37, 2.8404417626444913e-35, 2.0615084911613596e-29
	.float 2.0812303147184387e-29, 2.10043424367641e-29, 1.675148057494573e-37, 2.8592499592435734e-35
	.float 2.1108130500540574e-29, 2.1305348736111365e-29, 2.149738200716e-29, 1.6824950092910895e-37
	.float 2.8780581558426555e-35, 2.1601176089467551e-29, 2.1798394325038342e-29, 2.1990421577555902e-29
	.float 1.689841961087606e-37, 2.8968663524417376e-35, 2.209422167839453e-29, 2.229143991396532e-29
	.float 2.2483461147951804e-29, 1.6971889128841224e-37, 2.9156745490408197e-35, 2.2587267267321507e-29
	.float 2.2784485502892298e-29, 2.2976500718347705e-29, 1.7045358646806388e-37, 2.934482745639902e-35
	.float 2.3080312856248484e-29, 2.3277531091819275e-29, 2.3469540288743607e-29, 1.7118828164771553e-37
	.float 2.953290942238984e-35, 2.3573358445175462e-29, 2.3770576680746253e-29, 2.3962579859139508e-29
	.float 1.7192297682736717e-37, 2.972099138838066e-35, 2.406640403410244e-29, 2.426362226967323e-29
	.float 2.445561942953541e-29, 1.7265767200701881e-37, 2.990907335437148e-35, 2.4559449623029417e-29
	.float 2.4756667858600208e-29, 2.494865899993131e-29, 1.7339236718667046e-37, 3.00971553203623e-35
	.float 2.5052495211956395e-29, 2.5255877927981994e-29, 2.5639848173582047e-29, 1.741270623663221e-37
	.float 3.0285237286353123e-35, 2.584753263469437e-29, 2.624196910583595e-29, 2.662592731437385e-29
	.float 1.7486175754597375e-37, 3.0473319252343944e-35, 2.683362381254832e-29, 2.7228060283689905e-29
	.float 2.761200645516565e-29, 1.755964527256254e-37, 3.0661401218334765e-35, 2.781971499040228e-29
	.float 2.821415146154386e-29, 2.8598085595957456e-29, 1.7633114790527704e-37, 3.0849483184325586e-35
	.float 2.8805806168256233e-29, 2.9200242639397815e-29, 2.958416473674926e-29, 1.7706584308492868e-37
	.float 3.1037565150316406e-35, 2.979189734611019e-29, 3.018633381725177e-29, 3.057024387754106e-29
	.float 1.7780053826458032e-37, 3.122564711630723e-35, 3.0777988523964144e-29, 3.1172424995105726e-29
	.float 3.1556323018332864e-29, 1.7853523344423197e-37, 3.141372908229805e-35, 3.17640797018181e-29
	.float 3.215851617295968e-29, 3.2542402159124667e-29, 1.7926992862388361e-37, 3.160181104828887e-35
	.float 3.2750170879672054e-29, 3.3144607350813636e-29, 3.352848129991647e-29, 1.8000462380353526e-37
	.float 3.178989301427969e-35, 3.373626205752601e-29, 3.413069852866759e-29, 3.451456044070827e-29
	.float 1.807393189831869e-37, 3.197797498027051e-35, 3.4722353235379965e-29, 3.5116789706521547e-29
	.float 3.5500639581500076e-29, 1.8147401416283855e-37, 3.216605694626133e-35, 3.570844441323392e-29
	.float 3.61028808843755e-29, 3.648671872229188e-29, 1.822087093424902e-37, 3.2354138912252153e-35
	.float 3.6694535591087875e-29, 3.708897206222946e-29, 3.747279786308368e-29, 1.8294340452214183e-37
	.float 3.2542220878242974e-35, 3.768062676894183e-29, 3.8075063240083413e-29, 3.8458877003875484e-29
	.float 1.8367809970179348e-37, 3.2730302844233795e-35, 3.8666717946795786e-29, 3.906115441793737e-29
	.float 3.9444956144667287e-29, 1.8441279488144512e-37, 3.2918384810224616e-35, 3.965280912464974e-29
	.float 4.0047245595791323e-29, 4.043103528545909e-29, 1.8514749006109677e-37, 3.3106466776215437e-35
	.float 4.0638900302503697e-29, 4.103333677364528e-29, 4.141711442625089e-29, 1.8588218524074841e-37
	.float 3.329454874220626e-35, 4.162499148035765e-29, 4.2019427951499234e-29, 4.2403193567042696e-29
	.float 1.8661688042040006e-37, 3.348263070819708e-35, 4.2611082658211607e-29, 4.300551912935319e-29
	.float 4.33892727078345e-29, 1.873515756000517e-37, 3.36707126741879e-35, 4.359717383606556e-29
	.float 4.3991610307207145e-29, 4.43753518486263e-29, 1.880934454278407e-37, 3.385879464017872e-35
	.float 4.458326501391952e-29, 4.49777014850611e-29, 4.5361430989418104e-29, 1.8956283578714398e-37
	.float 3.404687660616954e-35, 4.5569356191773473e-29, 4.5963792662915055e-29, 4.6347510130209907e-29
	.float 1.9103222614644726e-37, 3.423495857216036e-35, 4.655544736962743e-29, 4.694988384076901e-29
	.float 4.733358927100171e-29, 1.9250161650575055e-37, 3.4423040538151183e-35, 4.7541538547481384e-29
	.float 4.7935975018622966e-29, 4.831966841179351e-29, 1.9397100686505384e-37, 3.4611122504142004e-35
	.float 4.852762972533534e-29, 4.892206619647692e-29, 4.9305747552585316e-29, 1.9544039722435713e-37
	.float 3.4799204470132825e-35, 4.9513720903189294e-29, 4.9908157374330876e-29, 5.029182669337712e-29
	.float 1.969097875836604e-37, 3.4987286436123646e-35, 5.051252622794174e-29, 5.130139917022491e-29
	.float 5.206871373419309e-29, 1.983791779429637e-37, 3.5175368402114467e-35, 5.248470858364965e-29
	.float 5.327358152593282e-29, 5.404087201577669e-29, 1.99848568302267e-37, 3.536345036810529e-35
	.float 5.445689093935756e-29, 5.524576388164073e-29, 5.60130302973603e-29, 2.013179586615703e-37
	.float 3.555153233409611e-35, 5.642907329506547e-29, 5.721794623734864e-29, 5.79851885789439e-29
	.float 2.0278734902087357e-37, 3.573961430008693e-35, 5.840125565077339e-29, 5.919012859305655e-29
	.float 5.995734686052751e-29, 2.0425673938017686e-37, 3.592769626607775e-35, 6.03734380064813e-29
	.float 6.116231094876446e-29, 6.192950514211112e-29, 2.0572612973948015e-37, 3.611577823206857e-35
	.float 6.234562036218921e-29, 6.313449330447237e-29, 6.390166342369472e-29, 2.0719552009878344e-37
	.float 3.6303860198059393e-35, 6.431780271789712e-29, 6.510667566018028e-29, 6.587382170527833e-29
	.float 2.0866491045808673e-37, 3.6491942164050214e-35, 6.628998507360503e-29, 6.707885801588819e-29
	.float 6.784597998686193e-29, 2.1013430081739e-37, 3.6680024130041035e-35, 6.826216742931294e-29
	.float 6.90510403715961e-29, 6.981813826844554e-29, 2.116036911766933e-37, 3.6868106096031856e-35
	.float 7.023434978502085e-29, 7.102322272730401e-29, 7.179029655002914e-29, 2.130730815359966e-37
	.float 3.7056188062022676e-35, 7.220653214072876e-29, 7.299540508301192e-29, 7.376245483161275e-29
	.float 2.145424718952999e-37, 3.72442700280135e-35, 7.417871449643667e-29, 7.496758743871983e-29
	.float 7.573461311319636e-29, 2.1601186225460317e-37, 3.743235199400432e-35, 7.615089685214458e-29
	.float 7.693976979442774e-29, 7.770677139477996e-29, 2.1748125261390646e-37, 3.762043395999514e-35
	.float 7.812307920785249e-29, 7.891195215013566e-29, 7.967892967636357e-29, 2.1895064297320975e-37
	.float 3.780851592598596e-35, 8.00952615635604e-29, 8.088413450584357e-29, 8.165108795794717e-29
	.float 2.2042003333251304e-37, 3.799659789197678e-35, 8.206744391926831e-29, 8.285631686155148e-29
	.float 8.362324623953078e-29, 2.2188942369181632e-37, 3.81846798579676e-35, 8.403962627497622e-29
	.float 8.482849921725939e-29, 8.559540452111438e-29, 2.233588140511196e-37, 3.8372761823958423e-35
	.float 8.601180863068413e-29, 8.68006815729673e-29, 8.756756280269799e-29, 2.248282044104229e-37
	.float 3.8560843789949244e-35, 8.798399098639204e-29, 8.877286392867521e-29, 8.95397210842816e-29
	.float 2.262975947697262e-37, 3.8748925755940065e-35, 8.995617334209995e-29, 9.074504628438312e-29
	.float 9.15118793658652e-29, 2.2776698512902948e-37, 3.8937007721930886e-35, 9.192835569780787e-29
	.float 9.271722864009103e-29, 9.348403764744881e-29, 2.2923637548833277e-37, 3.9125089687921707e-35
	.float 9.390053805351578e-29, 9.468941099579894e-29, 9.545619592903241e-29, 2.3070576584763606e-37
	.float 3.931317165391253e-35, 9.587272040922369e-29, 9.666159335150685e-29, 9.742835421061602e-29
	.float 2.3217515620693934e-37, 3.950125361990335e-35, 9.78449027649316e-29, 9.863377570721476e-29
	.float 9.940051249219962e-29, 2.3364454656624263e-37, 3.968933558589417e-35, 9.981708512063951e-29
	.float 1.0060595806292267e-28, 1.0177114567927695e-28, 2.3511393692554592e-37, 3.987741755188499e-35
	.float 1.0260433908440532e-28, 1.0418208496897165e-28, 1.0571546224244416e-28, 2.365833272848492e-37
	.float 4.006549951787581e-35, 1.0654870379582115e-28, 1.0812644968038747e-28, 1.0965977880561137e-28
	.float 2.380527176441525e-37, 4.025358148386663e-35
.global lbl_80465F20
lbl_80465F20:
	.float 6.922414413764596e-43, 2.802596928649634e-44, 0.0, 0.0
	.float -6.46267641358891e-39, 1.3844828827529193e-41, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 1.401298464324817e-45
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 1.2382049625641365e-21, 1.2514400543133767e-21, 1.2377583536958111e-21
	.float 4.7193902949814683e-32, 8.334549855352753e-30, 1.2646751460626169e-21, 1.277910237811857e-21
	.float 1.2642282342717038e-21, 4.7386498882989283e-32, 8.38385441424545e-30, 1.2911453295610973e-21
	.float 1.3043804213103374e-21, 1.2906981148475966e-21, 4.7579094816163884e-32, 8.433158973138148e-30
	.float 1.3176155130595776e-21, 1.3308506048088178e-21, 1.3171679954234894e-21, 4.7771690749338485e-32
	.float 8.482463532030846e-30, 1.344085696558058e-21, 1.3573207883072982e-21, 1.3436378759993821e-21
	.float 4.7964286682513085e-32, 8.531768090923544e-30, 1.3705558800565383e-21, 1.3837909718057785e-21
	.float 1.3701077565752749e-21, 4.8156882615687686e-32, 8.581072649816242e-30, 1.3970260635550187e-21
	.float 1.4102611553042589e-21, 1.3965776371511676e-21, 4.8349478548862287e-32, 8.63037720870894e-30
	.float 1.423496247053499e-21, 1.4367313388027392e-21, 1.4230475177270604e-21, 4.854207448203689e-32
	.float 8.679681767601637e-30, 1.4499664305519794e-21, 1.4632015223012196e-21, 1.4495173983029531e-21
	.float 4.873467041521149e-32, 8.728986326494335e-30, 1.4764366140504598e-21, 1.4896717057997e-21
	.float 1.4759872788788459e-21, 4.892726634838609e-32, 8.778290885387033e-30, 1.5029067975489401e-21
	.float 1.5161418892981803e-21, 1.5024571594547386e-21, 4.911986228156069e-32, 8.82759544427973e-30
	.float 1.5293769810474205e-21, 1.5426120727966607e-21, 1.5289270400306314e-21, 4.932110985315734e-32
	.float 8.876900003172428e-30, 1.5558471645459008e-21, 1.569082256295141e-21, 1.5553969206065241e-21
	.float 4.970630171950654e-32, 8.926204562065126e-30, 1.5823173480443812e-21, 1.5955524397936214e-21
	.float 1.5818668011824169e-21, 5.009149358585574e-32, 8.975509120957824e-30, 1.6087875315428616e-21
	.float 1.6220226232921017e-21, 1.6083366817583096e-21, 5.047668545220495e-32, 9.024813679850521e-30
	.float 1.635257715041342e-21, 1.6484928067905821e-21, 1.6348065623342024e-21, 5.086187731855415e-32
	.float 9.074118238743219e-30, 1.6617278985398223e-21, 1.6749629902890625e-21, 1.6612764429100952e-21
	.float 5.124706918490335e-32, 9.123422797635917e-30, 1.6881980820383026e-21, 1.708800453066485e-21
	.float 1.687746323485988e-21, 5.163226105125255e-32, 9.172727356528615e-30, 1.7352706365649653e-21
	.float 1.7617408200634457e-21, 1.7343665136151607e-21, 5.201745291760175e-32, 9.222031915421312e-30
	.float 1.788211003561926e-21, 1.8146811870604064e-21, 1.787306274766946e-21, 5.240264478395095e-32
	.float 9.27133647431401e-30, 1.8411513705588868e-21, 1.867621554057367e-21, 1.8402460359187317e-21
	.float 5.278783665030015e-32, 9.320641033206708e-30, 1.8940917375558475e-21, 1.920561921054328e-21
	.float 1.893185797070517e-21, 5.317302851664935e-32, 9.369945592099406e-30, 1.947032104552808e-21
	.float 1.9735022880512885e-21, 1.9461255582223027e-21, 5.355822038299856e-32, 9.419250150992104e-30
	.float 1.999972471549769e-21, 2.0264426550482493e-21, 1.9990653193740882e-21, 5.394341224934776e-32
	.float 9.468554709884801e-30, 2.0529128385467296e-21, 2.07938302204521e-21, 2.0520050805258737e-21
	.float 5.432860411569696e-32, 9.517859268777499e-30, 2.1058532055436903e-21, 2.1323233890421707e-21
	.float 2.1049448416776592e-21, 5.471379598204616e-32, 9.567163827670197e-30, 2.158793572540651e-21
	.float 2.1852637560391314e-21, 2.1578846028294447e-21, 5.509898784839536e-32, 9.616468386562895e-30
	.float 2.2117339395376118e-21, 2.238204123036092e-21, 2.2108243639812302e-21, 5.548417971474456e-32
	.float 9.665772945455592e-30, 2.2646743065345725e-21, 2.291144490033053e-21, 2.2637641251330157e-21
	.float 5.586937158109376e-32, 9.71507750434829e-30, 2.3176146735315332e-21, 2.3440848570300136e-21
	.float 2.3167038862848012e-21, 5.625456344744296e-32, 9.764382063240988e-30, 2.370555040528494e-21
	.float 2.3970252240269743e-21, 2.3696436474365867e-21, 5.663975531379217e-32, 9.813686622133686e-30
	.float 2.4234954075254546e-21, 2.449965591023935e-21, 2.4225834085883723e-21, 5.702494718014137e-32
	.float 9.862991181026383e-30, 2.4764357745224154e-21, 2.5029059580208957e-21, 2.4755231697401578e-21
	.float 5.741013904649057e-32, 9.912295739919081e-30, 2.529376141519376e-21, 2.5558463250178564e-21
	.float 2.5284629308919433e-21, 5.779533091283977e-32, 9.961600298811779e-30, 2.5823165085163368e-21
	.float 2.608786692014817e-21, 2.5814026920437288e-21, 5.818052277918897e-32, 1.0010904857704477e-29
	.float 2.6352568755132975e-21, 2.661727059011778e-21, 2.6343424531955143e-21, 5.856571464553817e-32
	.float 1.0060209416597174e-29, 2.6881972425102582e-21, 2.7146674260087386e-21, 2.6872822143472998e-21
	.float 5.895090651188737e-32, 1.0109513975489872e-29, 2.741137609507219e-21, 2.7676077930056993e-21
	.float 2.7402219754990853e-21, 5.933609837823658e-32, 1.015881853438257e-29, 2.7940779765041797e-21
	.float 2.82054816000266e-21, 2.7931617366508708e-21, 5.972129024458578e-32, 1.0208123093275268e-29
	.float 2.8470183435011404e-21, 2.8734885269996207e-21, 2.8461014978026563e-21, 6.010648211093498e-32
	.float 1.0257427652167966e-29, 2.899958710498101e-21, 2.9264288939965815e-21, 2.899041258954442e-21
	.float 6.049167397728418e-32, 1.0306732211060663e-29, 2.952899077495062e-21, 2.979369260993542e-21
	.float 2.9519810201062273e-21, 6.087686584363338e-32, 1.0356036769953361e-29, 3.0058394444920225e-21
	.float 3.032309627990503e-21, 3.004920781258013e-21, 6.126205770998258e-32, 1.0405341328846059e-29
	.float 3.0587798114889833e-21, 3.0852499949874636e-21, 3.0578605424097983e-21, 6.164724957633178e-32
	.float 1.0454645887738757e-29, 3.111720178485944e-21, 3.1381903619844243e-21, 3.110800303561584e-21
	.float 6.203244144268098e-32, 1.0503950446631454e-29, 3.1646605454829047e-21, 3.191130728981385e-21
	.float 3.1637400647133694e-21, 6.241763330903019e-32, 1.0553255005524152e-29, 3.2176009124798654e-21
	.float 3.2440710959783458e-21, 3.216679825865155e-21, 6.280282517537939e-32, 1.060255956441685e-29
	.float 3.270541279476826e-21, 3.2970114629753065e-21, 3.2696195870169404e-21, 6.318801704172859e-32
	.float 1.0651864123309548e-29, 3.323481646473787e-21, 3.3499518299722672e-21, 3.322559348168726e-21
	.float 6.357320890807779e-32, 1.0701168682202245e-29, 3.3764220134707476e-21, 3.4176526049212545e-21
	.float 3.3754991093205114e-21, 6.395840077442699e-32, 1.0750473241094943e-29, 3.470592971918215e-21
	.float 3.523533338915176e-21, 3.4687459519273924e-21, 6.434359264077619e-32, 1.0799777799987641e-29
	.float 3.576473705912137e-21, 3.629414072909097e-21, 3.5746254742309635e-21, 6.472878450712539e-32
	.float 1.0849082358880339e-29, 3.682354439906058e-21, 3.735294806903019e-21, 3.6805049965345345e-21
	.float 6.511397637347459e-32, 1.0898386917773036e-29, 3.7882351738999795e-21, 3.84117554089694e-21
	.float 3.7863845188381055e-21, 6.54991682398238e-32, 1.0947691476665734e-29, 3.894115907893901e-21
	.float 3.947056274890862e-21, 3.8922640411416765e-21, 6.5884360106173e-32, 1.0996996035558432e-29
	.float 3.999996641887822e-21, 4.052937008884783e-21, 3.9981435634452475e-21, 6.62695519725222e-32
	.float 1.104630059445113e-29, 4.105877375881744e-21, 4.1588177428787045e-21, 4.1040230857488185e-21
	.float 6.66547438388714e-32, 1.1095605153343828e-29, 4.211758109875665e-21, 4.264698476872626e-21
	.float 4.2099026080523896e-21, 6.70399357052206e-32, 1.1144909712236525e-29, 4.317638843869587e-21
	.float 4.3705792108665474e-21, 4.3157821303559606e-21, 6.74251275715698e-32, 1.1194214271129223e-29
	.float 4.423519577863508e-21, 4.476459944860469e-21, 4.4216616526595316e-21, 6.7810319437919e-32
	.float 1.1243518830021921e-29, 4.5294003118574295e-21, 4.58234067885439e-21, 4.5275411749631026e-21
	.float 6.81955113042682e-32, 1.1292823388914619e-29, 4.635281045851351e-21, 4.688221412848312e-21
	.float 4.6334206972666736e-21, 6.858070317061741e-32, 1.1342127947807316e-29, 4.7411617798452724e-21
	.float 4.794102146842233e-21, 4.739300219570245e-21, 6.896589503696661e-32, 1.1391432506700014e-29
	.float 4.847042513839194e-21, 4.8999828808361546e-21, 4.845179741873816e-21, 6.935108690331581e-32
	.float 1.1440737065592712e-29, 4.952923247833115e-21, 5.005863614830076e-21, 4.951059264177387e-21
	.float 6.973627876966501e-32, 1.149004162448541e-29, 5.058803981827037e-21, 5.1117443488239974e-21
	.float 5.056938786480958e-21, 7.012147063601421e-32, 1.1539346183378107e-29, 5.164684715820958e-21
	.float 5.217625082817919e-21, 5.162818308784529e-21, 7.050666250236341e-32, 1.1588650742270805e-29
	.float 5.2705654498148796e-21, 5.32350581681184e-21, 5.2686978310881e-21, 7.089185436871261e-32
	.float 1.1637955301163503e-29, 5.376446183808801e-21, 5.429386550805762e-21, 5.374577353391671e-21
	.float 7.127704623506181e-32, 1.16872598600562e-29, 5.4823269178027225e-21, 5.535267284799683e-21
	.float 5.480456875695242e-21, 7.166223810141102e-32, 1.1736564418948898e-29, 5.588207651796644e-21
	.float 5.6411480187936046e-21, 5.586336397998813e-21, 7.204742996776022e-32, 1.1785868977841596e-29
	.float 5.694088385790565e-21, 5.747028752787526e-21, 5.692215920302384e-21, 7.243262183410942e-32
	.float 1.1835173536734294e-29, 5.799969119784487e-21, 5.8529094867814475e-21, 5.798095442605955e-21
	.float 7.281781370045862e-32, 1.1884478095626992e-29, 5.905849853778408e-21, 5.958790220775369e-21
	.float 5.903974964909526e-21, 7.320300556680782e-32, 1.193378265451969e-29, 6.01173058777233e-21
	.float 6.06467095476929e-21, 6.009854487213097e-21, 7.358819743315702e-32, 1.1983087213412387e-29
	.float 6.117611321766251e-21, 6.170551688763212e-21, 6.115734009516668e-21, 7.397338929950622e-32
	.float 1.2032391772305085e-29, 6.2234920557601725e-21, 6.276432422757133e-21, 6.221613531820239e-21
	.float 7.435858116585543e-32, 1.2081696331197783e-29, 6.329372789754094e-21, 6.382313156751055e-21
	.float 6.32749305412381e-21, 7.474377303220463e-32, 1.213100089009048e-29, 6.435253523748015e-21
	.float 6.488193890744976e-21, 6.433372576427381e-21, 7.512896489855383e-32, 1.2180305448983178e-29
	.float 6.541134257741937e-21, 6.5940746247388975e-21, 6.539252098730952e-21, 7.551415676490303e-32
	.float 1.2229610007875876e-29, 6.647014991735858e-21, 6.699955358732819e-21, 6.645131621034523e-21
	.float 7.589934863125223e-32, 1.2278914566768574e-29, 6.75289572572978e-21, 6.835408607419078e-21
	.float 6.751011143338094e-21, 7.628454049760143e-32, 1.2328219125661272e-29, 6.941289341413e-21
	.float 7.047170075406921e-21, 6.937517753248927e-21, 7.666973236395063e-32, 1.237752368455397e-29
	.float 7.153050809400842e-21, 7.258931543394764e-21, 7.149276797856069e-21, 7.705492423029983e-32
	.float 1.2426828243446667e-29, 7.364812277388685e-21, 7.470693011382607e-21, 7.361035842463211e-21
	.float 7.744011609664904e-32, 1.2476132802339365e-29, 7.576573745376528e-21, 7.68245447937045e-21
	.float 7.572794887070353e-21, 7.782530796299824e-32, 1.2525437361232063e-29, 7.788335213364371e-21
	.float 7.894215947358292e-21, 7.784553931677495e-21, 7.821049982934744e-32, 1.257474192012476e-29
	.float 8.000096681352214e-21, 8.105977415346135e-21, 7.996312976284637e-21, 7.859569169569664e-32
	.float 1.2626318474498728e-29, 8.211858149340057e-21, 8.317738883333978e-21, 8.20807202089178e-21
	.float 7.898088356204584e-32, 1.2724927592284123e-29, 8.4236196173279e-21, 8.529500351321821e-21
	.float 8.419831065498921e-21, 7.936607542839504e-32, 1.2823536710069519e-29, 8.635381085315742e-21
	.float 8.741261819309664e-21, 8.631590110106063e-21, 7.975126729474424e-32, 1.2922145827854914e-29
	.float 8.847142553303585e-21, 8.953023287297507e-21, 8.843349154713205e-21, 8.013645916109344e-32
	.float 1.302075494564031e-29, 9.058904021291428e-21, 9.16478475528535e-21, 9.055108199320347e-21
	.float 8.052165102744265e-32, 1.3119364063425705e-29, 9.270665489279271e-21, 9.376546223273193e-21
	.float 9.26686724392749e-21, 8.090684289379185e-32, 1.32179731812111e-29, 9.482426957267114e-21
	.float 9.588307691261035e-21, 9.478626288534632e-21, 8.129203476014105e-32, 1.3316582298996496e-29
	.float 9.694188425254957e-21, 9.800069159248878e-21, 9.690385333141774e-21, 8.167722662649025e-32
	.float 1.3415191416781892e-29, 9.9059498932428e-21, 1.0011830627236721e-20, 9.902144377748916e-21
	.float 8.206241849283945e-32, 1.3513800534567287e-29, 1.0117711361230643e-20, 1.0223592095224564e-20
	.float 1.0113903422356058e-20, 8.244761035918865e-32, 1.3612409652352683e-29, 1.0329472829218485e-20
	.float 1.0435353563212407e-20, 1.03256624669632e-20, 8.283280222553785e-32, 1.3711018770138078e-29
	.float 1.0541234297206328e-20, 1.064711503120025e-20, 1.0537421511570342e-20, 8.321799409188705e-32
	.float 1.3809627887923474e-29, 1.0752995765194171e-20, 1.0858876499188093e-20, 1.0749180556177484e-20
	.float 8.360318595823626e-32, 1.390823700570887e-29, 1.0964757233182014e-20, 1.1070637967175935e-20
	.float 1.0960939600784626e-20, 8.398837782458546e-32, 1.4006846123494265e-29, 1.1176518701169857e-20
	.float 1.1282399435163778e-20, 1.1172698645391768e-20, 8.437356969093466e-32, 1.410545524127966e-29
	.float 1.13882801691577e-20, 1.1494160903151621e-20, 1.138445768999891e-20, 8.475876155728386e-32
	.float 1.4204064359065056e-29, 1.1600041637145543e-20, 1.1705922371139464e-20, 1.1596216734606052e-20
	.float 8.514395342363306e-32, 1.4302673476850452e-29, 1.1811803105133386e-20, 1.1917683839127307e-20
	.float 1.1807975779213194e-20, 8.552914528998226e-32, 1.4401282594635847e-29, 1.2023564573121228e-20
	.float 1.212944530711515e-20, 1.2019734823820336e-20, 8.591433715633146e-32, 1.4499891712421243e-29
	.float 1.2235326041109071e-20, 1.2341206775102993e-20, 1.2231493868427478e-20, 8.629952902268066e-32
	.float 1.4598500830206638e-29, 1.2447087509096914e-20, 1.2552968243090836e-20, 1.244325291303462e-20
	.float 8.668472088902987e-32, 1.4697109947992034e-29, 1.2658848977084757e-20, 1.2764729711078678e-20
	.float 1.2655011957641762e-20, 8.706991275537907e-32, 1.479571906577743e-29, 1.28706104450726e-20
	.float 1.2976491179066521e-20, 1.2866771002248904e-20, 8.745510462172827e-32, 1.4894328183562825e-29
	.float 1.3082371913060443e-20, 1.3188252647054364e-20, 1.3078530046856046e-20, 8.784029648807747e-32
	.float 1.499293730134822e-29, 1.3294133381048286e-20, 1.3400014115042207e-20, 1.3290289091463188e-20
	.float 8.822548835442667e-32, 1.5091546419133616e-29, 1.3505894849036128e-20, 1.3671024009991294e-20
	.float 1.350204813607033e-20, 8.861068022077587e-32, 1.519015553691901e-29, 1.3882785477979137e-20
	.float 1.409454694596698e-20, 1.387508720528614e-20, 8.899587208712507e-32, 1.5288764654704407e-29
	.float 1.4306308413954823e-20, 1.4518069881942666e-20, 1.4298605294500423e-20, 8.938106395347428e-32
	.float 1.5387373772489802e-29, 1.472983134993051e-20, 1.4941592817918352e-20, 1.4722123383714707e-20
	.float 8.976625581982348e-32, 1.5485982890275198e-29, 1.5153354285906195e-20, 1.5365115753894037e-20
	.float 1.514564147292899e-20, 9.015144768617268e-32, 1.5584592008060593e-29, 1.557687722188188e-20
	.float 1.5788638689869723e-20, 1.5569159562143275e-20, 9.053663955252188e-32, 1.568320112584599e-29
	.float 1.6000400157857566e-20, 1.621216162584541e-20, 1.599267765135756e-20, 9.092183141887108e-32
	.float 1.5781810243631384e-29, 1.6423923093833252e-20, 1.6635684561821095e-20, 1.6416195740571843e-20
	.float 9.130702328522028e-32, 1.588041936141678e-29, 1.6847446029808937e-20, 1.705920749779678e-20
	.float 1.6839713829786127e-20, 9.169221515156948e-32, 1.5979028479202175e-29, 1.7270968965784623e-20
	.float 1.7482730433772466e-20, 1.726323191900041e-20, 9.207740701791868e-32, 1.607763759698757e-29
	.float 1.769449190176031e-20, 1.7906253369748152e-20, 1.7686750008214695e-20, 9.246259888426789e-32
	.float 1.6176246714772967e-29, 1.8118014837735995e-20, 1.8329776305723838e-20, 1.811026809742898e-20
	.float 9.284779075061709e-32, 1.6274855832558362e-29, 1.854153777371168e-20, 1.8753299241699523e-20
	.float 1.8533786186643264e-20, 9.323298261696629e-32, 1.6373464950343758e-29, 1.8965060709687366e-20
	.float 1.917682217767521e-20, 1.8957304275857548e-20, 9.361817448331549e-32, 1.6472074068129153e-29
	.float 1.9388583645663052e-20, 1.9600345113650895e-20, 1.9380822365071832e-20, 9.400336634966469e-32
	.float 1.657068318591455e-29, 1.9812106581638738e-20, 2.002386804962658e-20, 1.9804340454286116e-20
	.float 9.438855821601389e-32, 1.6669292303699944e-29, 2.0235629517614423e-20, 2.0447390985602266e-20
	.float 2.02278585435004e-20, 9.477375008236309e-32, 1.676790142148534e-29, 2.065915245359011e-20
	.float 2.0870913921577952e-20, 2.0651376632714684e-20, 9.515894194871229e-32, 1.6866510539270735e-29
	.float 2.1082675389565795e-20, 2.1294436857553638e-20, 2.1074894721928968e-20, 9.55441338150615e-32
	.float 1.696511965705613e-29, 2.150619832554148e-20, 2.1717959793529323e-20, 2.1498412811143252e-20
	.float 9.59293256814107e-32, 1.7063728774841526e-29, 2.1929721261517166e-20, 2.214148272950501e-20
	.float 2.1921930900357536e-20, 9.63145175477599e-32, 1.7162337892626922e-29, 2.2353244197492852e-20
	.float 2.2565005665480695e-20, 2.234544898957182e-20, 9.66997094141091e-32, 1.7260947010412317e-29
	.float 2.2776767133468538e-20, 2.298852860145638e-20, 2.2768967078786104e-20, 9.70849012804583e-32
	.float 1.7359556128197713e-29, 2.3200290069444224e-20, 2.3412051537432066e-20, 2.3192485168000388e-20
	.float 9.74700931468075e-32, 1.7458165245983108e-29, 2.362381300541991e-20, 2.3835574473407752e-20
	.float 2.3616003257214672e-20, 9.78552850131567e-32, 1.7556774363768504e-29, 2.4047335941395595e-20
	.float 2.4259097409383438e-20, 2.4039521346428956e-20, 9.82404768795059e-32, 1.76553834815539e-29
	.float 2.447085887737128e-20, 2.4682620345359124e-20, 2.446303943564324e-20, 9.864372433908374e-32
	.float 1.7753992599339295e-29, 2.4894381813346967e-20, 2.510614328133481e-20, 2.4886557524857525e-20
	.float 9.941410807178214e-32, 1.785260171712469e-29, 2.5317904749322652e-20, 2.5529666217310495e-20
	.float 2.531007561407181e-20, 1.0018449180448054e-31, 1.7951210834910086e-29, 2.5741427685298338e-20
	.float 2.595318915328618e-20, 2.5733593703286093e-20, 1.0095487553717894e-31, 1.8049819952695482e-29
	.float 2.6164950621274024e-20, 2.6376712089261867e-20, 2.6157111792500377e-20, 1.0172525926987735e-31
	.float 1.8148429070480877e-29, 2.658847355724971e-20, 2.6800235025237552e-20, 2.658062988171466e-20
	.float 1.0249564300257575e-31, 1.8247038188266273e-29, 2.7011996493225395e-20, 2.7342461610288865e-20
	.float 2.7004147970928945e-20, 1.0326602673527415e-31, 1.8345647306051668e-29, 2.776598454626455e-20
	.float 2.8189507482240237e-20, 2.7750277808148847e-20, 1.0403641046797255e-31, 1.8444256423837064e-29
	.float 2.861303041821592e-20, 2.903655335419161e-20, 2.8597313986577415e-20, 1.0480679420067096e-31
	.float 1.854286554162246e-29, 2.9460076290167294e-20, 2.988359922614298e-20, 2.9444350165005983e-20
	.float 1.0557717793336936e-31, 1.8641474659407855e-29, 3.0307122162118666e-20, 3.073064509809435e-20
	.float 3.029138634343455e-20, 1.0634756166606776e-31, 1.874008377719325e-29, 3.115416803407004e-20
	.float 3.157769097004572e-20, 3.113842252186312e-20, 1.0711794539876616e-31, 1.8838692894978646e-29
	.float 3.200121390602141e-20, 3.2424736841997094e-20, 3.198545870029169e-20, 1.0788832913146457e-31
	.float 1.893730201276404e-29, 3.284825977797278e-20, 3.3271782713948466e-20, 3.2832494878720256e-20
	.float 1.0865871286416297e-31, 1.9035911130549437e-29, 3.369530564992415e-20, 3.411882858589984e-20
	.float 3.3679531057148824e-20, 1.0942909659686137e-31, 1.9134520248334832e-29, 3.454235152187552e-20
	.float 3.496587445785121e-20, 3.452656723557739e-20, 1.1019948032955977e-31, 1.9233129366120228e-29
	.float 3.5389397393826894e-20, 3.581292032980258e-20, 3.537360341400596e-20, 1.1096986406225818e-31
	.float 1.9331738483905623e-29, 3.6236443265778266e-20, 3.665996620175395e-20, 3.622063959243453e-20
	.float 1.1174024779495658e-31, 1.943034760169102e-29, 3.708348913772964e-20, 3.7507012073705323e-20
	.float 3.7067675770863096e-20, 1.1251063152765498e-31, 1.9528956719476414e-29, 3.793053500968101e-20
	.float 3.8354057945656695e-20, 3.7914711949291664e-20, 1.1328101526035339e-31, 1.962756583726181e-29
	.float 3.877758088163238e-20, 3.9201103817608066e-20, 3.876174812772023e-20, 1.1405139899305179e-31
	.float 1.9726174955047206e-29, 3.962462675358375e-20, 4.004814968955944e-20, 3.96087843061488e-20
	.float 1.148217827257502e-31, 1.98247840728326e-29, 4.0471672625535123e-20, 4.089519556151081e-20
	.float 4.045582048457737e-20, 1.155921664584486e-31, 1.9923393190617997e-29, 4.1318718497486495e-20
	.float 4.174224143346218e-20, 4.1302856663005937e-20, 1.16362550191147e-31, 2.0022002308403392e-29
	.float 4.2165764369437866e-20, 4.258928730541355e-20, 4.2149892841434505e-20, 1.171329339238454e-31
	.float 2.0120611426188788e-29, 4.301281024138924e-20, 4.3436333177364923e-20, 4.2996929019863073e-20
	.float 1.179033176565438e-31, 2.0219220543974183e-29, 4.385985611334061e-20, 4.4283379049316295e-20
	.float 4.384396519829164e-20, 1.186737013892422e-31, 2.031782966175958e-29, 4.470690198529198e-20
	.float 4.5130424921267666e-20, 4.469100137672021e-20, 1.194440851219406e-31, 2.0416438779544974e-29
	.float 4.555394785724335e-20, 4.597747079321904e-20, 4.553803755514878e-20, 1.20214468854639e-31
	.float 2.051504789733037e-29, 4.6400993729194724e-20, 4.682451666517041e-20, 4.6385073733577346e-20
	.float 1.209848525873374e-31, 2.0613657015115765e-29, 4.7248039601146095e-20, 4.767156253712178e-20
	.float 4.7232109912005914e-20, 1.2175523632003581e-31, 2.071226613290116e-29, 4.8095085473097467e-20
	.float 4.851860840907315e-20, 4.807914609043448e-20, 1.2252562005273422e-31, 2.0810875250686556e-29
	.float 4.894213134504884e-20, 4.9365654281024524e-20, 4.892618226886305e-20, 1.2329600378543262e-31
	.float 2.0909484368471952e-29, 4.978917721700021e-20, 5.0212700152975895e-20, 4.977321844729162e-20
	.float 1.2406638751813102e-31, 2.1008093486257347e-29, 5.063622308895158e-20, 5.1059746024927267e-20
	.float 5.0620254625720186e-20, 1.2483677125082942e-31, 2.1106702604042743e-29, 5.148326896090295e-20
	.float 5.190679189687864e-20, 5.1467290804148754e-20, 1.2560715498352783e-31, 2.1205311721828138e-29
	.float 5.2330314832854324e-20, 5.275383776883001e-20, 5.231432698257732e-20, 1.2637753871622623e-31
	.float 2.1303920839613534e-29, 5.3177360704805696e-20, 5.360088364078138e-20, 5.316136316100589e-20
	.float 1.2714792244892463e-31, 2.140252995739893e-29, 5.4024406576757067e-20, 5.468575040119028e-20
	.float 5.400839933943446e-20, 1.2791830618162303e-31, 2.1501139075184325e-29, 5.553279627314166e-20
	.float 5.637984214509303e-20, 5.550076241145083e-20, 1.2868868991432144e-31, 2.159974819296972e-29
	.float 5.72268880170444e-20, 5.807393388899577e-20, 5.719483476830797e-20, 1.2945907364701984e-31
	.float 2.1698357310755116e-29, 5.892097976094714e-20, 5.976802563289851e-20, 5.88889071251651e-20
	.float 1.3022945737971824e-31, 2.1796966428540512e-29, 6.061507150484988e-20, 6.146211737680126e-20
	.float 6.058297948202224e-20, 1.3099984111241664e-31, 2.1895575546325907e-29, 6.230916324875263e-20
	.float 6.3156209120704e-20, 6.227705183887938e-20, 1.3177022484511505e-31, 2.1994184664111303e-29
	.float 6.400325499265537e-20, 6.485030086460674e-20, 6.397112419573651e-20, 1.3254060857781345e-31
	.float 2.2092793781896698e-29, 6.569734673655811e-20, 6.654439260850948e-20, 6.566519655259365e-20
	.float 1.3331099231051185e-31, 2.2191402899682094e-29, 6.739143848046086e-20, 6.823848435241223e-20
	.float 6.735926890945079e-20, 1.3408137604321025e-31, 2.229001201746749e-29, 6.90855302243636e-20
	.float 6.993257609631497e-20, 6.905334126630792e-20, 1.3485175977590866e-31, 2.2388621135252885e-29
	.float 7.077962196826634e-20, 7.162666784021771e-20, 7.074741362316506e-20, 1.3562214350860706e-31
	.float 2.248723025303828e-29, 7.247371371216908e-20, 7.332075958412046e-20, 7.24414859800222e-20
	.float 1.3639252724130546e-31, 2.2585839370823676e-29, 7.416780545607183e-20, 7.50148513280232e-20
	.float 7.413555833687933e-20, 1.3716291097400386e-31, 2.268444848860907e-29, 7.586189719997457e-20
	.float 7.670894307192594e-20, 7.582963069373647e-20, 1.3793329470670227e-31, 2.2783057606394467e-29
	.float 7.755598894387731e-20, 7.840303481582869e-20, 7.75237030505936e-20, 1.3870367843940067e-31
	.float 2.2881666724179862e-29, 7.925008068778006e-20, 8.009712655973143e-20, 7.921777540745074e-20
	.float 1.3947406217209907e-31, 2.2980275841965258e-29, 8.09441724316828e-20, 8.179121830363417e-20
	.float 8.091184776430788e-20, 1.4024444590479747e-31, 2.3078884959750654e-29, 8.263826417558554e-20
	.float 8.348531004753691e-20, 8.260592012116501e-20, 1.4101482963749588e-31, 2.317749407753605e-29
	.float 8.433235591948829e-20, 8.517940179143966e-20, 8.429999247802215e-20, 1.4178521337019428e-31
	.float 2.3276103195321445e-29, 8.602644766339103e-20, 8.68734935353424e-20, 8.599406483487928e-20
	.float 1.4255559710289268e-31, 2.337471231310684e-29, 8.772053940729377e-20, 8.856758527924514e-20
	.float 8.768813719173642e-20, 1.4332598083559109e-31, 2.3473321430892236e-29, 8.941463115119651e-20
	.float 9.026167702314789e-20, 8.938220954859356e-20, 1.4409636456828949e-31, 2.357193054867763e-29
	.float 9.110872289509926e-20, 9.195576876705063e-20, 9.107628190545069e-20, 1.448667483009879e-31
	.float 2.3670539666463027e-29, 9.2802814639002e-20, 9.364986051095337e-20, 9.277035426230783e-20
	.float 1.456371320336863e-31, 2.3769148784248422e-29, 9.449690638290474e-20, 9.534395225485611e-20
	.float 9.446442661916497e-20, 1.464075157663847e-31, 2.3867757902033818e-29, 9.619099812680749e-20
	.float 9.703804399875886e-20, 9.61584989760221e-20, 1.471778994990831e-31, 2.3966367019819213e-29
	.float 9.788508987071023e-20, 9.87321357426616e-20, 9.785257133287924e-20, 1.479482832317815e-31
	.float 2.406497613760461e-29, 9.957918161461297e-20, 1.0042622748656434e-19, 9.954664368973637e-20
	.float 1.487186669644799e-31, 2.4163585255390004e-29, 1.0127327335851572e-19, 1.0212031923046709e-19
	.float 1.0124071604659351e-19, 1.494890506971783e-31, 2.42621943731754e-29, 1.0296736510241846e-19
	.float 1.0381441097436983e-19, 1.0293478840345065e-19, 1.502594344298767e-31, 2.4360803490960795e-29
	.float 1.046614568463212e-19, 1.0550850271827257e-19, 1.0462886076030778e-19, 1.510298181625751e-31
	.float 2.445941260874619e-29, 1.0635554859022394e-19, 1.0720259446217532e-19, 1.0632293311716492e-19
	.float 1.5180020189527351e-31, 2.4558021726531586e-29, 1.0804964033412669e-19, 1.0937315516360567e-19
	.float 1.0801700547402206e-19, 1.5257058562797192e-31, 2.4656630844316982e-29, 1.1106724690750842e-19
	.float 1.1276133865141116e-19, 1.1100193841320794e-19, 1.5334096936067032e-31, 2.4755239962102377e-29
	.float 1.144554303953139e-19, 1.1614952213921665e-19, 1.1439008312692221e-19, 1.5411135309336872e-31
	.float 2.4853849079887773e-29, 1.178436138831194e-19, 1.1953770562702213e-19, 1.1777822784063649e-19
	.float 1.5488173682606712e-31, 2.4952458197673169e-29, 1.2123179737092487e-19, 1.2292588911482762e-19
	.float 1.2116637255435076e-19, 1.5565212055876553e-31, 2.5051067315458564e-29, 1.2461998085873036e-19
	.float 1.263140726026331e-19, 1.2455451726806503e-19, 1.5642250429146393e-31, 2.514967643324396e-29
	.float 1.2800816434653585e-19, 1.297022560904386e-19, 1.279426619817793e-19, 1.5719288802416233e-31
	.float 2.525302213498633e-29, 1.3139634783434133e-19, 1.3309043957824408e-19, 1.3133080669549358e-19
	.float 1.5796327175686073e-31, 2.5450240370557124e-29, 1.3478453132214682e-19, 1.3647862306604956e-19
	.float 1.3471895140920785e-19, 1.5873365548955914e-31, 2.5647458606127915e-29, 1.381727148099523e-19
	.float 1.3986680655385505e-19, 1.3810709612292212e-19, 1.5950403922225754e-31, 2.5844676841698706e-29
	.float 1.415608982977578e-19, 1.4325499004166053e-19, 1.414952408366364e-19, 1.6027442295495594e-31
	.float 2.6041895077269497e-29, 1.4494908178556328e-19, 1.4664317352946602e-19, 1.4488338555035067e-19
	.float 1.6104480668765434e-31, 2.623911331284029e-29, 1.4833726527336876e-19, 1.500313570172715e-19
	.float 1.4827153026406494e-19, 1.6181519042035275e-31, 2.643633154841108e-29, 1.5172544876117425e-19
	.float 1.53419540505077e-19, 1.516596749777792e-19, 1.6258557415305115e-31, 2.663354978398187e-29
	.float 1.5511363224897973e-19, 1.5680772399288248e-19, 1.5504781969149348e-19, 1.6335595788574955e-31
	.float 2.683076801955266e-29, 1.5850181573678522e-19, 1.6019590748068796e-19, 1.5843596440520776e-19
	.float 1.6412634161844795e-31, 2.702798625512345e-29, 1.618899992245907e-19, 1.6358409096849345e-19
	.float 1.6182410911892203e-19, 1.6489672535114636e-31, 2.7225204490694243e-29, 1.652781827123962e-19
	.float 1.6697227445629893e-19, 1.652122538326363e-19, 1.6566710908384476e-31, 2.7422422726265034e-29
	.float 1.6866636620020168e-19, 1.7036045794410442e-19, 1.6860039854635057e-19, 1.6643749281654316e-31
	.float 2.7619640961835825e-29, 1.7205454968800716e-19, 1.737486414319099e-19, 1.7198854326006485e-19
	.float 1.6720787654924156e-31, 2.7816859197406616e-29, 1.7544273317581265e-19, 1.771368249197154e-19
	.float 1.7537668797377912e-19, 1.6797826028193997e-31, 2.801407743297741e-29, 1.7883091666361813e-19
	.float 1.8052500840752088e-19, 1.787648326874934e-19, 1.6874864401463837e-31, 2.82112956685482e-29
	.float 1.8221910015142362e-19, 1.8391319189532636e-19, 1.8215297740120766e-19, 1.6951902774733677e-31
	.float 2.840851390411899e-29, 1.856072836392291e-19, 1.8730137538313185e-19, 1.8554112211492194e-19
	.float 1.7028941148003517e-31, 2.860573213968978e-29, 1.889954671270346e-19, 1.9068955887093734e-19
	.float 1.889292668286362e-19, 1.7105979521273358e-31, 2.880295037526057e-29, 1.9238365061484008e-19
	.float 1.9407774235874282e-19, 1.9231741154235048e-19, 1.7183017894543198e-31, 2.900016861083136e-29
	.float 1.9577183410264556e-19, 1.974659258465483e-19, 1.9570555625606475e-19, 1.7260056267813038e-31
	.float 2.9197386846402154e-29, 1.9916001759045105e-19, 2.008541093343538e-19, 1.9909370096977903e-19
	.float 1.7337094641082879e-31, 2.9394605081972945e-29, 2.0254820107825654e-19, 2.0424229282215928e-19
	.float 2.024818456834933e-19, 1.7414133014352719e-31, 2.9591823317543736e-29, 2.0593638456606202e-19
	.float 2.0763047630996477e-19, 2.0586999039720757e-19, 1.749117138762256e-31, 2.9789041553114527e-29
	.float 2.093245680538675e-19, 2.1101865979777025e-19, 2.0925813511092184e-19, 1.75682097608924e-31
	.float 2.998625978868532e-29, 2.12712751541673e-19, 2.1440684328557574e-19, 2.1264627982463612e-19
	.float 1.764524813416224e-31, 3.018347802425611e-29, 2.1610093502947848e-19, 2.1874961904966156e-19
	.float 2.160344245383504e-19, 1.772228650743208e-31, 3.03806962598269e-29, 2.2213780253746705e-19
	.float 2.2552598602527253e-19, 2.2200470400702843e-19, 1.779932488070192e-31, 3.057791449539769e-29
	.float 2.28914169513078e-19, 2.323023530008835e-19, 2.28780993434457e-19, 1.787636325397176e-31
	.float 3.077513273096848e-29, 2.35690536488689e-19, 2.3907871997649447e-19, 2.3555728286188552e-19
	.float 1.79534016272416e-31, 3.0972350966539273e-29, 2.4246690346429996e-19, 2.4585508695210545e-19
	.float 2.4233357228931407e-19, 1.803044000051144e-31, 3.1169569202110064e-29, 2.4924327043991093e-19
	.float 2.526314539277164e-19, 2.491098617167426e-19, 1.810747837378128e-31, 3.1366787437680855e-29
	.float 2.560196374155219e-19, 2.594078209033274e-19, 2.5588615114417116e-19, 1.8184516747051121e-31
	.float 3.1564005673251646e-29, 2.627960043911329e-19, 2.6618418787893836e-19, 2.626624405715997e-19
	.float 1.8261555120320962e-31, 3.176122390882244e-29, 2.6957237136674385e-19, 2.7296055485454933e-19
	.float 2.6943872999902825e-19, 1.8338593493590802e-31, 3.195844214439323e-29, 2.763487383423548e-19
	.float 2.797369218301603e-19, 2.762150194264568e-19, 1.8415631866860642e-31, 3.215566037996402e-29
	.float 2.831251053179658e-19, 2.865132888057713e-19, 2.8299130885388534e-19, 1.8492670240130482e-31
	.float 3.235287861553481e-29, 2.8990147229357676e-19, 2.9328965578138225e-19, 2.897675982813139e-19
	.float 1.8569708613400323e-31, 3.25500968511056e-29, 2.9667783926918774e-19, 3.000660227569932e-19
	.float 2.9654388770874243e-19, 1.8646746986670163e-31, 3.274731508667639e-29, 3.034542062447987e-19
	.float 3.068423897326042e-19, 3.0332017713617097e-19, 1.8723785359940003e-31, 3.2944533322247184e-29
	.float 3.102305732204097e-19, 3.1361875670821517e-19, 3.100964665635995e-19, 1.8800823733209843e-31
	.float 3.3141751557817975e-29, 3.1700694019602065e-19, 3.2039512368382614e-19, 3.1687275599102806e-19
	.float 1.8877862106479684e-31, 3.3338969793388766e-29, 3.237833071716316e-19, 3.271714906594371e-19
	.float 3.236490454184566e-19, 1.8954900479749524e-31, 3.3536188028959557e-29, 3.305596741472426e-19
	.float 3.339478576350481e-19, 3.3042533484588515e-19, 1.9031938853019364e-31, 3.373340626453035e-29
	.float 3.3733604112285357e-19, 3.4072422461065905e-19, 3.372016242733137e-19, 1.9108977226289204e-31
	.float 3.393062450010114e-29, 3.4411240809846454e-19, 3.4750059158627002e-19, 3.4397791370074224e-19
	.float 1.9186015599559045e-31, 3.412784273567193e-29, 3.508887750740755e-19, 3.54276958561881e-19
	.float 3.507542031281708e-19, 1.9263053972828885e-31, 3.432506097124272e-29, 3.576651420496865e-19
	.float 3.6105332553749197e-19, 3.5753049255559933e-19, 1.9340092346098725e-31, 3.452227920681351e-29
	.float 3.6444150902529745e-19, 3.6782969251310294e-19, 3.643067819830279e-19, 1.9417130719368565e-31
	.float 3.4719497442384303e-29, 3.7121787600090843e-19, 3.746060594887139e-19, 3.7108307141045642e-19
	.float 1.9494169092638406e-31, 3.4916715677955094e-29, 3.779942429765194e-19, 3.813824264643249e-19
	.float 3.7785936083788497e-19, 1.9571207465908246e-31, 3.5113933913525885e-29, 3.8477060995213037e-19
	.float 3.8815879343993586e-19, 3.846356502653135e-19, 1.9648245839178086e-31, 3.5311152149096676e-29
	.float 3.9154697692774134e-19, 3.9493516041554683e-19, 3.9141193969274206e-19, 1.9729045794370558e-31
	.float 3.550837038466747e-29, 3.983233439033523e-19, 4.017115273911578e-19, 3.981882291201706e-19
	.float 1.988312254091024e-31, 3.570558862023826e-29, 4.050997108789633e-19, 4.0848789436676877e-19
	.float 4.0496451854759915e-19, 2.003719928744992e-31, 3.590280685580905e-29, 4.1187607785457426e-19
	.float 4.1526426134237974e-19, 4.117408079750277e-19, 2.01912760339896e-31, 3.610002509137984e-29
	.float 4.1865244483018523e-19, 4.220406283179907e-19, 4.1851709740245624e-19, 2.034535278052928e-31
	.float 3.629724332695063e-29, 4.254288118057962e-19, 4.288169952936017e-19, 4.252933868298848e-19
	.float 2.049942952706896e-31, 3.649446156252142e-29, 4.3220517878140717e-19, 4.375058555442235e-19
	.float 4.3206967625731333e-19, 2.065350627360864e-31, 3.6691679798092214e-29, 4.442822225198345e-19
	.float 4.510585894954455e-19, 4.44011062375282e-19, 2.080758302014832e-31, 3.6888898033663005e-29
	.float 4.578349564710565e-19, 4.646113234466674e-19, 4.575636412301391e-19, 2.0961659766688e-31
	.float 3.7086116269233796e-29, 4.713876904222784e-19, 4.781640573978894e-19, 4.711162200849962e-19
	.float 2.1115736513227682e-31, 3.7283334504804587e-29, 4.849404243735003e-19, 4.917167913491113e-19
	.float 4.846687989398532e-19, 2.1269813259767363e-31, 3.748055274037538e-29, 4.984931583247223e-19
	.float 5.052695253003333e-19, 4.982213777947103e-19, 2.1423890006307043e-31, 3.767777097594617e-29
	.float 5.120458922759442e-19, 5.188222592515552e-19, 5.117739566495674e-19, 2.1577966752846724e-31
	.float 3.787498921151696e-29, 5.255986262271662e-19, 5.3237499320277715e-19, 5.253265355044245e-19
	.float 2.1732043499386404e-31, 3.807220744708775e-29, 5.391513601783881e-19, 5.459277271539991e-19
	.float 5.388791143592816e-19, 2.1886120245926085e-31, 3.826942568265854e-29, 5.527040941296101e-19
	.float 5.59480461105221e-19, 5.524316932141387e-19, 2.2040196992465765e-31, 3.8466643918229333e-29
	.float 5.66256828080832e-19, 5.73033195056443e-19, 5.659842720689958e-19, 2.2194273739005446e-31
	.float 3.8663862153800124e-29, 5.7980956203205395e-19, 5.865859290076649e-19, 5.795368509238529e-19
	.float 2.2348350485545126e-31, 3.8861080389370915e-29, 5.933622959832759e-19, 6.001386629588869e-19
	.float 5.9308942977871e-19, 2.2502427232084807e-31, 3.9058298624941706e-29, 6.069150299344978e-19
	.float 6.136913969101088e-19, 6.066420086335671e-19, 2.2656503978624488e-31, 3.92555168605125e-29
	.float 6.204677638857198e-19, 6.272441308613308e-19, 6.201945874884241e-19, 2.281058072516417e-31
	.float 3.945273509608329e-29, 6.340204978369417e-19, 6.407968648125527e-19, 6.337471663432812e-19
	.float 2.296465747170385e-31, 3.964995333165408e-29, 6.475732317881637e-19, 6.543495987637746e-19
	.float 6.472997451981383e-19, 2.311873421824353e-31, 3.984717156722487e-29, 6.611259657393856e-19
	.float 6.679023327149966e-19, 6.608523240529954e-19, 2.327281096478321e-31, 4.004438980279566e-29
	.float 6.746786996906076e-19, 6.814550666662185e-19, 6.744049029078525e-19, 2.342688771132289e-31
	.float 4.024160803836645e-29, 6.882314336418295e-19, 6.950078006174405e-19, 6.879574817627096e-19
	.float 2.358096445786257e-31, 4.0438826273937244e-29, 7.017841675930514e-19, 7.085605345686624e-19
	.float 7.015100606175667e-19, 2.373504120440225e-31, 4.0636044509508035e-29, 7.153369015442734e-19
	.float 7.221132685198844e-19, 7.150626394724238e-19, 2.388911795094193e-31, 4.0833262745078826e-29
	.float 7.288896354954953e-19, 7.356660024711063e-19, 7.286152183272809e-19, 2.404319469748161e-31
	.float 4.1030480980649617e-29, 7.424423694467173e-19, 7.492187364223282e-19, 7.42167797182138e-19
	.float 2.4197271444021293e-31, 4.122769921622041e-29, 7.559951033979392e-19, 7.627714703735502e-19
	.float 7.55720376036995e-19, 2.4351348190560973e-31, 4.14249174517912e-29, 7.695478373491612e-19
	.float 7.763242043247721e-19, 7.692729548918521e-19, 2.4505424937100654e-31, 4.162213568736199e-29
	.float 7.831005713003831e-19, 7.898769382759941e-19, 7.828255337467092e-19, 2.4659501683640334e-31
	.float 4.181935392293278e-29, 7.9665330525160505e-19, 8.03429672227216e-19, 7.963781126015663e-19
	.float 2.4813578430180015e-31, 4.201657215850357e-29, 8.10206039202827e-19, 8.16982406178438e-19
	.float 8.099306914564234e-19, 2.4967655176719695e-31, 4.2213790394074363e-29, 8.237587731540489e-19
	.float 8.305351401296599e-19, 8.234832703112805e-19, 2.5121731923259376e-31, 4.2411008629645154e-29
	.float 8.373115071052709e-19, 8.440878740808819e-19, 8.370358491661376e-19, 2.5275808669799056e-31
	.float 4.2608226865215945e-29, 8.508642410564928e-19, 8.576406080321038e-19, 8.505884280209947e-19
	.float 2.5429885416338737e-31, 4.2805445100786737e-29, 8.644169750077148e-19, 8.75024945978248e-19
	.float 8.641410068758518e-19, 2.5583962162878417e-31, 4.300266333635753e-29, 8.885776799294699e-19
	.float 9.021304138806918e-19, 8.880254334730142e-19, 2.5738038909418098e-31, 4.319988157192832e-29
	.float 9.156831478319138e-19, 9.292358817831357e-19, 9.151305911827283e-19, 2.589211565595778e-31
	.float 4.339709980749911e-29, 9.427886157343577e-19, 9.563413496855796e-19, 9.422357488924425e-19
	.float 2.604619240249746e-31, 4.35943180430699e-29, 9.698940836368015e-19, 9.834468175880235e-19
	.float 9.693409066021567e-19, 2.620026914903714e-31, 4.379153627864069e-29, 9.969995515392454e-19
	.float 1.0105522854904674e-18, 9.964460643118709e-19, 2.635434589557682e-31, 4.3988754514211483e-29
	.float 1.0241050194416893e-18, 1.0376577533929113e-18, 1.023551222021585e-18, 2.65084226421165e-31
	.float 4.4185972749782274e-29, 1.0512104873441332e-18, 1.0647632212953551e-18, 1.0506563797312992e-18
	.float 2.666249938865618e-31, 4.4383190985353065e-29, 1.078315955246577e-18, 1.091868689197799e-18
	.float 1.0777615374410134e-18, 2.681657613519586e-31, 4.4580409220923856e-29, 1.105421423149021e-18
	.float 1.118974157100243e-18, 1.1048666951507276e-18, 2.697065288173554e-31, 4.4777627456494647e-29
	.float 1.1325268910514649e-18, 1.1460796250026868e-18, 1.1319718528604418e-18, 2.7124729628275222e-31
	.float 4.497484569206544e-29, 1.1596323589539088e-18, 1.1731850929051307e-18, 1.159077010570156e-18
	.float 2.7278806374814903e-31, 4.517206392763623e-29, 1.1867378268563526e-18, 1.2002905608075746e-18
	.float 1.1861821682798701e-18, 2.7432883121354583e-31, 4.536928216320702e-29, 1.2138432947587965e-18
	.float 1.2273960287100185e-18, 1.2132873259895843e-18, 2.7586959867894264e-31, 4.556650039877781e-29
	.float 1.2409487626612404e-18, 1.2545014966124624e-18, 1.2403924836992985e-18, 2.7741036614433944e-31
	.float 4.57637186343486e-29, 1.2680542305636843e-18, 1.2816069645149062e-18, 1.2674976414090127e-18
	.float 2.7895113360973625e-31, 4.5960936869919393e-29, 1.2951596984661282e-18, 1.3087124324173501e-18
	.float 1.2946027991187269e-18, 2.8049190107513305e-31, 4.6158155105490184e-29, 1.322265166368572e-18
	.float 1.335817900319794e-18, 1.321707956828441e-18, 2.8203266854052986e-31, 4.6355373341060976e-29
	.float 1.349370634271016e-18, 1.362923368222238e-18, 1.3488131145381552e-18, 2.8357343600592666e-31
	.float 4.6552591576631767e-29, 1.3764761021734599e-18, 1.3900288361246818e-18, 1.3759182722478694e-18
	.float 2.8511420347132347e-31, 4.674980981220256e-29, 1.4035815700759037e-18, 1.4171343040271257e-18
	.float 1.4030234299575836e-18, 2.8665497093672028e-31, 4.694702804777335e-29, 1.4306870379783476e-18
	.float 1.4442397719295696e-18, 1.4301285876672978e-18, 2.881957384021171e-31, 4.714424628334414e-29
	.float 1.4577925058807915e-18, 1.4713452398320135e-18, 1.457233745377012e-18, 2.897365058675139e-31
	.float 4.734146451891493e-29, 1.4848979737832354e-18, 1.4984507077344573e-18, 1.4843389030867261e-18
	.float 2.912772733329107e-31, 4.753868275448572e-29, 1.5120034416856793e-18, 1.5255561756369012e-18
	.float 1.5114440607964403e-18, 2.928180407983075e-31, 4.7735900990056513e-29, 1.5391089095881232e-18
	.float 1.5526616435393451e-18, 1.5385492185061545e-18, 2.943588082637043e-31, 4.7933119225627304e-29
	.float 1.566214377490567e-18, 1.579767111441789e-18, 1.5656543762158687e-18, 2.958995757291011e-31
	.float 4.8130337461198095e-29, 1.593319845393011e-18, 1.6068725793442329e-18, 1.5927595339255828e-18
	.float 2.974403431944979e-31, 4.8327555696768886e-29, 1.6204253132954548e-18, 1.6339780472466768e-18
	.float 1.619864691635297e-18, 2.989811106598947e-31, 4.8524773932339677e-29, 1.6475307811978987e-18
	.float 1.6610835151491207e-18, 1.6469698493450112e-18, 3.005218781252915e-31, 4.872199216791047e-29
	.float 1.6746362491003426e-18, 1.6881889830515646e-18, 1.6740750070547254e-18, 3.0206264559068833e-31
	.float 4.891921040348126e-29, 1.7017417170027865e-18, 1.7152944509540084e-18, 1.7011801647644396e-18
	.float 3.0360341305608513e-31, 4.911642863905205e-29, 1.7288471849052304e-18, 1.7500763617360976e-18
	.float 1.7282853224741537e-18, 3.0514418052148194e-31, 4.931364687462284e-29, 1.7771818296385415e-18
	.float 1.8042872975409853e-18, 1.7760574843909287e-18, 3.0668494798687874e-31, 4.951086511019363e-29
	.float 1.8313927654434292e-18, 1.858498233345873e-18, 1.830267799810357e-18, 3.0822571545227555e-31
	.float 4.9708083345764423e-29, 1.885603701248317e-18, 1.912709169150761e-18, 1.8844781152297855e-18
	.float 3.0976648291767235e-31, 4.9905301581335215e-29, 1.9398146370532048e-18, 1.9669201049556487e-18
	.float 1.938688430649214e-18, 3.1130725038306916e-31, 5.0102519816906006e-29, 1.9940255728580926e-18
	.float 2.0211310407605364e-18, 1.992898746068642e-18, 3.1284801784846596e-31, 5.0299738052476797e-29
	.float 2.0482365086629803e-18, 2.0753419765654242e-18, 2.0471090614880705e-18, 3.1438878531386277e-31
	.float 5.050681464195042e-29, 2.102447444467868e-18, 2.129552912370312e-18, 2.101319376907499e-18
	.float 3.1592955277925957e-31, 5.0901251113092e-29, 2.156658380272756e-18, 2.1837638481751998e-18
	.float 2.1555296923269273e-18, 3.1747032024465638e-31, 5.129568758423358e-29, 2.2108693160776436e-18
	.float 2.2379747839800875e-18, 2.2097400077463556e-18, 3.190110877100532e-31, 5.169012405537517e-29
	.float 2.2650802518825314e-18, 2.2921857197849753e-18, 2.263950323165784e-18, 3.2055185517545e-31
	.float 5.208456052651675e-29, 2.3192911876874192e-18, 2.346396655589863e-18, 2.3181606385852123e-18
	.float 3.220926226408468e-31, 5.247899699765833e-29, 2.373502123492307e-18, 2.400607591394751e-18
	.float 2.3723709540046407e-18, 3.236333901062436e-31, 5.287343346879991e-29, 2.4277130592971947e-18
	.float 2.4548185271996386e-18, 2.426581269424069e-18, 3.251741575716404e-31, 5.32678699399415e-29
	.float 2.4819239951020825e-18, 2.5090294630045264e-18, 2.4807915848434974e-18, 3.267149250370372e-31
	.float 5.366230641108308e-29, 2.5361349309069703e-18, 2.563240398809414e-18, 2.5350019002629258e-18
	.float 3.28255692502434e-31, 5.405674288222466e-29, 2.590345866711858e-18, 2.617451334614302e-18
	.float 2.589212215682354e-18, 3.297964599678308e-31, 5.445117935336624e-29, 2.644556802516746e-18
	.float 2.6716622704191897e-18, 2.6434225311017825e-18, 3.3133722743322762e-31, 5.484561582450782e-29
	.float 2.6987677383216336e-18, 2.7258732062240775e-18, 2.697632846521211e-18, 3.3287799489862443e-31
	.float 5.52400522956494e-29, 2.7529786741265214e-18, 2.7800841420289653e-18, 2.7518431619406392e-18
	.float 3.3441876236402123e-31, 5.563448876679099e-29, 2.807189609931409e-18, 2.834295077833853e-18
	.float 2.8060534773600676e-18, 3.3595952982941804e-31, 5.602892523793257e-29, 2.861400545736297e-18
	.float 2.888506013638741e-18, 2.860263792779496e-18, 3.3750029729481484e-31, 5.642336170907415e-29
	.float 2.9156114815411847e-18, 2.9427169494436286e-18, 2.9144741081989243e-18, 3.3904106476021165e-31
	.float 5.681779818021573e-29, 2.9698224173460725e-18, 2.9969278852485164e-18, 2.9686844236183527e-18
	.float 3.4058183222560845e-31, 5.721223465135732e-29, 3.0240333531509603e-18, 3.051138821053404e-18
	.float 3.022894739037781e-18, 3.4212259969100526e-31, 5.76066711224989e-29, 3.078244288955848e-18
	.float 3.105349756858292e-18, 3.0771050544572094e-18, 3.4366336715640206e-31, 5.800110759364048e-29
	.float 3.132455224760736e-18, 3.1595606926631797e-18, 3.1313153698766377e-18, 3.4520413462179887e-31
	.float 5.839554406478206e-29, 3.1866661605656236e-18, 3.2137716284680675e-18, 3.185525685296066e-18
	.float 3.4674490208719568e-31, 5.878998053592364e-29, 3.2408770963705114e-18, 3.2679825642729553e-18
	.float 3.2397360007154945e-18, 3.482856695525925e-31, 5.918441700706523e-29, 3.295088032175399e-18
	.float 3.322193500077843e-18, 3.293946316134923e-18, 3.498264370179893e-31, 5.957885347820681e-29
	.float 3.349298967980287e-18, 3.3764044358827308e-18, 3.348156631554351e-18, 3.513672044833861e-31
	.float 5.997328994934839e-29, 3.4035099037851747e-18, 3.4306153716876186e-18, 3.4023669469737795e-18
	.float 3.529079719487829e-31, 6.036772642048997e-29, 3.4577208395900625e-18, 3.5002056630313985e-18
	.float 3.456577262393208e-18, 3.544487394141797e-31, 6.076216289163155e-29, 3.554416598836286e-18
	.float 3.608627534641174e-18, 3.552128203671658e-18, 3.559895068795765e-31, 6.115659936277314e-29
	.float 3.662838470446062e-18, 3.71704940625095e-18, 3.660548834510515e-18, 3.575302743449733e-31
	.float 6.155103583391472e-29, 3.7712603420558374e-18, 3.825471277860725e-18, 3.768969465349372e-18
	.float 3.590710418103701e-31, 6.19454723050563e-29, 3.879682213665613e-18, 3.933893149470501e-18
	.float 3.8773900961882285e-18, 3.606118092757669e-31, 6.233990877619788e-29, 3.9881040852753885e-18
	.float 4.042315021080276e-18, 3.985810727027085e-18, 3.6215257674116373e-31, 6.273434524733947e-29
	.float 4.096525956885164e-18, 4.150736892690052e-18, 4.094231357865942e-18, 3.6369334420656053e-31
	.float 6.312878171848105e-29, 4.2049478284949396e-18, 4.259158764299827e-18, 4.202651988704799e-18
	.float 3.6523411167195734e-31, 6.352321818962263e-29, 4.313369700104715e-18, 4.367580635909603e-18
	.float 4.3110726195436554e-18, 3.6677487913735414e-31, 6.391765466076421e-29, 4.421791571714491e-18
	.float 4.4760025075193785e-18, 4.419493250382512e-18, 3.6831564660275095e-31, 6.431209113190579e-29
	.float 4.530213443324266e-18, 4.584424379129154e-18, 4.527913881221369e-18, 3.6985641406814775e-31
	.float 6.470652760304738e-29, 4.638635314934042e-18, 4.6928462507389296e-18, 4.6363345120602255e-18
	.float 3.7139718153354456e-31, 6.510096407418896e-29, 4.747057186543817e-18, 4.801268122348705e-18
	.float 4.744755142899082e-18, 3.7293794899894136e-31, 6.549540054533054e-29, 4.855479058153593e-18
	.float 4.909689993958481e-18, 4.853175773737939e-18, 3.7447871646433817e-31, 6.588983701647212e-29
	.float 4.9639009297633684e-18, 5.018111865568256e-18, 4.961596404576796e-18, 3.7601948392973497e-31
	.float 6.62842734876137e-29, 5.072322801373144e-18, 5.126533737178032e-18, 5.0700170354156524e-18
	.float 3.7756025139513178e-31, 6.667870995875529e-29, 5.1807446729829195e-18, 5.234955608787807e-18
	.float 5.178437666254509e-18, 3.791010188605286e-31, 6.707314642989687e-29, 5.289166544592695e-18
	.float 5.343377480397583e-18, 5.286858297093366e-18, 3.806417863259254e-31, 6.746758290103845e-29
	.float 5.397588416202471e-18, 5.4517993520073584e-18, 5.3952789279322226e-18, 3.821825537913222e-31
	.float 6.786201937218003e-29, 5.506010287812246e-18, 5.560221223617134e-18, 5.503699558771079e-18
	.float 3.83723321256719e-31, 6.825645584332161e-29, 5.614432159422022e-18, 5.6686430952269095e-18
	.float 5.612120189609936e-18, 3.852640887221158e-31, 6.86508923144632e-29, 5.722854031031797e-18
	.float 5.777064966836685e-18, 5.720540820448793e-18, 3.868048561875126e-31, 6.904532878560478e-29
	.float 5.831275902641573e-18, 5.8854868384464606e-18, 5.8289614512876495e-18, 3.883456236529094e-31
	.float 6.943976525674636e-29, 5.9396977742513484e-18, 5.993908710056236e-18, 5.937382082126506e-18
	.float 3.898863911183062e-31, 6.983420172788794e-29, 6.048119645861124e-18, 6.102330581666012e-18
	.float 6.045802712965363e-18, 3.9142715858370302e-31, 7.022863819902953e-29, 6.1565415174708995e-18
	.float 6.210752453275787e-18, 6.15422334380422e-18, 3.9296792604909983e-31, 7.062307467017111e-29
	.float 6.264963389080675e-18, 6.319174324885563e-18, 6.262643974643076e-18, 3.945869344184874e-31
	.float 7.101751114131269e-29, 6.3733852606904506e-18, 6.427596196495338e-18, 6.371064605481933e-18
	.float 3.97668469349281e-31, 7.141194761245427e-29, 6.481807132300226e-18, 6.536018068105114e-18
	.float 6.47948523632079e-18, 4.007500042800746e-31, 7.180638408359585e-29, 6.590229003910002e-18
	.float 6.6444399397148895e-18, 6.5879058671596465e-18, 4.038315392108682e-31, 7.220082055473744e-29
	.float 6.698650875519777e-18, 6.752861811324665e-18, 6.696326497998503e-18, 4.069130741416618e-31
	.float 7.259525702587902e-29, 6.807072747129553e-18, 6.8612836829344406e-18, 6.80474712883736e-18
	.float 4.099946090724554e-31, 7.29896934970206e-29, 6.915494618739328e-18, 7.000517205181204e-18
	.float 6.913167759676217e-18, 4.13076144003249e-31, 7.338412996816218e-29, 7.10893907679098e-18
	.float 7.217360948400755e-18, 7.104282877122918e-18, 4.161576789340426e-31, 7.377856643930376e-29
	.float 7.32578282001053e-18, 7.434204691620306e-18, 7.321124138800632e-18, 4.1923921386483625e-31
	.float 7.417300291044535e-29, 7.542626563230082e-18, 7.651048434839857e-18, 7.537965400478345e-18
	.float 4.223207487956299e-31, 7.456743938158693e-29, 7.759470306449633e-18, 7.867892178059408e-18
	.float 7.754806662156059e-18, 4.254022837264235e-31, 7.496187585272851e-29, 7.976314049669184e-18
	.float 8.08473592127896e-18, 7.971647923833772e-18, 4.284838186572171e-31, 7.535631232387009e-29
	.float 8.193157792888735e-18, 8.30157966449851e-18, 8.188489185511486e-18, 4.315653535880107e-31
	.float 7.575074879501168e-29, 8.410001536108286e-18, 8.518423407718062e-18, 8.405330447189199e-18
	.float 4.346468885188043e-31, 7.614518526615326e-29, 8.626845279327837e-18, 8.735267150937613e-18
	.float 8.622171708866912e-18, 4.377284234495979e-31, 7.653962173729484e-29, 8.843689022547388e-18
	.float 8.952110894157164e-18, 8.839012970544626e-18, 4.408099583803915e-31, 7.693405820843642e-29
	.float 9.06053276576694e-18, 9.168954637376715e-18, 9.05585423222234e-18, 4.438914933111851e-31
	.float 7.7328494679578e-29, 9.27737650898649e-18, 9.385798380596266e-18, 9.272695493900053e-18
	.float 4.469730282419787e-31, 7.772293115071959e-29, 9.494220252206041e-18, 9.602642123815817e-18
	.float 9.489536755577766e-18, 4.5005456317277235e-31, 7.811736762186117e-29, 9.711063995425593e-18
	.float 9.819485867035368e-18, 9.70637801725548e-18, 4.53136098103566e-31, 7.851180409300275e-29
	.float 9.927907738645144e-18, 1.0036329610254919e-17, 9.923219278933193e-18, 4.562176330343596e-31
	.float 7.890624056414433e-29, 1.0144751481864695e-17, 1.025317335347447e-17, 1.0140060540610907e-17
	.float 4.592991679651532e-31, 7.930067703528591e-29, 1.0361595225084246e-17, 1.0470017096694021e-17
	.float 1.035690180228862e-17, 4.623807028959468e-31, 7.96951135064275e-29, 1.0578438968303797e-17
	.float 1.0686860839913573e-17, 1.0573743063966333e-17, 4.654622378267404e-31, 8.008954997756908e-29
	.float 1.0795282711523348e-17, 1.0903704583133124e-17, 1.0790584325644047e-17, 4.68543772757534e-31
	.float 8.048398644871066e-29, 1.1012126454742899e-17, 1.1120548326352675e-17, 1.100742558732176e-17
	.float 4.716253076883276e-31, 8.087842291985224e-29, 1.122897019796245e-17, 1.1337392069572226e-17
	.float 1.1224266848999474e-17, 4.747068426191212e-31, 8.127285939099382e-29, 1.1445813941182001e-17
	.float 1.1554235812791777e-17, 1.1441108110677187e-17, 4.777883775499148e-31, 8.166729586213541e-29
	.float 1.1662657684401552e-17, 1.1771079556011328e-17, 1.16579493723549e-17, 4.8086991248070845e-31
	.float 8.206173233327699e-29, 1.1879501427621104e-17, 1.1987923299230879e-17, 1.1874790634032614e-17
	.float 4.839514474115021e-31, 8.245616880441857e-29, 1.2096345170840655e-17, 1.220476704245043e-17
	.float 1.2091631895710328e-17, 4.870329823422957e-31, 8.285060527556015e-29, 1.2313188914060206e-17
	.float 1.2421610785669981e-17, 1.2308473157388041e-17, 4.901145172730893e-31, 8.324504174670174e-29
	.float 1.2530032657279757e-17, 1.2638454528889532e-17, 1.2525314419065754e-17, 4.931960522038829e-31
	.float 8.363947821784332e-29, 1.2746876400499308e-17, 1.2855298272109084e-17, 1.2742155680743468e-17
	.float 4.962775871346765e-31, 8.40339146889849e-29, 1.2963720143718859e-17, 1.3072142015328635e-17
	.float 1.2958996942421181e-17, 4.993591220654701e-31, 8.442835116012648e-29, 1.318056388693841e-17
	.float 1.3288985758548186e-17, 1.3175838204098895e-17, 5.024406569962637e-31, 8.482278763126806e-29
	.float 1.3397407630157961e-17, 1.3505829501767737e-17, 1.3392679465776608e-17, 5.055221919270573e-31
	.float 8.521722410240965e-29, 1.3614251373377512e-17, 1.3722673244987288e-17, 1.3609520727454322e-17
	.float 5.0860372685785095e-31, 8.561166057355123e-29, 1.3831095116597063e-17, 1.400124616859922e-17
	.float 1.3826361989132035e-17, 5.1168526178864456e-31, 8.600609704469281e-29, 1.4218089911818772e-17
	.float 1.4434933655038323e-17, 1.420861869380504e-17, 5.147667967194382e-31, 8.640053351583439e-29
	.float 1.4651777398257875e-17, 1.4868621141477426e-17, 1.4642301217160467e-17, 5.178483316502318e-31
	.float 8.679496998697597e-29, 1.5085464884696977e-17, 1.5302308627916528e-17, 1.5075983740515894e-17
	.float 5.209298665810254e-31, 8.718940645811756e-29, 1.551915237113608e-17, 1.573599611435563e-17
	.float 1.550966626387132e-17, 5.24011401511819e-31, 8.758384292925914e-29, 1.595283985757518e-17
	.float 1.6169683600794732e-17, 1.5943348787226748e-17, 5.270929364426126e-31, 8.797827940040072e-29
	.float 1.6386527344014283e-17, 1.6603371087233834e-17, 1.6377031310582175e-17, 5.301744713734062e-31
	.float 8.83727158715423e-29, 1.6820214830453386e-17, 1.7037058573672937e-17, 1.68107138339376e-17
	.float 5.332560063041998e-31, 8.876715234268388e-29, 1.7253902316892488e-17, 1.747074606011204e-17
	.float 1.7244396357293028e-17, 5.363375412349934e-31, 8.916158881382547e-29, 1.768758980333159e-17
	.float 1.790443354655114e-17, 1.7678078880648455e-17, 5.3941907616578705e-31, 8.955602528496705e-29
	.float 1.8121277289770692e-17, 1.8338121032990243e-17, 1.8111761404003882e-17, 5.425006110965807e-31
	.float 8.995046175610863e-29, 1.8554964776209794e-17, 1.8771808519429345e-17, 1.854544392735931e-17
	.float 5.455821460273743e-31, 9.034489822725021e-29, 1.8988652262648897e-17, 1.9205496005868448e-17
	.float 1.8979126450714736e-17, 5.486636809581679e-31, 9.07393346983918e-29, 1.9422339749088e-17
	.float 1.963918349230755e-17, 1.9412808974070163e-17, 5.517452158889615e-31, 9.113377116953338e-29
	.float 1.98560272355271e-17, 2.0072870978746652e-17, 1.984649149742559e-17, 5.548267508197551e-31
	.float 9.152820764067496e-29, 2.0289714721966203e-17, 2.0506558465185754e-17, 2.0280174020781016e-17
	.float 5.579082857505487e-31, 9.192264411181654e-29, 2.0723402208405305e-17, 2.0940245951624856e-17
	.float 2.0713856544136443e-17, 5.609898206813423e-31, 9.231708058295812e-29, 2.1157089694844408e-17
	.float 2.137393343806396e-17, 2.114753906749187e-17, 5.640713556121359e-31, 9.271151705409971e-29
	.float 2.159077718128351e-17, 2.180762092450306e-17, 2.1581221590847297e-17, 5.671528905429295e-31
	.float 9.310595352524129e-29, 2.2024464667722612e-17, 2.2241308410942163e-17, 2.2014904114202724e-17
	.float 5.7023442547372315e-31, 9.350038999638287e-29, 2.2458152154161714e-17, 2.2674995897381265e-17
	.float 2.244858663755815e-17, 5.733159604045168e-31, 9.389482646752445e-29, 2.2891839640600816e-17
	.float 2.3108683383820367e-17, 2.2882269160913578e-17, 5.763974953353104e-31, 9.428926293866603e-29
	.float 2.332552712703992e-17, 2.354237087025947e-17, 2.3315951684269005e-17, 5.79479030266104e-31
	.float 9.468369940980762e-29, 2.375921461347902e-17, 2.3976058356698572e-17, 2.374963420762443e-17
	.float 5.825605651968976e-31, 9.50781358809492e-29, 2.4192902099918123e-17, 2.4409745843137674e-17
	.float 2.4183316730979858e-17, 5.856421001276912e-31, 9.547257235209078e-29, 2.4626589586357225e-17
	.float 2.4843433329576776e-17, 2.4616999254335285e-17, 5.887236350584848e-31, 9.586700882323236e-29
	.float 2.5060277072796327e-17, 2.5277120816015878e-17, 2.5050681777690712e-17, 5.918051699892784e-31
	.float 9.626144529437394e-29, 2.549396455923543e-17, 2.571080830245498e-17, 2.548436430104614e-17
	.float 5.94886704920072e-31, 9.665588176551553e-29, 2.5927652045674532e-17, 2.6144495788894083e-17
	.float 2.5918046824401566e-17, 5.979682398508656e-31, 9.705031823665711e-29, 2.6361339532113634e-17
	.float 2.6578183275333185e-17, 2.6351729347756993e-17, 6.0104977478165925e-31, 9.744475470779869e-29
	.float 2.6795027018552736e-17, 2.7011870761772287e-17, 2.678541187111242e-17, 6.041313097124529e-31
	.float 9.783919117894027e-29, 2.7228714504991838e-17, 2.744555824821139e-17, 2.7219094394467847e-17
	.float 6.072128446432465e-31, 9.823362765008186e-29, 2.766240199143094e-17, 2.800291585367207e-17
	.float 2.7652776917823273e-17, 6.102943795740401e-31, 9.862806412122344e-29, 2.843660334011117e-17
	.float 2.8870290826550274e-17, 2.841734326672849e-17, 6.133759145048337e-31, 9.902250059236502e-29
	.float 2.9303978312989376e-17, 2.973766579942848e-17, 2.928470831343934e-17, 6.164574494356273e-31
	.float 9.94169370635066e-29, 3.017135328586758e-17, 3.060504077230668e-17, 3.0152073360150195e-17
	.float 6.195389843664209e-31, 9.981137353464818e-29, 3.1038728258745785e-17, 3.147241574518489e-17
	.float 3.101943840686105e-17, 6.226205192972145e-31, 1.0020581000578977e-28, 3.190610323162399e-17
	.float 3.233979071806309e-17, 3.18868034535719e-17, 6.257020542280081e-31, 1.0060024647693135e-28
	.float 3.2773478204502194e-17, 3.3207165690941296e-17, 3.2754168500282756e-17, 6.2878358915880175e-31
	.float 1.0101517002785635e-28, 3.36408531773804e-17, 3.40745406638195e-17, 3.362153354699361e-17
	.float 6.3186512408959536e-31, 1.0180404297013951e-28, 3.45082281502586e-17, 3.4941915636697705e-17
	.float 3.4488898593704463e-17, 6.34946659020389e-31, 1.0259291591242268e-28, 3.537560312313681e-17
	.float 3.580929060957591e-17, 3.535626364041532e-17, 6.380281939511826e-31, 1.0338178885470584e-28
	.float 3.624297809601501e-17, 3.6676665582454114e-17, 3.622362868712617e-17, 6.411097288819762e-31
	.float 1.04170661796989e-28, 3.7110353068893216e-17, 3.754404055533232e-17, 3.7090993733837025e-17
	.float 6.441912638127698e-31, 1.0495953473927217e-28, 3.797772804177142e-17, 3.841141552821052e-17
	.float 3.795835878054788e-17, 6.472727987435634e-31, 1.0574840768155533e-28, 3.8845103014649625e-17
	.float 3.9278790501088727e-17, 3.882572382725873e-17, 6.50354333674357e-31, 1.065372806238385e-28
	.float 3.971247798752783e-17, 4.014616547396693e-17, 3.9693088873969586e-17, 6.534358686051506e-31
	.float 1.0732615356612166e-28, 4.0579852960406033e-17, 4.1013540446845136e-17, 4.056045392068044e-17
	.float 6.565174035359442e-31, 1.0811502650840483e-28, 4.144722793328424e-17, 4.188091541972334e-17
	.float 4.1427818967391294e-17, 6.5959893846673785e-31, 1.08903899450688e-28, 4.231460290616244e-17
	.float 4.2748290392601544e-17, 4.229518401410215e-17, 6.626804733975315e-31, 1.0969277239297116e-28
	.float 4.3181977879040647e-17, 4.361566536547975e-17, 4.3162549060813e-17, 6.657620083283251e-31
	.float 1.1048164533525432e-28, 4.404935285191885e-17, 4.4483040338357953e-17, 4.4029914107523855e-17
	.float 6.688435432591187e-31, 1.1127051827753748e-28, 4.4916727824797055e-17, 4.535041531123616e-17
	.float 4.489727915423471e-17, 6.719250781899123e-31, 1.1205939121982065e-28, 4.578410279767526e-17
	.float 4.621779028411436e-17, 4.576464420094556e-17, 6.750066131207059e-31, 1.1284826416210381e-28
	.float 4.6651477770553464e-17, 4.7085165256992566e-17, 4.6632009247656416e-17, 6.780881480514995e-31
	.float 1.1363713710438698e-28, 4.751885274343167e-17, 4.795254022987077e-17, 4.749937429436727e-17
	.float 6.811696829822931e-31, 1.1442601004667014e-28, 4.838622771630987e-17, 4.8819915202748975e-17
	.float 4.8366739341078124e-17, 6.842512179130867e-31, 1.152148829889533e-28, 4.925360268918808e-17
	.float 4.968729017562718e-17, 4.923410438778898e-17, 6.873327528438803e-31, 1.1600375593123647e-28
	.float 5.012097766206628e-17, 5.0554665148505384e-17, 5.010146943449983e-17, 6.9041428777467395e-31
	.float 1.1679262887351963e-28, 5.0988352634944486e-17, 5.142204012138359e-17, 5.0968834481210685e-17
	.float 6.934958227054676e-31, 1.175815018158028e-28
.global lbl_804685E8
lbl_804685E8:
	.float 6.922414413764596e-43, 2.802596928649634e-44, 0.0, 0.0
	.float -6.476588504742727e-39, 1.3844828827529193e-41, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 1.401298464324817e-45
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 6.466293610468612e-27, 6.567267035964923e-27, 6.463738286618399e-27
	.float 1.0534500273806059e-34, 1.0534500273806059e-34, 6.617757215386979e-27, 6.718730640883291e-27
	.float 6.61520035079281e-27, 1.0609733060202387e-34, 1.0609733060202387e-34, 6.769220820305347e-27
	.float 6.870194245801658e-27, 6.766662414967223e-27, 1.0684965846598716e-34, 1.0684965846598716e-34
	.float 6.920684425223714e-27, 7.021657850720026e-27, 6.918124479141635e-27, 1.0760198632995044e-34
	.float 1.0760198632995044e-34, 7.072148030142082e-27, 7.173121455638393e-27, 7.069586543316047e-27
	.float 1.0835431419391372e-34, 1.0835431419391372e-34, 7.223611635060449e-27, 7.324585060556761e-27
	.float 7.221048607490459e-27, 1.09106642057877e-34, 1.09106642057877e-34, 7.375075239978817e-27
	.float 7.476048665475128e-27, 7.37251067166487e-27, 1.098589699218403e-34, 1.098589699218403e-34
	.float 7.526538844897184e-27, 7.627512270393496e-27, 7.523972735839283e-27, 1.1061129778580357e-34
	.float 1.1061129778580357e-34, 7.678002449815552e-27, 7.778975875311864e-27, 7.675434800013695e-27
	.float 1.1136362564976686e-34, 1.1136362564976686e-34, 7.82946605473392e-27, 7.930439480230231e-27
	.float 7.826896864188107e-27, 1.1211595351373014e-34, 1.1211595351373014e-34, 7.980929659652287e-27
	.float 8.081903085148599e-27, 7.978358928362519e-27, 1.1286828137769343e-34, 1.1286828137769343e-34
	.float 8.132393264570654e-27, 8.233366690066966e-27, 8.129820992536931e-27, 1.136206092416567e-34
	.float 1.136206092416567e-34, 8.283856869489022e-27, 8.384830294985334e-27, 8.281283056711343e-27
	.float 1.1437293710562e-34, 1.1437293710562e-34, 8.43532047440739e-27, 8.536293899903701e-27
	.float 8.432745120885755e-27, 1.1512526496958328e-34, 1.1512526496958328e-34, 8.586784079325757e-27
	.float 8.687757504822069e-27, 8.584207185060167e-27, 1.1587759283354656e-34, 1.1587759283354656e-34
	.float 8.738247684244124e-27, 8.839221109740436e-27, 8.735669249234579e-27, 1.1662992069750984e-34
	.float 1.1662992069750984e-34, 8.889711289162492e-27, 8.990684714658804e-27, 8.887131313408991e-27
	.float 1.1738224856147313e-34, 1.1738224856147313e-34, 9.04117489408086e-27, 9.142148319577171e-27
	.float 9.038593377583403e-27, 1.1813457642543641e-34, 1.1813457642543641e-34, 9.192638498999227e-27
	.float 9.293611924495539e-27, 9.190055441757815e-27, 1.188869042893997e-34, 1.188869042893997e-34
	.float 9.344102103917595e-27, 9.445075529413906e-27, 9.341517505932227e-27, 1.1963923215336298e-34
	.float 1.1963923215336298e-34, 9.495565708835962e-27, 9.596539134332274e-27, 9.492979570106639e-27
	.float 1.2039156001732626e-34, 1.2039156001732626e-34, 9.64702931375433e-27, 9.748002739250641e-27
	.float 9.644441634281051e-27, 1.2114388788128955e-34, 1.2114388788128955e-34, 9.798492918672697e-27
	.float 9.899466344169009e-27, 9.795903698455463e-27, 1.2189621574525283e-34, 1.2189621574525283e-34
	.float 9.949956523591065e-27, 1.0050929949087377e-26, 9.947365762629875e-27, 1.2264854360921611e-34
	.float 1.2264854360921611e-34, 1.0101420128509432e-26, 1.0202393554005744e-26, 1.0098827826804287e-26
	.float 1.234008714731794e-34, 1.234008714731794e-34, 1.02528837334278e-26, 1.0353857158924112e-26
	.float 1.0250289890978699e-26, 1.2415319933714268e-34, 1.2415319933714268e-34, 1.0404347338346167e-26
	.float 1.0505320763842479e-26, 1.0401751955153111e-26, 1.2490552720110597e-34, 1.2490552720110597e-34
	.float 1.0555810943264535e-26, 1.0656784368760847e-26, 1.0553214019327523e-26, 1.2565785506506925e-34
	.float 1.2565785506506925e-34, 1.0707274548182902e-26, 1.0808247973679214e-26, 1.0704676083501935e-26
	.float 1.2641018292903253e-34, 1.2641018292903253e-34, 1.085873815310127e-26, 1.0959711578597582e-26
	.float 1.0856138147676347e-26, 1.2716251079299582e-34, 1.2716251079299582e-34, 1.1010201758019637e-26
	.float 1.1111175183515949e-26, 1.1007600211850759e-26, 1.279148386569591e-34, 1.279148386569591e-34
	.float 1.1161665362938005e-26, 1.1262638788434317e-26, 1.1159062276025171e-26, 1.2866716652092238e-34
	.float 1.2866716652092238e-34, 1.1313128967856373e-26, 1.1414102393352684e-26, 1.1310524340199583e-26
	.float 1.2941949438488567e-34, 1.2941949438488567e-34, 1.146459257277474e-26, 1.1565565998271052e-26
	.float 1.1461986404373995e-26, 1.3017182224884895e-34, 1.3017182224884895e-34, 1.1616056177693108e-26
	.float 1.171702960318942e-26, 1.1613448468548407e-26, 1.3092415011281224e-34, 1.3092415011281224e-34
	.float 1.1767519782611475e-26, 1.1868493208107787e-26, 1.176491053272282e-26, 1.3167647797677552e-34
	.float 1.3167647797677552e-34, 1.1918983387529843e-26, 1.2019956813026154e-26, 1.1916372596897231e-26
	.float 1.324288058407388e-34, 1.324288058407388e-34, 1.207044699244821e-26, 1.2171420417944522e-26
	.float 1.2067834661071643e-26, 1.3318113370470209e-34, 1.3318113370470209e-34, 1.2221910597366578e-26
	.float 1.232288402286289e-26, 1.2219296725246055e-26, 1.3393346156866537e-34, 1.3393346156866537e-34
	.float 1.2373374202284945e-26, 1.2474347627781257e-26, 1.2370758789420467e-26, 1.3468578943262865e-34
	.float 1.3468578943262865e-34, 1.2524837807203313e-26, 1.2625811232699625e-26, 1.252222085359488e-26
	.float 1.3543811729659194e-34, 1.3543811729659194e-34, 1.267630141212168e-26, 1.2777274837617992e-26
	.float 1.2673682917769291e-26, 1.3619044516055522e-34, 1.3619044516055522e-34, 1.2827765017040048e-26
	.float 1.2932779813931662e-26, 1.2825144981943703e-26, 1.369427730245185e-34, 1.369427730245185e-34
	.float 1.3033760172775773e-26, 1.3235707023768397e-26, 1.3028517021095174e-26, 1.3769510088848179e-34
	.float 1.3769510088848179e-34, 1.3336687382612508e-26, 1.3538634233605132e-26, 1.3331441149443998e-26
	.float 1.3844742875244507e-34, 1.3844742875244507e-34, 1.3639614592449243e-26, 1.3841561443441867e-26
	.float 1.3634365277792822e-26, 1.3919975661640836e-34, 1.3919975661640836e-34, 1.3942541802285979e-26
	.float 1.4144488653278602e-26, 1.3937289406141646e-26, 1.3995208448037164e-34, 1.3995208448037164e-34
	.float 1.4245469012122714e-26, 1.4447415863115337e-26, 1.424021353449047e-26, 1.4070441234433492e-34
	.float 1.4070441234433492e-34, 1.454839622195945e-26, 1.4750343072952072e-26, 1.4543137662839294e-26
	.float 1.414567402082982e-34, 1.414567402082982e-34, 1.4851323431796184e-26, 1.5053270282788807e-26
	.float 1.4846061791188118e-26, 1.422090680722615e-34, 1.422090680722615e-34, 1.515425064163292e-26
	.float 1.5356197492625542e-26, 1.5148985919536942e-26, 1.4296139593622478e-34, 1.4296139593622478e-34
	.float 1.5457177851469654e-26, 1.5659124702462277e-26, 1.5451910047885766e-26, 1.4371372380018806e-34
	.float 1.4371372380018806e-34, 1.576010506130639e-26, 1.5962051912299012e-26, 1.575483417623459e-26
	.float 1.4446605166415134e-34, 1.4446605166415134e-34, 1.6063032271143124e-26, 1.6264979122135747e-26
	.float 1.6057758304583414e-26, 1.4521837952811463e-34, 1.4521837952811463e-34, 1.636595948097986e-26
	.float 1.6567906331972483e-26, 1.6360682432932238e-26, 1.459707073920779e-34, 1.459707073920779e-34
	.float 1.6668886690816594e-26, 1.6870833541809218e-26, 1.6663606561281062e-26, 1.467230352560412e-34
	.float 1.467230352560412e-34, 1.697181390065333e-26, 1.7173760751645953e-26, 1.6966530689629886e-26
	.float 1.4747536312000448e-34, 1.4747536312000448e-34, 1.7274741110490064e-26, 1.7476687961482688e-26
	.float 1.726945481797871e-26, 1.4822769098396776e-34, 1.4822769098396776e-34, 1.75776683203268e-26
	.float 1.7779615171319423e-26, 1.7572378946327534e-26, 1.4898001884793105e-34, 1.4898001884793105e-34
	.float 1.7880595530163534e-26, 1.8082542381156158e-26, 1.7875303074676358e-26, 1.4973234671189433e-34
	.float 1.4973234671189433e-34, 1.818352274000027e-26, 1.8385469590992893e-26, 1.8178227203025182e-26
	.float 1.5048467457585761e-34, 1.5048467457585761e-34, 1.8486449949837004e-26, 1.8688396800829628e-26
	.float 1.8481151331374006e-26, 1.512370024398209e-34, 1.512370024398209e-34, 1.878937715967374e-26
	.float 1.8991324010666363e-26, 1.878407545972283e-26, 1.5198933030378418e-34, 1.5198933030378418e-34
	.float 1.9092304369510475e-26, 1.9294251220503098e-26, 1.9086999588071654e-26, 1.5274165816774746e-34
	.float 1.5274165816774746e-34, 1.939523157934721e-26, 1.9597178430339833e-26, 1.9389923716420478e-26
	.float 1.5349398603171075e-34, 1.5349398603171075e-34, 1.9698158789183945e-26, 1.9900105640176568e-26
	.float 1.9692847844769302e-26, 1.5424631389567403e-34, 1.5424631389567403e-34, 2.000108599902068e-26
	.float 2.0203032850013303e-26, 1.9995771973118127e-26, 1.5499864175963732e-34, 1.5499864175963732e-34
	.float 2.0304013208857415e-26, 2.0505960059850038e-26, 2.029869610146695e-26, 1.557509696236006e-34
	.float 1.557509696236006e-34, 2.060694041869415e-26, 2.0808887269686773e-26, 2.0601620229815775e-26
	.float 1.5650329748756388e-34, 1.5650329748756388e-34, 2.0909867628530885e-26, 2.1111814479523508e-26
	.float 2.09045443581646e-26, 1.5725562535152717e-34, 1.5725562535152717e-34, 2.121279483836762e-26
	.float 2.1414741689360244e-26, 2.1207468486513423e-26, 1.5800795321549045e-34, 1.5800795321549045e-34
	.float 2.1515722048204355e-26, 2.171766889919698e-26, 2.1510392614862247e-26, 1.5876028107945373e-34
	.float 1.5876028107945373e-34, 2.181864925804109e-26, 2.2020596109033714e-26, 2.181331674321107e-26
	.float 1.5951260894341702e-34, 1.5951260894341702e-34, 2.2121576467877825e-26, 2.232352331887045e-26
	.float 2.2116240871559895e-26, 1.602649368073803e-34, 1.602649368073803e-34, 2.242450367771456e-26
	.float 2.2626450528707184e-26, 2.241916499990872e-26, 1.6101726467134359e-34, 1.6101726467134359e-34
	.float 2.2727430887551295e-26, 2.292937773854392e-26, 2.2722089128257543e-26, 1.6176959253530687e-34
	.float 1.6176959253530687e-34, 2.303035809738803e-26, 2.3232304948380654e-26, 2.3025013256606367e-26
	.float 1.6252192039927015e-34, 1.6252192039927015e-34, 2.3333285307224765e-26, 2.353523215821739e-26
	.float 2.332793738495519e-26, 1.6327424826323344e-34, 1.6327424826323344e-34, 2.36362125170615e-26
	.float 2.3838159368054124e-26, 2.3630861513304015e-26, 1.6402657612719672e-34, 1.6402657612719672e-34
	.float 2.3939139726898236e-26, 2.414108657789086e-26, 2.393378564165284e-26, 1.6477890399116e-34
	.float 1.6477890399116e-34, 2.424206693673497e-26, 2.4444013787727594e-26, 2.4236709770001663e-26
	.float 1.6553123185512329e-34, 1.6553123185512329e-34, 2.4544994146571706e-26, 2.474694099756433e-26
	.float 2.4539633898350487e-26, 1.6628355971908657e-34, 1.6628355971908657e-34, 2.484792135640844e-26
	.float 2.5049868207401064e-26, 2.484255802669931e-26, 1.6703588758304986e-34, 1.6703588758304986e-34
	.float 2.5150848566245176e-26, 2.53527954172378e-26, 2.5145482155048135e-26, 1.6778821544701314e-34
	.float 1.6778821544701314e-34, 2.545377577608191e-26, 2.5655722627074534e-26, 2.544840628339696e-26
	.float 1.6854054331097642e-34, 1.6854054331097642e-34, 2.5756702985918646e-26, 2.6067905531540424e-26
	.float 2.5751330411745783e-26, 1.692928711749397e-34, 1.692928711749397e-34, 2.626986624922865e-26
	.float 2.6673759951213894e-26, 2.62591149379071e-26, 1.70045199038903e-34, 1.70045199038903e-34
	.float 2.687572066890212e-26, 2.7279614370887364e-26, 2.686496319460475e-26, 1.7079752690286627e-34
	.float 1.7079752690286627e-34, 2.748157508857559e-26, 2.7885468790560834e-26, 2.7470811451302396e-26
	.float 1.7154985476682956e-34, 1.7154985476682956e-34, 2.808742950824906e-26, 2.8491323210234305e-26
	.float 2.8076659708000044e-26, 1.7230218263079284e-34, 1.7230218263079284e-34, 2.869328392792253e-26
	.float 2.9097177629907775e-26, 2.868250796469769e-26, 1.7305451049475613e-34, 1.7305451049475613e-34
	.float 2.9299138347596e-26, 2.9703032049581245e-26, 2.928835622139534e-26, 1.738068383587194e-34
	.float 1.738068383587194e-34, 2.990499276726947e-26, 3.0308886469254715e-26, 2.989420447809299e-26
	.float 1.745591662226827e-34, 1.745591662226827e-34, 3.051084718694294e-26, 3.0914740888928185e-26
	.float 3.0500052734790636e-26, 1.7531149408664598e-34, 1.7531149408664598e-34, 3.111670160661641e-26
	.float 3.1520595308601655e-26, 3.1105900991488285e-26, 1.7606382195060926e-34, 1.7606382195060926e-34
	.float 3.172255602628988e-26, 3.2126449728275125e-26, 3.171174924818593e-26, 1.7681614981457254e-34
	.float 1.7681614981457254e-34, 3.232841044596335e-26, 3.2732304147948595e-26, 3.231759750488358e-26
	.float 1.7756847767853583e-34, 1.7756847767853583e-34, 3.293426486563682e-26, 3.3338158567622066e-26
	.float 3.292344576158123e-26, 1.7832080554249911e-34, 1.7832080554249911e-34, 3.354011928531029e-26
	.float 3.3944012987295536e-26, 3.3529294018278877e-26, 1.790731334064624e-34, 1.790731334064624e-34
	.float 3.414597370498376e-26, 3.4549867406969006e-26, 3.4135142274976525e-26, 1.7982546127042568e-34
	.float 1.7982546127042568e-34, 3.475182812465723e-26, 3.5155721826642476e-26, 3.4740990531674173e-26
	.float 1.8057778913438896e-34, 1.8057778913438896e-34, 3.53576825443307e-26, 3.5761576246315946e-26
	.float 3.534683878837182e-26, 1.8133011699835225e-34, 1.8133011699835225e-34, 3.596353696400417e-26
	.float 3.6367430665989416e-26, 3.595268704506947e-26, 1.8208244486231553e-34, 1.8208244486231553e-34
	.float 3.656939138367764e-26, 3.6973285085662886e-26, 3.655853530176712e-26, 1.8283477272627881e-34
	.float 1.8283477272627881e-34, 3.717524580335111e-26, 3.7579139505336356e-26, 3.7164383558464765e-26
	.float 1.835871005902421e-34, 1.835871005902421e-34, 3.778110022302458e-26, 3.8184993925009827e-26
	.float 3.7770231815162414e-26, 1.8433942845420538e-34, 1.8433942845420538e-34, 3.838695464269805e-26
	.float 3.8790848344683297e-26, 3.837608007186006e-26, 1.8509175631816867e-34, 1.8509175631816867e-34
	.float 3.899280906237152e-26, 3.9396702764356767e-26, 3.898192832855771e-26, 1.8584408418213195e-34
	.float 1.8584408418213195e-34, 3.959866348204499e-26, 4.0002557184030237e-26, 3.958777658525536e-26
	.float 1.8659641204609523e-34, 1.8659641204609523e-34, 4.020451790171846e-26, 4.0608411603703707e-26
	.float 4.0193624841953006e-26, 1.8734873991005852e-34, 1.8734873991005852e-34, 4.081037232139193e-26
	.float 4.121426602337718e-26, 4.0799473098650654e-26, 1.881010677740218e-34, 1.881010677740218e-34
	.float 4.14162267410654e-26, 4.182012044305065e-26, 4.14053213553483e-26, 1.8885339563798508e-34
	.float 1.8885339563798508e-34, 4.202208116073887e-26, 4.242597486272412e-26, 4.201116961204595e-26
	.float 1.8960572350194837e-34, 1.8960572350194837e-34, 4.262793558041234e-26, 4.303182928239759e-26
	.float 4.26170178687436e-26, 1.9035805136591165e-34, 1.9035805136591165e-34, 4.323379000008581e-26
	.float 4.363768370207106e-26, 4.3222866125441246e-26, 1.9111037922987494e-34, 1.9111037922987494e-34
	.float 4.383964441975928e-26, 4.424353812174453e-26, 4.3828714382138894e-26, 1.9186270709383822e-34
	.float 1.9186270709383822e-34, 4.444549883943275e-26, 4.4849392541418e-26, 4.443456263883654e-26
	.float 1.926370754768794e-34, 1.926370754768794e-34, 4.505135325910622e-26, 4.545524696109147e-26
	.float 4.504041089553419e-26, 1.94141731204806e-34, 1.94141731204806e-34, 4.565720767877969e-26
	.float 4.606110138076494e-26, 4.564625915223184e-26, 1.9564638693273256e-34, 1.9564638693273256e-34
	.float 4.626306209845316e-26, 4.666695580043841e-26, 4.6252107408929487e-26, 1.9715104266065912e-34
	.float 1.9715104266065912e-34, 4.686891651812663e-26, 4.727281022011188e-26, 4.6857955665627135e-26
	.float 1.986556983885857e-34, 1.986556983885857e-34, 4.74747709378001e-26, 4.787866463978535e-26
	.float 4.7463803922324783e-26, 2.0016035411651226e-34, 2.0016035411651226e-34, 4.808062535747357e-26
	.float 4.848451905945882e-26, 4.806965217902243e-26, 2.0166500984443883e-34, 2.0166500984443883e-34
	.float 4.868647977714704e-26, 4.909037347913229e-26, 4.867550043572008e-26, 2.031696655723654e-34
	.float 2.031696655723654e-34, 4.929233419682051e-26, 4.969622789880576e-26, 4.928134869241773e-26
	.float 2.0467432130029196e-34, 2.0467432130029196e-34, 4.989818861649398e-26, 5.030208231847923e-26
	.float 4.9887196949115375e-26, 2.0617897702821853e-34, 2.0617897702821853e-34, 5.050404303616745e-26
	.float 5.09079367381527e-26, 5.0493045205813023e-26, 2.076836327561451e-34, 2.076836327561451e-34
	.float 5.110989745584092e-26, 5.151379115782617e-26, 5.109889346251067e-26, 2.0918828848407166e-34
	.float 2.0918828848407166e-34, 5.173271546646456e-26, 5.254050287043505e-26, 5.171069515385241e-26
	.float 2.1069294421199823e-34, 2.1069294421199823e-34, 5.29444243058115e-26, 5.375221170978199e-26
	.float 5.29223916672477e-26, 2.121975999399248e-34, 2.121975999399248e-34, 5.415613314515844e-26
	.float 5.496392054912893e-26, 5.4134088180643e-26, 2.1370225566785137e-34, 2.1370225566785137e-34
	.float 5.536784198450538e-26, 5.617562938847587e-26, 5.53457846940383e-26, 2.1520691139577793e-34
	.float 2.1520691139577793e-34, 5.657955082385232e-26, 5.738733822782281e-26, 5.655748120743359e-26
	.float 2.167115671237045e-34, 2.167115671237045e-34, 5.779125966319926e-26, 5.859904706716975e-26
	.float 5.776917772082889e-26, 2.1821622285163107e-34, 2.1821622285163107e-34, 5.90029685025462e-26
	.float 5.981075590651669e-26, 5.898087423422419e-26, 2.1972087857955764e-34, 2.1972087857955764e-34
	.float 6.021467734189314e-26, 6.102246474586363e-26, 6.019257074761948e-26, 2.212255343074842e-34
	.float 2.212255343074842e-34, 6.142638618124008e-26, 6.223417358521057e-26, 6.140426726101478e-26
	.float 2.2273019003541077e-34, 2.2273019003541077e-34, 6.263809502058702e-26, 6.344588242455751e-26
	.float 6.261596377441007e-26, 2.2423484576333734e-34, 2.2423484576333734e-34, 6.384980385993396e-26
	.float 6.465759126390445e-26, 6.382766028780537e-26, 2.257395014912639e-34, 2.257395014912639e-34
	.float 6.50615126992809e-26, 6.586930010325139e-26, 6.503935680120067e-26, 2.2724415721919047e-34
	.float 2.2724415721919047e-34, 6.627322153862784e-26, 6.708100894259833e-26, 6.625105331459596e-26
	.float 2.2874881294711704e-34, 2.2874881294711704e-34, 6.748493037797478e-26, 6.829271778194527e-26
	.float 6.746274982799126e-26, 2.302534686750436e-34, 2.302534686750436e-34, 6.869663921732172e-26
	.float 6.950442662129221e-26, 6.867444634138656e-26, 2.3175812440297018e-34, 2.3175812440297018e-34
	.float 6.990834805666866e-26, 7.071613546063915e-26, 6.988614285478185e-26, 2.3326278013089674e-34
	.float 2.3326278013089674e-34, 7.11200568960156e-26, 7.192784429998609e-26, 7.109783936817715e-26
	.float 2.347674358588233e-34, 2.347674358588233e-34, 7.233176573536254e-26, 7.313955313933303e-26
	.float 7.230953588157244e-26, 2.362720915867499e-34, 2.362720915867499e-34, 7.354347457470948e-26
	.float 7.435126197867997e-26, 7.352123239496774e-26, 2.3777674731467645e-34, 2.3777674731467645e-34
	.float 7.475518341405642e-26, 7.556297081802691e-26, 7.473292890836304e-26, 2.39281403042603e-34
	.float 2.39281403042603e-34, 7.596689225340336e-26, 7.677467965737385e-26, 7.594462542175833e-26
	.float 2.407860587705296e-34, 2.407860587705296e-34, 7.71786010927503e-26, 7.79863884967208e-26
	.float 7.715632193515363e-26, 2.4229071449845615e-34, 2.4229071449845615e-34, 7.839030993209724e-26
	.float 7.919809733606773e-26, 7.836801844854893e-26, 2.437953702263827e-34, 2.437953702263827e-34
	.float 7.960201877144418e-26, 8.040980617541468e-26, 7.957971496194422e-26, 2.453000259543093e-34
	.float 2.453000259543093e-34, 8.081372761079112e-26, 8.162151501476162e-26, 8.079141147533952e-26
	.float 2.4680468168223585e-34, 2.4680468168223585e-34, 8.202543645013806e-26, 8.283322385410856e-26
	.float 8.200310798873481e-26, 2.483093374101624e-34, 2.483093374101624e-34, 8.3237145289485e-26
	.float 8.40449326934555e-26, 8.321480450213011e-26, 2.49813993138089e-34, 2.49813993138089e-34
	.float 8.444885412883194e-26, 8.525664153280244e-26, 8.442650101552541e-26, 2.5131864886601555e-34
	.float 2.5131864886601555e-34, 8.566056296817888e-26, 8.646835037214938e-26, 8.56381975289207e-26
	.float 2.5282330459394212e-34, 2.5282330459394212e-34, 8.687227180752582e-26, 8.768005921149632e-26
	.float 8.6849894042316e-26, 2.543279603218687e-34, 2.543279603218687e-34, 8.808398064687276e-26
	.float 8.889176805084326e-26, 8.80615905557113e-26, 2.5583261604979526e-34, 2.5583261604979526e-34
	.float 8.92956894862197e-26, 9.01034768901902e-26, 8.927328706910659e-26, 2.5733727177772182e-34
	.float 2.5733727177772182e-34, 9.050739832556664e-26, 9.131518572953714e-26, 9.048498358250189e-26
	.float 2.588419275056484e-34, 2.588419275056484e-34, 9.171910716491358e-26, 9.252689456888408e-26
	.float 9.169668009589718e-26, 2.6034658323357496e-34, 2.6034658323357496e-34, 9.293081600426052e-26
	.float 9.373860340823102e-26, 9.290837660929248e-26, 2.6185123896150153e-34, 2.6185123896150153e-34
	.float 9.414252484360746e-26, 9.495031224757796e-26, 9.412007312268778e-26, 2.633558946894281e-34
	.float 2.633558946894281e-34, 9.53542336829544e-26, 9.61620210869249e-26, 9.533176963608307e-26
	.float 2.6486055041735466e-34, 2.6486055041735466e-34, 9.656594252230134e-26, 9.737372992627184e-26
	.float 9.654346614947837e-26, 2.6636520614528123e-34, 2.6636520614528123e-34, 9.777765136164828e-26
	.float 9.858543876561878e-26, 9.775516266287366e-26, 2.678698618732078e-34, 2.678698618732078e-34
	.float 9.898936020099522e-26, 9.979714760496572e-26, 9.896685917626896e-26, 2.6937451760113436e-34
	.float 2.6937451760113436e-34, 1.0020106904034217e-25, 1.0100885644431266e-25, 1.0017855568966426e-25
	.float 2.7087917332906093e-34, 2.7087917332906093e-34, 1.014127778796891e-25, 1.022205652836596e-25
	.float 1.0139025220305955e-25, 2.723838290569875e-34, 2.723838290569875e-34, 1.0262448671903605e-25
	.float 1.0346697167688462e-25, 1.0260194871645485e-25, 2.7388848478491407e-34, 2.7388848478491407e-34
	.float 1.0427481454763751e-25, 1.058903893555785e-25, 1.0422971389057183e-25, 2.7539314051284063e-34
	.float 2.7539314051284063e-34, 1.066982322263314e-25, 1.0831380703427238e-25, 1.0665310691736242e-25
	.float 2.768977962407672e-34, 2.768977962407672e-34, 1.0912164990502527e-25, 1.1073722471296626e-25
	.float 1.0907649994415301e-25, 2.7840245196869377e-34, 2.7840245196869377e-34, 1.1154506758371915e-25
	.float 1.1316064239166014e-25, 1.114998929709436e-25, 2.7990710769662034e-34, 2.7990710769662034e-34
	.float 1.1396848526241303e-25, 1.1558406007035402e-25, 1.139232859977342e-25, 2.814117634245469e-34
	.float 2.814117634245469e-34, 1.1639190294110692e-25, 1.180074777490479e-25, 1.163466790245248e-25
	.float 2.8291641915247347e-34, 2.8291641915247347e-34, 1.188153206198008e-25, 1.2043089542774178e-25
	.float 1.1877007205131538e-25, 2.8442107488040004e-34, 2.8442107488040004e-34, 1.2123873829849468e-25
	.float 1.2285431310643566e-25, 1.2119346507810598e-25, 2.859257306083266e-34, 2.859257306083266e-34
	.float 1.2366215597718856e-25, 1.2527773078512954e-25, 1.2361685810489657e-25, 2.8743038633625317e-34
	.float 2.8743038633625317e-34, 1.2608557365588244e-25, 1.2770114846382343e-25, 1.2604025113168716e-25
	.float 2.8893504206417974e-34, 2.8893504206417974e-34, 1.2850899133457632e-25, 1.301245661425173e-25
	.float 1.2846364415847775e-25, 2.904396977921063e-34, 2.904396977921063e-34, 1.309324090132702e-25
	.float 1.3254798382121119e-25, 1.3088703718526835e-25, 2.9194435352003288e-34, 2.9194435352003288e-34
	.float 1.3335582669196408e-25, 1.3497140149990507e-25, 1.3331043021205894e-25, 2.9344900924795944e-34
	.float 2.9344900924795944e-34, 1.3577924437065796e-25, 1.3739481917859895e-25, 1.3573382323884953e-25
	.float 2.94953664975886e-34, 2.94953664975886e-34, 1.3820266204935184e-25, 1.3981823685729283e-25
	.float 1.3815721626564012e-25, 2.964583207038126e-34, 2.964583207038126e-34, 1.4062607972804572e-25
	.float 1.422416545359867e-25, 1.4058060929243072e-25, 2.9796297643173915e-34, 2.9796297643173915e-34
	.float 1.430494974067396e-25, 1.446650722146806e-25, 1.430040023192213e-25, 2.994676321596657e-34
	.float 2.994676321596657e-34, 1.4547291508543348e-25, 1.4708848989337447e-25, 1.454273953460119e-25
	.float 3.009722878875923e-34, 3.009722878875923e-34, 1.4789633276412736e-25, 1.4951190757206835e-25
	.float 1.478507883728025e-25, 3.0247694361551885e-34, 3.0247694361551885e-34, 1.5031975044282124e-25
	.float 1.5193532525076223e-25, 1.5027418139959308e-25, 3.039815993434454e-34, 3.039815993434454e-34
	.float 1.5274316812151512e-25, 1.543587429294561e-25, 1.5269757442638368e-25, 3.05486255071372e-34
	.float 3.05486255071372e-34, 1.55166585800209e-25, 1.5678216060815e-25, 1.5512096745317427e-25
	.float 3.0699091079929855e-34, 3.0699091079929855e-34, 1.5759000347890288e-25, 1.5920557828684387e-25
	.float 1.5754436047996486e-25, 3.084955665272251e-34, 3.084955665272251e-34, 1.6001342115759676e-25
	.float 1.6162899596553775e-25, 1.5996775350675545e-25, 3.100002222551517e-34, 3.100002222551517e-34
	.float 1.6243683883629064e-25, 1.6405241364423163e-25, 1.6239114653354605e-25, 3.1150487798307825e-34
	.float 3.1150487798307825e-34, 1.6486025651498453e-25, 1.6647583132292551e-25, 1.6481453956033664e-25
	.float 3.1300953371100482e-34, 3.1300953371100482e-34, 1.672836741936784e-25, 1.688992490016194e-25
	.float 1.6723793258712723e-25, 3.145141894389314e-34, 3.145141894389314e-34, 1.6970709187237229e-25
	.float 1.7132266668031327e-25, 1.6966132561391782e-25, 3.1601884516685796e-34, 3.1601884516685796e-34
	.float 1.7213050955106617e-25, 1.7374608435900715e-25, 1.7208471864070842e-25, 3.1752350089478452e-34
	.float 3.1752350089478452e-34, 1.7455392722976005e-25, 1.7616950203770104e-25, 1.74508111667499e-25
	.float 3.190281566227111e-34, 3.190281566227111e-34, 1.7697734490845393e-25, 1.7859291971639492e-25
	.float 1.769315046942896e-25, 3.2053281235063766e-34, 3.2053281235063766e-34, 1.794007625871478e-25
	.float 1.810163373950888e-25, 1.793548977210802e-25, 3.2203746807856423e-34, 3.2203746807856423e-34
	.float 1.818241802658417e-25, 1.8343975507378268e-25, 1.8177829074787079e-25, 3.235421238064908e-34
	.float 3.235421238064908e-34, 1.8424759794453557e-25, 1.8586317275247656e-25, 1.8420168377466138e-25
	.float 3.2504677953441736e-34, 3.2504677953441736e-34, 1.8667101562322945e-25, 1.8828659043117044e-25
	.float 1.8662507680145197e-25, 3.2655143526234393e-34, 3.2655143526234393e-34, 1.8909443330192333e-25
	.float 1.9071000810986432e-25, 1.8904846982824256e-25, 3.280560909902705e-34, 3.280560909902705e-34
	.float 1.915178509806172e-25, 1.931334257885582e-25, 1.9147186285503315e-25, 3.2956074671819706e-34
	.float 3.2956074671819706e-34, 1.939412686593111e-25, 1.9555684346725208e-25, 1.9389525588182375e-25
	.float 3.3106540244612363e-34, 3.3106540244612363e-34, 1.9636468633800497e-25, 1.9798026114594596e-25
	.float 1.9631864890861434e-25, 3.325700581740502e-34, 3.325700581740502e-34, 1.9878810401669885e-25
	.float 2.0040367882463984e-25, 1.9874204193540493e-25, 3.3407471390197677e-34, 3.3407471390197677e-34
	.float 2.0121152169539273e-25, 2.0282709650333372e-25, 2.0116543496219552e-25, 3.3557936962990333e-34
	.float 3.3557936962990333e-34, 2.0363493937408661e-25, 2.052505141820276e-25, 2.0358882798898612e-25
	.float 3.370840253578299e-34, 3.370840253578299e-34, 2.060583570527805e-25, 2.0855271058318604e-25
	.float 2.060122210157767e-25, 3.3858868108575647e-34, 3.3858868108575647e-34, 2.1016839632469183e-25
	.float 2.133995459405738e-25, 2.100760749468777e-25, 3.4009333681368304e-34, 3.4009333681368304e-34
	.float 2.150152316820796e-25, 2.1824638129796157e-25, 2.1492286100045887e-25, 3.415979925416096e-34
	.float 3.415979925416096e-34, 2.1986206703946735e-25, 2.2309321665534933e-25, 2.1976964705404005e-25
	.float 3.4310264826953617e-34, 3.4310264826953617e-34, 2.247089023968551e-25, 2.279400520127371e-25
	.float 2.2461643310762124e-25, 3.4460730399746274e-34, 3.4460730399746274e-34, 2.2955573775424287e-25
	.float 2.3278688737012485e-25, 2.294632191612024e-25, 3.461119597253893e-34, 3.461119597253893e-34
	.float 2.3440257311163063e-25, 2.376337227275126e-25, 2.343100052147836e-25, 3.4761661545331587e-34
	.float 3.4761661545331587e-34, 2.392494084690184e-25, 2.4248055808490037e-25, 2.391567912683648e-25
	.float 3.4912127118124244e-34, 3.4912127118124244e-34, 2.4409624382640616e-25, 2.4732739344228813e-25
	.float 2.4400357732194598e-25, 3.50625926909169e-34, 3.50625926909169e-34, 2.489430791837939e-25
	.float 2.521742287996759e-25, 2.4885036337552716e-25, 3.5213058263709558e-34, 3.5213058263709558e-34
	.float 2.537899145411817e-25, 2.5702106415706365e-25, 2.5369714942910835e-25, 3.5363523836502214e-34
	.float 3.5363523836502214e-34, 2.5863674989856944e-25, 2.618678995144514e-25, 2.5854393548268953e-25
	.float 3.551398940929487e-34, 3.551398940929487e-34, 2.634835852559572e-25, 2.6671473487183918e-25
	.float 2.633907215362707e-25, 3.566445498208753e-34, 3.566445498208753e-34, 2.6833042061334496e-25
	.float 2.7156157022922694e-25, 2.682375075898519e-25, 3.5814920554880185e-34, 3.5814920554880185e-34
	.float 2.731772559707327e-25, 2.764084055866147e-25, 2.730842936434331e-25, 3.596538612767284e-34
	.float 3.596538612767284e-34, 2.780240913281205e-25, 2.8125524094400246e-25, 2.7793107969701427e-25
	.float 3.61158517004655e-34, 3.61158517004655e-34, 2.8287092668550824e-25, 2.861020763013902e-25
	.float 2.8277786575059545e-25, 3.6266317273258155e-34, 3.6266317273258155e-34, 2.87717762042896e-25
	.float 2.90948911658778e-25, 2.8762465180417664e-25, 3.641678284605081e-34, 3.641678284605081e-34
	.float 2.9256459740028377e-25, 2.9579574701616574e-25, 2.924714378577578e-25, 3.656724841884347e-34
	.float 3.656724841884347e-34, 2.9741143275767153e-25, 3.006425823735535e-25, 2.97318223911339e-25
	.float 3.6717713991636125e-34, 3.6717713991636125e-34, 3.022582681150593e-25, 3.0548941773094126e-25
	.float 3.021650099649202e-25, 3.686817956442878e-34, 3.686817956442878e-34, 3.0710510347244705e-25
	.float 3.1033625308832903e-25, 3.0701179601850138e-25, 3.701864513722144e-34, 3.701864513722144e-34
	.float 3.119519388298348e-25, 3.151830884457168e-25, 3.1185858207208256e-25, 3.7169110710014095e-34
	.float 3.7169110710014095e-34, 3.1679877418722257e-25, 3.2002992380310455e-25, 3.1670536812566375e-25
	.float 3.7319576282806752e-34, 3.7319576282806752e-34, 3.2164560954461033e-25, 3.248767591604923e-25
	.float 3.2155215417924493e-25, 3.747004185559941e-34, 3.747004185559941e-34, 3.264924449019981e-25
	.float 3.2972359451788007e-25, 3.263989402328261e-25, 3.7620507428392066e-34, 3.7620507428392066e-34
	.float 3.3133928025938585e-25, 3.3457042987526783e-25, 3.312457262864073e-25, 3.7770973001184722e-34
	.float 3.7770973001184722e-34, 3.361861156167736e-25, 3.394172652326556e-25, 3.360925123399885e-25
	.float 3.792143857397738e-34, 3.792143857397738e-34, 3.4103295097416138e-25, 3.4426410059004335e-25
	.float 3.4093929839356967e-25, 3.8071904146770036e-34, 3.8071904146770036e-34, 3.4587978633154914e-25
	.float 3.491109359474311e-25, 3.4578608444715085e-25, 3.8222369719562693e-34, 3.8222369719562693e-34
	.float 3.507266216889369e-25, 3.5395777130481887e-25, 3.5063287050073204e-25, 3.837283529235535e-34
	.float 3.837283529235535e-34, 3.5557345704632466e-25, 3.5880460666220664e-25, 3.5547965655431322e-25
	.float 3.8528002842551295e-34, 3.8528002842551295e-34, 3.604202924037124e-25, 3.636514420195944e-25
	.float 3.603264426078944e-25, 3.882893398813661e-34, 3.882893398813661e-34, 3.652671277611002e-25
	.float 3.6849827737698216e-25, 3.651732286614756e-25, 3.912986513372192e-34, 3.912986513372192e-34
	.float 3.7011396311848794e-25, 3.733451127343699e-25, 3.700200147150568e-25, 3.943079627930724e-34
	.float 3.943079627930724e-34, 3.749607984758757e-25, 3.781919480917577e-25, 3.7486680076863796e-25
	.float 3.973172742489255e-34, 3.973172742489255e-34, 3.7980763383326346e-25, 3.8303878344914544e-25
	.float 3.7971358682221915e-25, 4.003265857047786e-34, 4.003265857047786e-34, 3.8465446919065123e-25
	.float 3.878856188065332e-25, 3.8456037287580033e-25, 4.033358971606318e-34, 4.033358971606318e-34
	.float 3.89501304548039e-25, 3.9273245416392096e-25, 3.894071589293815e-25, 4.063452086164849e-34
	.float 4.063452086164849e-34, 3.9434813990542675e-25, 3.9757928952130872e-25, 3.942539449829627e-25
	.float 4.09354520072338e-34, 4.09354520072338e-34, 3.991949752628145e-25, 4.024261248786965e-25
	.float 3.991007310365439e-25, 4.123638315281912e-34, 4.123638315281912e-34, 4.0404181062020227e-25
	.float 4.0727296023608425e-25, 4.0394751709012507e-25, 4.153731429840443e-34, 4.153731429840443e-34
	.float 4.0888864597759003e-25, 4.12119795593472e-25, 4.0879430314370626e-25, 4.183824544398974e-34
	.float 4.183824544398974e-34, 4.1388065639344175e-25, 4.203429556252057e-25, 4.13691872118061e-25
	.float 4.213917658957506e-34, 4.213917658957506e-34, 4.235743271082173e-25, 4.300366263399812e-25
	.float 4.233854442252234e-25, 4.244010773516037e-34, 4.244010773516037e-34, 4.332679978229928e-25
	.float 4.397302970547567e-25, 4.330790163323858e-25, 4.2741038880745684e-34, 4.2741038880745684e-34
	.float 4.429616685377683e-25, 4.494239677695323e-25, 4.4277258843954815e-25, 4.3041970026331e-34
	.float 4.3041970026331e-34, 4.526553392525438e-25, 4.591176384843078e-25, 4.524661605467105e-25
	.float 4.334290117191631e-34, 4.334290117191631e-34, 4.623490099673194e-25, 4.688113091990833e-25
	.float 4.621597326538729e-25, 4.3643832317501625e-34, 4.3643832317501625e-34, 4.720426806820949e-25
	.float 4.785049799138588e-25, 4.718533047610353e-25, 4.394476346308694e-34, 4.394476346308694e-34
	.float 4.817363513968704e-25, 4.8819865062863435e-25, 4.815468768681976e-25, 4.424569460867225e-34
	.float 4.424569460867225e-34, 4.914300221116459e-25, 4.978923213434099e-25, 4.9124044897536e-25
	.float 4.4546625754257565e-34, 4.4546625754257565e-34, 5.011236928264214e-25, 5.075859920581854e-25
	.float 5.009340210825224e-25, 4.484755689984288e-34, 4.484755689984288e-34, 5.10817363541197e-25
	.float 5.172796627729609e-25, 5.106275931896847e-25, 4.514848804542819e-34, 4.514848804542819e-34
	.float 5.205110342559725e-25, 5.269733334877364e-25, 5.203211652968471e-25, 4.544941919101351e-34
	.float 4.544941919101351e-34, 5.30204704970748e-25, 5.36667004202512e-25, 5.300147374040095e-25
	.float 4.575035033659882e-34, 4.575035033659882e-34, 5.398983756855235e-25, 5.463606749172875e-25
	.float 5.397083095111718e-25, 4.605128148218413e-34, 4.605128148218413e-34, 5.495920464002991e-25
	.float 5.56054345632063e-25, 5.494018816183342e-25, 4.635221262776945e-34, 4.635221262776945e-34
	.float 5.592857171150746e-25, 5.657480163468385e-25, 5.590954537254966e-25, 4.665314377335476e-34
	.float 4.665314377335476e-34, 5.689793878298501e-25, 5.7544168706161405e-25, 5.6878902583265895e-25
	.float 4.695407491894007e-34, 4.695407491894007e-34, 5.786730585446256e-25, 5.851353577763896e-25
	.float 5.784825979398213e-25, 4.725500606452539e-34, 4.725500606452539e-34, 5.883667292594011e-25
	.float 5.948290284911651e-25, 5.881761700469837e-25, 4.75559372101107e-34, 4.75559372101107e-34
	.float 5.980603999741767e-25, 6.045226992059406e-25, 5.978697421541461e-25, 4.785686835569601e-34
	.float 4.785686835569601e-34, 6.077540706889522e-25, 6.142163699207161e-25, 6.075633142613084e-25
	.float 4.815779950128133e-34, 4.815779950128133e-34, 6.174477414037277e-25, 6.239100406354917e-25
	.float 6.172568863684708e-25, 4.845873064686664e-34, 4.845873064686664e-34, 6.271414121185032e-25
	.float 6.336037113502672e-25, 6.269504584756332e-25, 4.8759661792451954e-34, 4.8759661792451954e-34
	.float 6.3683508283327875e-25, 6.432973820650427e-25, 6.366440305827955e-25, 4.906059293803727e-34
	.float 4.906059293803727e-34, 6.465287535480543e-25, 6.529910527798182e-25, 6.463376026899579e-25
	.float 4.936152408362258e-34, 4.936152408362258e-34, 6.562224242628298e-25, 6.6268472349459375e-25
	.float 6.560311747971203e-25, 4.9662455229207895e-34, 4.9662455229207895e-34, 6.659160949776053e-25
	.float 6.723783942093693e-25, 6.6572474690428265e-25, 4.996338637479321e-34, 4.996338637479321e-34
	.float 6.756097656923808e-25, 6.820720649241448e-25, 6.75418319011445e-25, 5.026431752037852e-34
	.float 5.026431752037852e-34, 6.853034364071564e-25, 6.917657356389203e-25, 6.851118911186074e-25
	.float 5.0565248665963835e-34, 5.0565248665963835e-34, 6.949971071219319e-25, 7.014594063536958e-25
	.float 6.948054632257698e-25, 5.086617981154915e-34, 5.086617981154915e-34, 7.046907778367074e-25
	.float 7.111530770684714e-25, 7.044990353329321e-25, 5.116711095713446e-34, 5.116711095713446e-34
	.float 7.143844485514829e-25, 7.208467477832469e-25, 7.141926074400945e-25, 5.146804210271978e-34
	.float 5.146804210271978e-34, 7.2407811926625845e-25, 7.305404184980224e-25, 7.238861795472569e-25
	.float 5.176897324830509e-34, 5.176897324830509e-34, 7.33771789981034e-25, 7.402340892127979e-25
	.float 7.335797516544192e-25, 5.20699043938904e-34, 5.20699043938904e-34, 7.434654606958095e-25
	.float 7.4992775992757345e-25, 7.432733237615816e-25, 5.237083553947572e-34, 5.237083553947572e-34
	.float 7.53159131410585e-25, 7.59621430642349e-25, 7.52966895868744e-25, 5.267176668506103e-34
	.float 5.267176668506103e-34, 7.628528021253605e-25, 7.693151013571245e-25, 7.626604679759063e-25
	.float 5.297269783064634e-34, 5.297269783064634e-34, 7.725464728401361e-25, 7.790087720719e-25
	.float 7.723540400830687e-25, 5.327362897623166e-34, 5.327362897623166e-34, 7.822401435549116e-25
	.float 7.887024427866755e-25, 7.820476121902311e-25, 5.357456012181697e-34, 5.357456012181697e-34
	.float 7.919338142696871e-25, 7.983961135014511e-25, 7.9174118429739345e-25, 5.387549126740228e-34
	.float 5.387549126740228e-34, 8.016274849844626e-25, 8.080897842162266e-25, 8.014347564045558e-25
	.float 5.41764224129876e-34, 5.41764224129876e-34, 8.1132115569923815e-25, 8.177834549310021e-25
	.float 8.111283285117182e-25, 5.447735355857291e-34, 5.447735355857291e-34, 8.210148264140137e-25
	.float 8.277736387385276e-25, 8.208219006188806e-25, 5.4778284704158224e-34, 5.4778284704158224e-34
	.float 8.342363817045507e-25, 8.471609801680786e-25, 8.338503328990582e-25, 5.507921584974354e-34
	.float 5.507921584974354e-34, 8.536237231341018e-25, 8.665483215976297e-25, 8.53237477113383e-25
	.float 5.538014699532885e-34, 5.538014699532885e-34, 8.730110645636528e-25, 8.859356630271807e-25
	.float 8.726246213277077e-25, 5.5681078140914165e-34, 5.5681078140914165e-34, 8.923984059932038e-25
	.float 9.053230044567317e-25, 8.920117655420324e-25, 5.598200928649948e-34, 5.598200928649948e-34
	.float 9.117857474227549e-25, 9.247103458862828e-25, 9.113989097563571e-25, 5.628294043208479e-34
	.float 5.628294043208479e-34, 9.31173088852306e-25, 9.440976873158338e-25, 9.307860539706819e-25
	.float 5.6583871577670105e-34, 5.6583871577670105e-34, 9.50560430281857e-25, 9.634850287453849e-25
	.float 9.501731981850066e-25, 5.688480272325542e-34, 5.688480272325542e-34, 9.69947771711408e-25
	.float 9.82872370174936e-25, 9.695603423993313e-25, 5.718573386884073e-34, 5.718573386884073e-34
	.float 9.89335113140959e-25, 1.002259711604487e-24, 9.88947486613656e-25, 5.748666501442605e-34
	.float 5.748666501442605e-34, 1.0087224545705101e-24, 1.021647053034038e-24, 1.0083346308279808e-24
	.float 5.778759616001136e-34, 5.778759616001136e-34, 1.0281097960000611e-24, 1.041034394463589e-24
	.float 1.0277217750423056e-24, 5.808852730559667e-34, 5.808852730559667e-34, 1.0474971374296122e-24
	.float 1.0604217358931401e-24, 1.0471089192566303e-24, 5.838945845118199e-34, 5.838945845118199e-34
	.float 1.0668844788591632e-24, 1.0798090773226911e-24, 1.066496063470955e-24, 5.86903895967673e-34
	.float 5.86903895967673e-34, 1.0862718202887143e-24, 1.0991964187522422e-24, 1.0858832076852798e-24
	.float 5.899132074235261e-34, 5.899132074235261e-34, 1.1056591617182653e-24, 1.1185837601817932e-24
	.float 1.1052703518996045e-24, 5.929225188793793e-34, 5.929225188793793e-34, 1.1250465031478164e-24
	.float 1.1379711016113443e-24, 1.1246574961139293e-24, 5.959318303352324e-34, 5.959318303352324e-34
	.float 1.1444338445773674e-24, 1.1573584430408953e-24, 1.144044640328254e-24, 5.989411417910855e-34
	.float 5.989411417910855e-34, 1.1638211860069185e-24, 1.1767457844704464e-24, 1.1634317845425787e-24
	.float 6.019504532469387e-34, 6.019504532469387e-34, 1.1832085274364695e-24, 1.1961331258999974e-24
	.float 1.1828189287569035e-24, 6.049597647027918e-34, 6.049597647027918e-34, 1.2025958688660205e-24
	.float 1.2155204673295485e-24, 1.2022060729712282e-24, 6.0796907615864494e-34, 6.0796907615864494e-34
	.float 1.2219832102955716e-24, 1.2349078087590995e-24, 1.221593217185553e-24, 6.109783876144981e-34
	.float 6.109783876144981e-34, 1.2413705517251226e-24, 1.2542951501886505e-24, 1.2409803613998777e-24
	.float 6.139876990703512e-34, 6.139876990703512e-34, 1.2607578931546737e-24, 1.2736824916182016e-24
	.float 1.2603675056142024e-24, 6.1699701052620435e-34, 6.1699701052620435e-34, 1.2801452345842247e-24
	.float 1.2930698330477526e-24, 1.2797546498285272e-24, 6.200063219820575e-34, 6.200063219820575e-34
	.float 1.2995325760137758e-24, 1.3124571744773037e-24, 1.2991417940428519e-24, 6.230156334379106e-34
	.float 6.230156334379106e-34, 1.3189199174433268e-24, 1.3318445159068547e-24, 1.3185289382571766e-24
	.float 6.2602494489376375e-34, 6.2602494489376375e-34, 1.3383072588728779e-24, 1.3512318573364058e-24
	.float 1.3379160824715014e-24, 6.290342563496169e-34, 6.290342563496169e-34, 1.3576946003024289e-24
	.float 1.3706191987659568e-24, 1.3573032266858261e-24, 6.3204356780547e-34, 6.3204356780547e-34
	.float 1.37708194173198e-24, 1.3900065401955078e-24, 1.3766903709001509e-24, 6.350528792613232e-34
	.float 6.350528792613232e-34, 1.396469283161531e-24, 1.4093938816250589e-24, 1.3960775151144756e-24
	.float 6.380621907171763e-34, 6.380621907171763e-34, 1.415856624591082e-24, 1.42878122305461e-24
	.float 1.4154646593288003e-24, 6.410715021730294e-34, 6.410715021730294e-34, 1.435243966020633e-24
	.float 1.448168564484161e-24, 1.434851803543125e-24, 6.440808136288826e-34, 6.440808136288826e-34
	.float 1.4546313074501841e-24, 1.467555905913712e-24, 1.4542389477574498e-24, 6.470901250847357e-34
	.float 6.470901250847357e-34, 1.4740186488797352e-24, 1.486943247343263e-24, 1.4736260919717746e-24
	.float 6.500994365405888e-34, 6.500994365405888e-34, 1.4934059903092862e-24, 1.5063305887728141e-24
	.float 1.4930132361860993e-24, 6.53108747996442e-34, 6.53108747996442e-34, 1.5127933317388373e-24
	.float 1.5257179302023652e-24, 1.512400380400424e-24, 6.561180594522951e-34, 6.561180594522951e-34
	.float 1.5321806731683883e-24, 1.5451052716319162e-24, 1.5317875246147488e-24, 6.591273709081482e-34
	.float 6.591273709081482e-34, 1.5515680145979393e-24, 1.5644926130614672e-24, 1.5511746688290735e-24
	.float 6.621366823640014e-34, 6.621366823640014e-34, 1.5709553560274904e-24, 1.5838799544910183e-24
	.float 1.5705618130433982e-24, 6.651459938198545e-34, 6.651459938198545e-34, 1.5903426974570414e-24
	.float 1.6032672959205693e-24, 1.589948957257723e-24, 6.6815530527570765e-34, 6.6815530527570765e-34
	.float 1.6097300388865925e-24, 1.6226546373501204e-24, 1.6093361014720477e-24, 6.711646167315608e-34
	.float 6.711646167315608e-34, 1.6291173803161435e-24, 1.6420419787796714e-24, 1.6287232456863725e-24
	.float 6.741739281874139e-34, 6.741739281874139e-34, 1.6485047217456946e-24, 1.6684974153123896e-24
	.float 1.6481103899006972e-24, 6.7718323964326705e-34, 6.7718323964326705e-34, 1.681422901244436e-24
	.float 1.7072720981714917e-24, 1.6806338431239885e-24, 6.801925510991202e-34, 6.801925510991202e-34
	.float 1.720197584103538e-24, 1.7460467810305938e-24, 1.719408131552638e-24, 6.832018625549733e-34
	.float 6.832018625549733e-34, 1.75897226696264e-24, 1.784821463889696e-24, 1.7581824199812875e-24
	.float 6.8621117401082646e-34, 6.8621117401082646e-34, 1.797746949821742e-24, 1.823596146748798e-24
	.float 1.796956708409937e-24, 6.892204854666796e-34, 6.892204854666796e-34, 1.8365216326808442e-24
	.float 1.8623708296079e-24, 1.8357309968385864e-24, 6.922297969225327e-34, 6.922297969225327e-34
	.float 1.8752963155399463e-24, 1.901145512467002e-24, 1.874505285267236e-24, 6.952391083783859e-34
	.float 6.952391083783859e-34, 1.9140709983990484e-24, 1.9399201953261042e-24, 1.9132795736958854e-24
	.float 6.98248419834239e-34, 6.98248419834239e-34, 1.9528456812581505e-24, 1.9786948781852063e-24
	.float 1.952053862124535e-24, 7.012577312900921e-34, 7.012577312900921e-34, 1.9916203641172526e-24
	.float 2.0174695610443084e-24, 1.9908281505531844e-24, 7.042670427459453e-34, 7.042670427459453e-34
	.float 2.0303950469763546e-24, 2.0562442439034105e-24, 2.029602438981834e-24, 7.072763542017984e-34
	.float 7.072763542017984e-34, 2.0691697298354567e-24, 2.0950189267625125e-24, 2.0683767274104833e-24
	.float 7.102856656576515e-34, 7.102856656576515e-34, 2.107944412694559e-24, 2.1337936096216146e-24
	.float 2.1071510158391328e-24, 7.132949771135047e-34, 7.132949771135047e-34, 2.146719095553661e-24
	.float 2.1725682924807167e-24, 2.1459253042677823e-24, 7.163042885693578e-34, 7.163042885693578e-34
	.float 2.185493778412763e-24, 2.2113429753398188e-24, 2.1846995926964317e-24, 7.193136000252109e-34
	.float 7.193136000252109e-34, 2.224268461271865e-24, 2.250117658198921e-24, 2.2234738811250812e-24
	.float 7.223229114810641e-34, 7.223229114810641e-34, 2.263043144130967e-24, 2.288892341058023e-24
	.float 2.2622481695537307e-24, 7.253322229369172e-34, 7.253322229369172e-34, 2.3018178269900693e-24
	.float 2.327667023917125e-24, 2.30102245798238e-24, 7.2834153439277035e-34, 7.2834153439277035e-34
	.float 2.3405925098491714e-24, 2.366441706776227e-24, 2.3397967464110297e-24, 7.313508458486235e-34
	.float 7.313508458486235e-34, 2.3793671927082734e-24, 2.4052163896353292e-24, 2.378571034839679e-24
	.float 7.343601573044766e-34, 7.343601573044766e-34, 2.4181418755673755e-24, 2.4439910724944313e-24
	.float 2.4173453232683286e-24, 7.3736946876032975e-34, 7.3736946876032975e-34, 2.4569165584264776e-24
	.float 2.4827657553535334e-24, 2.456119611696978e-24, 7.403787802161829e-34, 7.403787802161829e-34
	.float 2.4956912412855797e-24, 2.5215404382126355e-24, 2.4948939001256276e-24, 7.43388091672036e-34
	.float 7.43388091672036e-34, 2.5344659241446818e-24, 2.5603151210717376e-24, 2.533668188554277e-24
	.float 7.4639740312788916e-34, 7.4639740312788916e-34, 2.573240607003784e-24, 2.5990898039308397e-24
	.float 2.5724424769829265e-24, 7.494067145837423e-34, 7.494067145837423e-34, 2.612015289862886e-24
	.float 2.6378644867899418e-24, 2.611216765411576e-24, 7.524160260395954e-34, 7.524160260395954e-34
	.float 2.650789972721988e-24, 2.676639169649044e-24, 2.6499910538402255e-24, 7.554253374954486e-34
	.float 7.554253374954486e-34, 2.68956465558109e-24, 2.715413852508146e-24, 2.688765342268875e-24
	.float 7.584346489513017e-34, 7.584346489513017e-34, 2.7283393384401922e-24, 2.754188535367248e-24
	.float 2.7275396306975244e-24, 7.614439604071548e-34, 7.614439604071548e-34, 2.7671140212992943e-24
	.float 2.79296321822635e-24, 2.766313919126174e-24, 7.64453271863008e-34, 7.64453271863008e-34
	.float 2.8058887041583964e-24, 2.8317379010854522e-24, 2.8050882075548234e-24, 7.674625833188611e-34
	.float 7.674625833188611e-34, 2.8446633870174985e-24, 2.8705125839445543e-24, 2.843862495983473e-24
	.float 7.705718117945341e-34, 7.705718117945341e-34, 2.8834380698766006e-24, 2.9092872668036564e-24
	.float 2.8826367844121223e-24, 7.765904347062404e-34, 7.765904347062404e-34, 2.9222127527357027e-24
	.float 2.9480619496627585e-24, 2.921411072840772e-24, 7.826090576179467e-34, 7.826090576179467e-34
	.float 2.9609874355948048e-24, 2.9868366325218606e-24, 2.9601853612694213e-24, 7.88627680529653e-34
	.float 7.88627680529653e-34, 2.999762118453907e-24, 3.0256113153809627e-24, 2.9989596496980708e-24
	.float 7.946463034413592e-34, 7.946463034413592e-34, 3.038536801313009e-24, 3.0643859982400647e-24
	.float 3.0377339381267203e-24, 8.006649263530655e-34, 8.006649263530655e-34, 3.077311484172111e-24
	.float 3.103160681099167e-24, 3.0765082265553697e-24, 8.066835492647718e-34, 8.066835492647718e-34
	.float 3.116086167031213e-24, 3.141935363958269e-24, 3.1152825149840192e-24, 8.12702172176478e-34
	.float 8.12702172176478e-34, 3.1548608498903152e-24, 3.180710046817371e-24, 3.1540568034126687e-24
	.float 8.187207950881843e-34, 8.187207950881843e-34, 3.1936355327494173e-24, 3.219484729676473e-24
	.float 3.192831091841318e-24, 8.247394179998906e-34, 8.247394179998906e-34, 3.2324102156085194e-24
	.float 3.2582594125355752e-24, 3.2316053802699676e-24, 8.307580409115968e-34, 8.307580409115968e-34
	.float 3.2711848984676215e-24, 3.2970340953946773e-24, 3.270379668698617e-24, 8.367766638233031e-34
	.float 8.367766638233031e-34, 3.3111967124413364e-24, 3.362895106295448e-24, 3.3095854640424225e-24
	.float 8.427952867350094e-34, 8.427952867350094e-34, 3.3887460781595406e-24, 3.440444472013652e-24
	.float 3.3871340408997214e-24, 8.488139096467156e-34, 8.488139096467156e-34, 3.466295443877745e-24
	.float 3.5179938377318564e-24, 3.4646826177570204e-24, 8.548325325584219e-34, 8.548325325584219e-34
	.float 3.543844809595949e-24, 3.5955432034500606e-24, 3.542231194614319e-24, 8.608511554701282e-34
	.float 8.608511554701282e-34, 3.621394175314153e-24, 3.673092569168265e-24, 3.619779771471618e-24
	.float 8.668697783818345e-34, 8.668697783818345e-34, 3.698943541032357e-24, 3.750641934886469e-24
	.float 3.697328348328917e-24, 8.728884012935407e-34, 8.728884012935407e-34, 3.7764929067505615e-24
	.float 3.828191300604673e-24, 3.774876925186216e-24, 8.78907024205247e-34, 8.78907024205247e-34
	.float 3.854042272468766e-24, 3.905740666322877e-24, 3.852425502043515e-24, 8.849256471169533e-34
	.float 8.849256471169533e-34, 3.93159163818697e-24, 3.9832900320410814e-24, 3.929974078900814e-24
	.float 8.909442700286595e-34, 8.909442700286595e-34, 4.009141003905174e-24, 4.0608393977592856e-24
	.float 4.007522655758113e-24, 8.969628929403658e-34, 8.969628929403658e-34, 4.086690369623378e-24
	.float 4.13838876347749e-24, 4.085071232615412e-24, 9.02981515852072e-34, 9.02981515852072e-34
	.float 4.164239735341582e-24, 4.215938129195694e-24, 4.162619809472711e-24, 9.090001387637783e-34
	.float 9.090001387637783e-34, 4.2417891010597865e-24, 4.293487494913898e-24, 4.24016838633001e-24
	.float 9.150187616754846e-34, 9.150187616754846e-34, 4.319338466777991e-24, 4.371036860632102e-24
	.float 4.317716963187309e-24, 9.210373845871909e-34, 9.210373845871909e-34, 4.396887832496195e-24
	.float 4.4485862263503065e-24, 4.395265540044608e-24, 9.270560074988972e-34, 9.270560074988972e-34
	.float 4.474437198214399e-24, 4.526135592068511e-24, 4.472814116901907e-24, 9.330746304106034e-34
	.float 9.330746304106034e-34, 4.551986563932603e-24, 4.603684957786715e-24, 4.550362693759206e-24
	.float 9.390932533223097e-34, 9.390932533223097e-34, 4.6295359296508074e-24, 4.681234323504919e-24
	.float 4.627911270616505e-24, 9.45111876234016e-34, 9.45111876234016e-34, 4.7070852953690116e-24
	.float 4.758783689223123e-24, 4.705459847473804e-24, 9.511304991457222e-34, 9.511304991457222e-34
	.float 4.784634661087216e-24, 4.836333054941327e-24, 4.7830084243311026e-24, 9.571491220574285e-34
	.float 9.571491220574285e-34, 4.86218402680542e-24, 4.9138824206595315e-24, 4.8605570011884016e-24
	.float 9.631677449691348e-34, 9.631677449691348e-34, 4.939733392523624e-24, 4.991431786377736e-24
	.float 4.9381055780457005e-24, 9.69186367880841e-34, 9.69186367880841e-34, 5.017282758241828e-24
	.float 5.06898115209594e-24, 5.0156541549029995e-24, 9.752049907925473e-34, 9.752049907925473e-34
	.float 5.0948321239600325e-24, 5.146530517814144e-24, 5.0932027317602985e-24, 9.812236137042536e-34
	.float 9.812236137042536e-34, 5.1723814896782366e-24, 5.224079883532348e-24, 5.1707513086175974e-24
	.float 9.872422366159599e-34, 9.872422366159599e-34, 5.249930855396441e-24, 5.3016292492505524e-24
	.float 5.248299885474896e-24, 9.932608595276661e-34, 9.932608595276661e-34, 5.327480221114645e-24
	.float 5.3791786149687566e-24, 5.325848462332195e-24, 9.992794824393724e-34, 9.992794824393724e-34
	.float 5.405029586832849e-24, 5.456727980686961e-24, 5.403397039189494e-24, 1.0052981053510787e-33
	.float 1.0052981053510787e-33, 5.482578952551053e-24, 5.534277346405165e-24, 5.480945616046793e-24
	.float 1.011316728262785e-33, 1.011316728262785e-33, 5.5601283182692575e-24, 5.611826712123369e-24
	.float 5.558494192904092e-24, 1.0173353511744912e-33, 1.0173353511744912e-33, 5.637677683987462e-24
	.float 5.689376077841573e-24, 5.636042769761391e-24, 1.0233539740861975e-33, 1.0233539740861975e-33
	.float 5.715227049705666e-24, 5.7669254435597775e-24, 5.71359134661869e-24, 1.0293725969979037e-33
	.float 1.0293725969979037e-33, 5.79277641542387e-24, 5.844474809277982e-24, 5.791139923475989e-24
	.float 1.03539121990961e-33, 1.03539121990961e-33, 5.870325781142074e-24, 5.922024174996186e-24
	.float 5.868688500333288e-24, 1.0414098428213163e-33, 1.0414098428213163e-33, 5.9478751468602784e-24
	.float 5.99957354071439e-24, 5.946237077190587e-24, 1.0474284657330226e-33, 1.0474284657330226e-33
	.float 6.0254245125784826e-24, 6.077122906432594e-24, 6.023785654047886e-24, 1.0534470886447288e-33
	.float 1.0534470886447288e-33, 6.102973878296687e-24, 6.154672272150798e-24, 6.101334230905185e-24
	.float 1.0594657115564351e-33, 1.0594657115564351e-33, 6.180523244014891e-24, 6.2322216378690025e-24
	.float 6.178882807762484e-24, 1.0654843344681414e-33, 1.0654843344681414e-33, 6.258072609733095e-24
	.float 6.309771003587207e-24, 6.256431384619783e-24, 1.0715029573798476e-33, 1.0715029573798476e-33
	.float 6.335621975451299e-24, 6.387320369305411e-24, 6.333979961477082e-24, 1.0775215802915539e-33
	.float 1.0775215802915539e-33, 6.4131713411695034e-24, 6.464869735023615e-24, 6.411528538334381e-24
	.float 1.0835402032032602e-33, 1.0835402032032602e-33, 6.4907207068877076e-24, 6.542419100741819e-24
	.float 6.48907711519168e-24, 1.0895588261149664e-33, 1.0895588261149664e-33, 6.568270072605912e-24
	.float 6.622492032495825e-24, 6.5666256920489786e-24, 1.0955774490266727e-33, 1.0955774490266727e-33
	.float 6.67419397622401e-24, 6.777590763932234e-24, 6.670903637388334e-24, 1.101596071938379e-33
	.float 1.101596071938379e-33, 6.829292707660419e-24, 6.932689495368642e-24, 6.826000791102932e-24
	.float 1.1076146948500853e-33, 1.1076146948500853e-33, 6.984391439096827e-24, 7.08778822680505e-24
	.float 6.98109794481753e-24, 1.1136333177617915e-33, 1.1136333177617915e-33, 7.139490170533236e-24
	.float 7.242886958241459e-24, 7.136195098532127e-24, 1.1196519406734978e-33, 1.1196519406734978e-33
	.float 7.294588901969644e-24, 7.397985689677867e-24, 7.291292252246725e-24, 1.125670563585204e-33
	.float 1.125670563585204e-33, 7.449687633406052e-24, 7.553084421114276e-24, 7.446389405961323e-24
	.float 1.1316891864969103e-33, 1.1316891864969103e-33, 7.60478636484246e-24, 7.708183152550684e-24
	.float 7.601486559675921e-24, 1.1377078094086166e-33, 1.1377078094086166e-33, 7.759885096278869e-24
	.float 7.863281883987092e-24, 7.756583713390519e-24, 1.1437264323203229e-33, 1.1437264323203229e-33
	.float 7.914983827715277e-24, 8.0183806154235e-24, 7.911680867105117e-24, 1.1497450552320291e-33
	.float 1.1497450552320291e-33, 8.070082559151686e-24, 8.173479346859909e-24, 8.066778020819715e-24
	.float 1.1557636781437354e-33, 1.1557636781437354e-33, 8.225181290588094e-24, 8.328578078296317e-24
	.float 8.221875174534313e-24, 1.1617823010554417e-33, 1.1617823010554417e-33, 8.380280022024502e-24
	.float 8.483676809732726e-24, 8.37697232824891e-24, 1.167800923967148e-33, 1.167800923967148e-33
	.float 8.535378753460911e-24, 8.638775541169134e-24, 8.532069481963509e-24, 1.1738195468788542e-33
	.float 1.1738195468788542e-33, 8.690477484897319e-24, 8.793874272605542e-24, 8.687166635678107e-24
	.float 1.1798381697905605e-33, 1.1798381697905605e-33, 8.845576216333727e-24, 8.94897300404195e-24
	.float 8.842263789392704e-24, 1.1858567927022668e-33, 1.1858567927022668e-33, 9.000674947770136e-24
	.float 9.104071735478359e-24, 8.997360943107302e-24, 1.191875415613973e-33, 1.191875415613973e-33
	.float 9.155773679206544e-24, 9.259170466914767e-24, 9.1524580968219e-24, 1.1978940385256793e-33
	.float 1.1978940385256793e-33, 9.310872410642953e-24, 9.414269198351176e-24, 9.307555250536498e-24
	.float 1.2039126614373856e-33, 1.2039126614373856e-33, 9.465971142079361e-24, 9.569367929787584e-24
	.float 9.462652404251096e-24, 1.2099312843490918e-33, 1.2099312843490918e-33, 9.621069873515769e-24
	.float 9.724466661223992e-24, 9.617749557965694e-24, 1.2159499072607981e-33, 1.2159499072607981e-33
	.float 9.776168604952178e-24, 9.879565392660401e-24, 9.772846711680292e-24, 1.2219685301725044e-33
	.float 1.2219685301725044e-33, 9.931267336388586e-24, 1.0034664124096809e-23, 9.92794386539489e-24
	.float 1.2279871530842107e-33, 1.2279871530842107e-33, 1.0086366067824994e-23, 1.0189762855533218e-23
	.float 1.0083041019109488e-23, 1.234005775995917e-33, 1.234005775995917e-33, 1.0241464799261403e-23
	.float 1.0344861586969626e-23, 1.0238138172824086e-23, 1.2400243989076232e-33, 1.2400243989076232e-33
	.float 1.0396563530697811e-23, 1.0499960318406034e-23, 1.0393235326538684e-23, 1.2460430218193295e-33
	.float 1.2460430218193295e-33, 1.055166226213422e-23, 1.0655059049842443e-23, 1.0548332480253281e-23
	.float 1.2520616447310357e-33, 1.2520616447310357e-33, 1.0706760993570628e-23, 1.0810157781278851e-23
	.float 1.070342963396788e-23, 1.258080267642742e-33, 1.258080267642742e-33, 1.0861859725007036e-23
	.float 1.096525651271526e-23, 1.0858526787682477e-23, 1.2640988905544483e-33, 1.2640988905544483e-33
	.float 1.1016958456443444e-23, 1.1120355244151668e-23, 1.1013623941397075e-23, 1.2701175134661545e-33
	.float 1.2701175134661545e-33, 1.1172057187879853e-23, 1.1275453975588076e-23, 1.1168721095111673e-23
	.float 1.2761361363778608e-33, 1.2761361363778608e-33, 1.1327155919316261e-23, 1.1430552707024484e-23
	.float 1.1323818248826271e-23, 1.282154759289567e-33, 1.282154759289567e-33, 1.148225465075267e-23
	.float 1.1585651438460893e-23, 1.1478915402540869e-23, 1.2881733822012734e-33, 1.2881733822012734e-33
	.float 1.1637353382189078e-23, 1.1740750169897301e-23, 1.1634012556255467e-23, 1.2941920051129796e-33
	.float 1.2941920051129796e-33, 1.1792452113625486e-23, 1.189584890133371e-23, 1.1789109709970065e-23
	.float 1.3002106280246859e-33, 1.3002106280246859e-33, 1.1947550845061895e-23, 1.2050947632770118e-23
	.float 1.1944206863684663e-23, 1.3062292509363922e-33, 1.3062292509363922e-33, 1.2102649576498303e-23
	.float 1.2206046364206526e-23, 1.209930401739926e-23, 1.3122478738480984e-33, 1.3122478738480984e-33
	.float 1.2257748307934711e-23, 1.2361145095642934e-23, 1.2254401171113858e-23, 1.3182664967598047e-33
	.float 1.3182664967598047e-33, 1.241284703937112e-23, 1.2516243827079343e-23, 1.2409498324828456e-23
	.float 1.324285119671511e-33, 1.324285119671511e-33, 1.2567945770807528e-23, 1.2671342558515751e-23
	.float 1.2564595478543054e-23, 1.3303037425832172e-33, 1.3303037425832172e-33, 1.2723044502243936e-23
	.float 1.282644128995216e-23, 1.2719692632257652e-23, 1.3363223654949235e-33, 1.3363223654949235e-33
	.float 1.2878143233680345e-23, 1.2981540021388568e-23, 1.287478978597225e-23, 1.3423409884066298e-33
	.float 1.3423409884066298e-33, 1.3033241965116753e-23, 1.3136638752824976e-23, 1.3029886939686848e-23
	.float 1.348359611318336e-33, 1.348359611318336e-33, 1.3188340696553161e-23, 1.3348585167674326e-23
	.float 1.3184984093401446e-23, 1.3543782342300423e-33, 1.3543782342300423e-33, 1.3451989055130697e-23
	.float 1.3658782630547143e-23, 1.3445272693383645e-23, 1.3603968571417486e-33, 1.3603968571417486e-33
	.float 1.3762186518003513e-23, 1.396898009341996e-23, 1.375546700081284e-23, 1.3664154800534549e-33
	.float 1.3664154800534549e-33, 1.407238398087633e-23, 1.4279177556292776e-23, 1.4065661308242037e-23
	.float 1.3724341029651611e-33, 1.3724341029651611e-33, 1.4382581443749147e-23, 1.4589375019165593e-23
	.float 1.4375855615671232e-23, 1.3784527258768674e-33, 1.3784527258768674e-33, 1.4692778906621963e-23
	.float 1.489957248203841e-23, 1.4686049923100428e-23, 1.3844713487885737e-33, 1.3844713487885737e-33
	.float 1.500297636949478e-23, 1.5209769944911227e-23, 1.4996244230529624e-23, 1.39048997170028e-33
	.float 1.39048997170028e-33, 1.5313173832367597e-23, 1.5519967407784043e-23, 1.530643853795882e-23
	.float 1.3965085946119862e-33, 1.3965085946119862e-33, 1.5623371295240414e-23, 1.583016487065686e-23
	.float 1.5616632845388016e-23, 1.4025272175236925e-33, 1.4025272175236925e-33, 1.593356875811323e-23
	.float 1.6140362333529677e-23, 1.592682715281721e-23, 1.4085458404353988e-33, 1.4085458404353988e-33
	.float 1.6243766220986047e-23, 1.6450559796402493e-23, 1.6237021460246407e-23, 1.414564463347105e-33
	.float 1.414564463347105e-33, 1.6553963683858864e-23, 1.676075725927531e-23, 1.6547215767675603e-23
	.float 1.4205830862588113e-33, 1.4205830862588113e-33, 1.686416114673168e-23, 1.7070954722148127e-23
	.float 1.68574100751048e-23, 1.4266017091705176e-33, 1.4266017091705176e-33, 1.7174358609604497e-23
	.float 1.7381152185020943e-23, 1.7167604382533995e-23, 1.4326203320822238e-33, 1.4326203320822238e-33
	.float 1.7484556072477314e-23, 1.769134964789376e-23, 1.747779868996319e-23, 1.4386389549939301e-33
	.float 1.4386389549939301e-33, 1.779475353535013e-23, 1.8001547110766577e-23, 1.7787992997392386e-23
	.float 1.4446575779056364e-33, 1.4446575779056364e-33, 1.8104950998222947e-23, 1.8311744573639394e-23
	.float 1.8098187304821582e-23, 1.4506762008173426e-33, 1.4506762008173426e-33, 1.8415148461095764e-23
	.float 1.862194203651221e-23, 1.8408381612250778e-23, 1.4566948237290489e-33, 1.4566948237290489e-33
	.float 1.872534592396858e-23, 1.8932139499385027e-23, 1.8718575919679974e-23, 1.4627134466407552e-33
	.float 1.4627134466407552e-33, 1.9035543386841397e-23, 1.9242336962257844e-23, 1.902877022710917e-23
	.float 1.4687320695524615e-33, 1.4687320695524615e-33, 1.9345740849714214e-23, 1.955253442513066e-23
	.float 1.9338964534538365e-23, 1.4747506924641677e-33, 1.4747506924641677e-33, 1.965593831258703e-23
	.float 1.9862731888003477e-23, 1.964915884196756e-23, 1.480769315375874e-33, 1.480769315375874e-33
	.float 1.9966135775459847e-23, 2.0172929350876294e-23, 1.9959353149396757e-23, 1.4867879382875803e-33
	.float 1.4867879382875803e-33, 2.0276333238332664e-23, 2.048312681374911e-23, 2.0269547456825953e-23
	.float 1.4928065611992865e-33, 1.4928065611992865e-33
.global lbl_8046ACB0
lbl_8046ACB0:
	.float 6.922414413764596e-43, 2.802596928649634e-44, 0.0, 0.0
	.float -6.490500595896544e-39, 1.3844828827529193e-41, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 1.401298464324817e-45
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 4.056604685276138e-15, 4.112115412990922e-15, 4.054243157419193e-15
	.float 3.2038718515593934e-28, 3.2038718515593934e-28, 4.139872682672446e-15, 4.19538341038723e-15
	.float 4.1375103077825534e-15, 3.2196493104050567e-28, 3.2196493104050567e-28, 4.223140680068753e-15
	.float 4.2786514077835375e-15, 4.220777458145914e-15, 3.23542676925072e-28, 3.23542676925072e-28
	.float 4.306408677465061e-15, 4.361919405179845e-15, 4.304044608509274e-15, 3.2512042280963833e-28
	.float 3.2512042280963833e-28, 4.3896766748613685e-15, 4.445187402576153e-15, 4.3873117588726345e-15
	.float 3.2669816869420466e-28, 3.2669816869420466e-28, 4.472944672257676e-15, 4.52845539997246e-15
	.float 4.470578909235995e-15, 3.28275914578771e-28, 3.28275914578771e-28, 4.556212669653984e-15
	.float 4.611723397368768e-15, 4.553846059599355e-15, 3.298536604633373e-28, 3.298536604633373e-28
	.float 4.639480667050291e-15, 4.6949913947650756e-15, 4.637113209962716e-15, 3.3143140634790364e-28
	.float 3.3143140634790364e-28, 4.722748664446599e-15, 4.778259392161383e-15, 4.720380360326076e-15
	.float 3.3300915223246997e-28, 3.3300915223246997e-28, 4.806016661842907e-15, 4.861527389557691e-15
	.float 4.803647510689436e-15, 3.345868981170363e-28, 3.345868981170363e-28, 4.889284659239214e-15
	.float 4.9447953869539985e-15, 4.886914661052797e-15, 3.3616464400160263e-28, 3.3616464400160263e-28
	.float 4.972552656635522e-15, 5.028063384350306e-15, 4.970181811416157e-15, 3.3774238988616895e-28
	.float 3.3774238988616895e-28, 5.0558206540318295e-15, 5.111331381746614e-15, 5.0534489617795175e-15
	.float 3.393201357707353e-28, 3.393201357707353e-28, 5.139088651428137e-15, 5.194599379142921e-15
	.float 5.136716112142878e-15, 3.408978816553016e-28, 3.408978816553016e-28, 5.222356648824445e-15
	.float 5.277867376539229e-15, 5.219983262506238e-15, 3.4247562753986794e-28, 3.4247562753986794e-28
	.float 5.305624646220752e-15, 5.3611353739355366e-15, 5.3032504128695986e-15, 3.4405337342443427e-28
	.float 3.4405337342443427e-28, 5.38889264361706e-15, 5.444403371331844e-15, 5.386517563232959e-15
	.float 3.456311193090006e-28, 3.456311193090006e-28, 5.4721606410133676e-15, 5.527671368728152e-15
	.float 5.469784713596319e-15, 3.4720886519356692e-28, 3.4720886519356692e-28, 5.555428638409675e-15
	.float 5.6109393661244594e-15, 5.55305186395968e-15, 3.4878661107813325e-28, 3.4878661107813325e-28
	.float 5.638696635805983e-15, 5.694207363520767e-15, 5.63631901432304e-15, 3.503643569626996e-28
	.float 3.503643569626996e-28, 5.7219646332022905e-15, 5.777475360917075e-15, 5.7195861646864004e-15
	.float 3.519421028472659e-28, 3.519421028472659e-28, 5.805232630598598e-15, 5.860743358313382e-15
	.float 5.802853315049761e-15, 3.5351984873183224e-28, 3.5351984873183224e-28, 5.888500627994906e-15
	.float 5.94401135570969e-15, 5.886120465413121e-15, 3.5509759461639857e-28, 3.5509759461639857e-28
	.float 5.971768625391213e-15, 6.0272793531059975e-15, 5.9693876157764815e-15, 3.566753405009649e-28
	.float 3.566753405009649e-28, 6.055036622787521e-15, 6.110547350502305e-15, 6.052654766139842e-15
	.float 3.5825308638553122e-28, 3.5825308638553122e-28, 6.1383046201838286e-15, 6.193815347898613e-15
	.float 6.135921916503202e-15, 3.5983083227009755e-28, 3.5983083227009755e-28, 6.221572617580136e-15
	.float 6.2770833452949204e-15, 6.2191890668665626e-15, 3.614085781546639e-28, 3.614085781546639e-28
	.float 6.304840614976444e-15, 6.360351342691228e-15, 6.302456217229923e-15, 3.629863240392302e-28
	.float 3.629863240392302e-28, 6.3881086123727514e-15, 6.443619340087536e-15, 6.385723367593283e-15
	.float 3.6456406992379654e-28, 3.6456406992379654e-28, 6.471376609769059e-15, 6.526887337483843e-15
	.float 6.468990517956644e-15, 3.6614181580836287e-28, 3.6614181580836287e-28, 6.554644607165367e-15
	.float 6.610155334880151e-15, 6.552257668320004e-15, 3.677195616929292e-28, 3.677195616929292e-28
	.float 6.637912604561674e-15, 6.6934233322764585e-15, 6.6355248186833644e-15, 3.6929730757749552e-28
	.float 3.6929730757749552e-28, 6.721180601957982e-15, 6.776691329672766e-15, 6.718791969046725e-15
	.float 3.7087505346206185e-28, 3.7087505346206185e-28, 6.8044485993542896e-15, 6.859959327069074e-15
	.float 6.802059119410085e-15, 3.724527993466282e-28, 3.724527993466282e-28, 6.887716596750597e-15
	.float 6.943227324465381e-15, 6.8853262697734455e-15, 3.740305452311945e-28, 3.740305452311945e-28
	.float 6.970984594146905e-15, 7.026495321861689e-15, 6.968593420136806e-15, 3.7560829111576084e-28
	.float 3.7560829111576084e-28, 7.0542525915432124e-15, 7.114099280914991e-15, 7.051860570500166e-15
	.float 3.7718603700032717e-28, 3.7718603700032717e-28, 7.169613820278038e-15, 7.280635275707607e-15
	.float 7.164828084126051e-15, 3.787637828848935e-28, 3.787637828848935e-28, 7.336149815070653e-15
	.float 7.447171270500222e-15, 7.331362384852772e-15, 3.803415287694598e-28, 3.803415287694598e-28
	.float 7.502685809863269e-15, 7.613707265292837e-15, 7.497896685579493e-15, 3.8191927465402615e-28
	.float 3.8191927465402615e-28, 7.669221804655884e-15, 7.780243260085452e-15, 7.664430986306214e-15
	.float 3.834970205385925e-28, 3.834970205385925e-28, 7.835757799448499e-15, 7.946779254878068e-15
	.float 7.830965287032934e-15, 3.850747664231588e-28, 3.850747664231588e-28, 8.002293794241114e-15
	.float 8.113315249670683e-15, 7.997499587759655e-15, 3.8665251230772514e-28, 3.8665251230772514e-28
	.float 8.16882978903373e-15, 8.279851244463298e-15, 8.164033888486376e-15, 3.8823025819229146e-28
	.float 3.8823025819229146e-28, 8.335365783826345e-15, 8.446387239255913e-15, 8.330568189213097e-15
	.float 3.898080040768578e-28, 3.898080040768578e-28, 8.50190177861896e-15, 8.612923234048529e-15
	.float 8.497102489939817e-15, 3.913857499614241e-28, 3.913857499614241e-28, 8.668437773411575e-15
	.float 8.779459228841144e-15, 8.663636790666538e-15, 3.9296349584599045e-28, 3.9296349584599045e-28
	.float 8.83497376820419e-15, 8.945995223633759e-15, 8.830171091393259e-15, 3.945412417305568e-28
	.float 3.945412417305568e-28, 9.001509762996806e-15, 9.112531218426374e-15, 8.99670539211998e-15
	.float 3.961189876151231e-28, 3.961189876151231e-28, 9.168045757789421e-15, 9.27906721321899e-15
	.float 9.1632396928467e-15, 3.9769673349968944e-28, 3.9769673349968944e-28, 9.334581752582036e-15
	.float 9.445603208011605e-15, 9.329773993573421e-15, 3.9927447938425576e-28, 3.9927447938425576e-28
	.float 9.501117747374652e-15, 9.61213920280422e-15, 9.496308294300142e-15, 4.008522252688221e-28
	.float 4.008522252688221e-28, 9.667653742167267e-15, 9.778675197596835e-15, 9.662842595026862e-15
	.float 4.024299711533884e-28, 4.024299711533884e-28, 9.834189736959882e-15, 9.94521119238945e-15
	.float 9.829376895753583e-15, 4.0411865060275145e-28, 4.0411865060275145e-28, 1.0000725731752497e-14
	.float 1.0111747187182066e-14, 9.995911196480304e-15, 4.072741423718841e-28, 4.072741423718841e-28
	.float 1.0167261726545113e-14, 1.0278283181974681e-14, 1.0162445497207025e-14, 4.104296341410168e-28
	.float 4.104296341410168e-28, 1.0333797721337728e-14, 1.0444819176767296e-14, 1.0328979797933745e-14
	.float 4.135851259101494e-28, 4.135851259101494e-28, 1.0500333716130343e-14, 1.0611355171559912e-14
	.float 1.0495514098660466e-14, 4.167406176792821e-28, 4.167406176792821e-28, 1.0666869710922958e-14
	.float 1.0777891166352527e-14, 1.0662048399387187e-14, 4.198961094484147e-28, 4.198961094484147e-28
	.float 1.0833405705715574e-14, 1.0944427161145142e-14, 1.0828582700113908e-14, 4.230516012175474e-28
	.float 4.230516012175474e-28, 1.0999941700508189e-14, 1.1110963155937757e-14, 1.0995117000840628e-14
	.float 4.2620709298668005e-28, 4.2620709298668005e-28, 1.1166477695300804e-14, 1.1277499150730372e-14
	.float 1.1161651301567349e-14, 4.293625847558127e-28, 4.293625847558127e-28, 1.133301369009342e-14
	.float 1.1444035145522988e-14, 1.132818560229407e-14, 4.325180765249454e-28, 4.325180765249454e-28
	.float 1.1499549684886035e-14, 1.1610571140315603e-14, 1.149471990302079e-14, 4.35673568294078e-28
	.float 4.35673568294078e-28, 1.166608567967865e-14, 1.1777107135108218e-14, 1.1661254203747511e-14
	.float 4.388290600632107e-28, 4.388290600632107e-28, 1.1832621674471265e-14, 1.1943643129900833e-14
	.float 1.1827788504474232e-14, 4.419845518323433e-28, 4.419845518323433e-28, 1.199915766926388e-14
	.float 1.2110179124693449e-14, 1.1994322805200953e-14, 4.45140043601476e-28, 4.45140043601476e-28
	.float 1.2165693664056496e-14, 1.2276715119486064e-14, 1.2160857105927673e-14, 4.4829553537060865e-28
	.float 4.4829553537060865e-28, 1.2332229658849111e-14, 1.2443251114278679e-14, 1.2327391406654394e-14
	.float 4.514510271397413e-28, 4.514510271397413e-28, 1.2498765653641726e-14, 1.2609787109071294e-14
	.float 1.2493925707381115e-14, 4.54606518908874e-28, 4.54606518908874e-28, 1.2665301648434341e-14
	.float 1.277632310386391e-14, 1.2660460008107836e-14, 4.577620106780066e-28, 4.577620106780066e-28
	.float 1.2831837643226957e-14, 1.2942859098656525e-14, 1.2826994308834556e-14, 4.609175024471393e-28
	.float 4.609175024471393e-28, 1.2998373638019572e-14, 1.310939509344914e-14, 1.2993528609561277e-14
	.float 4.640729942162719e-28, 4.640729942162719e-28, 1.3164909632812187e-14, 1.3275931088241755e-14
	.float 1.3160062910287998e-14, 4.672284859854046e-28, 4.672284859854046e-28, 1.3331445627604802e-14
	.float 1.344246708303437e-14, 1.3326597211014719e-14, 4.7038397775453725e-28, 4.7038397775453725e-28
	.float 1.3497981622397418e-14, 1.3609003077826986e-14, 1.349313151174144e-14, 4.735394695236699e-28
	.float 4.735394695236699e-28, 1.3664517617190033e-14, 1.3775539072619601e-14, 1.365966581246816e-14
	.float 4.766949612928026e-28, 4.766949612928026e-28, 1.3831053611982648e-14, 1.3942075067412216e-14
	.float 1.3826200113194881e-14, 4.798504530619352e-28, 4.798504530619352e-28, 1.3997589606775263e-14
	.float 1.4108611062204832e-14, 1.3992734413921602e-14, 4.830059448310679e-28, 4.830059448310679e-28
	.float 1.4164125601567878e-14, 1.433943939879289e-14, 1.4159268714648322e-14, 4.861614366002005e-28
	.float 4.861614366002005e-28, 1.4450468477518984e-14, 1.467251138837812e-14, 1.4440751315548082e-14
	.float 4.893169283693332e-28, 4.893169283693332e-28, 1.4783540467104214e-14, 1.500558337796335e-14
	.float 1.4773819917001524e-14, 4.9247242013846585e-28, 4.9247242013846585e-28, 1.5116612456689445e-14
	.float 1.533865536754858e-14, 1.5106888518454965e-14, 4.956279119075985e-28, 4.956279119075985e-28
	.float 1.5449684446274675e-14, 1.5671727357133812e-14, 1.5439957119908407e-14, 4.987834036767312e-28
	.float 4.987834036767312e-28, 1.5782756435859906e-14, 1.6004799346719042e-14, 1.5773025721361848e-14
	.float 5.019388954458638e-28, 5.019388954458638e-28, 1.6115828425445136e-14, 1.6337871336304273e-14
	.float 1.610609432281529e-14, 5.050943872149965e-28, 5.050943872149965e-28, 1.6448900415030367e-14
	.float 1.6670943325889503e-14, 1.643916292426873e-14, 5.082498789841291e-28, 5.082498789841291e-28
	.float 1.6781972404615597e-14, 1.7004015315474734e-14, 1.6772231525722173e-14, 5.114053707532618e-28
	.float 5.114053707532618e-28, 1.7115044394200828e-14, 1.7337087305059964e-14, 1.7105300127175614e-14
	.float 5.1456086252239445e-28, 5.1456086252239445e-28, 1.7448116383786058e-14, 1.7670159294645195e-14
	.float 1.7438368728629056e-14, 5.177163542915271e-28, 5.177163542915271e-28, 1.778118837337129e-14
	.float 1.8003231284230425e-14, 1.7771437330082497e-14, 5.208718460606598e-28, 5.208718460606598e-28
	.float 1.811426036295652e-14, 1.8336303273815656e-14, 1.810450593153594e-14, 5.240273378297924e-28
	.float 5.240273378297924e-28, 1.844733235254175e-14, 1.8669375263400886e-14, 1.843757453298938e-14
	.float 5.271828295989251e-28, 5.271828295989251e-28, 1.878040434212698e-14, 1.9002447252986117e-14
	.float 1.877064313444282e-14, 5.303383213680577e-28, 5.303383213680577e-28, 1.911347633171221e-14
	.float 1.9335519242571347e-14, 1.9103711735896263e-14, 5.334938131371904e-28, 5.334938131371904e-28
	.float 1.944654832129744e-14, 1.9668591232156578e-14, 1.9436780337349704e-14, 5.36649304906323e-28
	.float 5.36649304906323e-28, 1.977962031088267e-14, 2.0001663221741808e-14, 1.9769848938803146e-14
	.float 5.398047966754557e-28, 5.398047966754557e-28, 2.0112692300467902e-14, 2.033473521132704e-14
	.float 2.0102917540256587e-14, 5.429602884445884e-28, 5.429602884445884e-28, 2.0445764290053133e-14
	.float 2.066780720091227e-14, 2.043598614171003e-14, 5.46115780213721e-28, 5.46115780213721e-28
	.float 2.0778836279638363e-14, 2.10008791904975e-14, 2.076905474316347e-14, 5.492712719828537e-28
	.float 5.492712719828537e-28, 2.1111908269223593e-14, 2.133395118008273e-14, 2.1102123344616912e-14
	.float 5.524267637519863e-28, 5.524267637519863e-28, 2.1444980258808824e-14, 2.166702316966796e-14
	.float 2.1435191946070353e-14, 5.55582255521119e-28, 5.55582255521119e-28, 2.1778052248394054e-14
	.float 2.200009515925319e-14, 2.1768260547523795e-14, 5.587377472902516e-28, 5.587377472902516e-28
	.float 2.2111124237979285e-14, 2.2333167148838422e-14, 2.2101329148977236e-14, 5.618932390593843e-28
	.float 5.618932390593843e-28, 2.2444196227564515e-14, 2.2666239138423652e-14, 2.2434397750430678e-14
	.float 5.65048730828517e-28, 5.65048730828517e-28, 2.2777268217149746e-14, 2.2999311128008883e-14
	.float 2.276746635188412e-14, 5.682042225976496e-28, 5.682042225976496e-28, 2.3110340206734976e-14
	.float 2.3332383117594113e-14, 2.310053495333756e-14, 5.713597143667823e-28, 5.713597143667823e-28
	.float 2.3443412196320207e-14, 2.3665455107179344e-14, 2.3433603554791002e-14, 5.745152061359149e-28
	.float 5.745152061359149e-28, 2.3776484185905437e-14, 2.3998527096764574e-14, 2.3766672156244444e-14
	.float 5.776706979050476e-28, 5.776706979050476e-28, 2.4109556175490668e-14, 2.4331599086349805e-14
	.float 2.4099740757697885e-14, 5.808261896741802e-28, 5.808261896741802e-28, 2.4442628165075898e-14
	.float 2.4664671075935035e-14, 2.4432809359151327e-14, 5.839816814433129e-28, 5.839816814433129e-28
	.float 2.477570015466113e-14, 2.4997743065520266e-14, 2.4765877960604768e-14, 5.8713717321244555e-28
	.float 5.8713717321244555e-28, 2.510877214424636e-14, 2.5330815055105496e-14, 2.509894656205821e-14
	.float 5.902926649815782e-28, 5.902926649815782e-28, 2.544184413383159e-14, 2.5663887044690727e-14
	.float 2.543201516351165e-14, 5.934481567507109e-28, 5.934481567507109e-28, 2.577491612341682e-14
	.float 2.5996959034275957e-14, 2.5765083764965092e-14, 5.966036485198435e-28, 5.966036485198435e-28
	.float 2.610798811300205e-14, 2.6330031023861188e-14, 2.6098152366418534e-14, 5.997591402889762e-28
	.float 5.997591402889762e-28, 2.644106010258728e-14, 2.6663103013446418e-14, 2.6431220967871975e-14
	.float 6.029146320581088e-28, 6.029146320581088e-28, 2.6774132092172512e-14, 2.699617500303165e-14
	.float 2.6764289569325417e-14, 6.060701238272415e-28, 6.060701238272415e-28, 2.7107204081757742e-14
	.float 2.732924699261688e-14, 2.7097358170778858e-14, 6.0922561559637415e-28, 6.0922561559637415e-28
	.float 2.7440276071342973e-14, 2.766231898220211e-14, 2.74304267722323e-14, 6.123811073655068e-28
	.float 6.123811073655068e-28, 2.7773348060928203e-14, 2.799539097178734e-14, 2.776349537368574e-14
	.float 6.155365991346395e-28, 6.155365991346395e-28, 2.8106420050513434e-14, 2.832846296137257e-14
	.float 2.8096563975139183e-14, 6.186920909037721e-28, 6.186920909037721e-28, 2.845727464979332e-14
	.float 2.8901360471511595e-14, 2.843755572278124e-14, 6.218475826729048e-28, 6.218475826729048e-28
	.float 2.912341862896378e-14, 2.9567504450682056e-14, 2.9103692925688124e-14, 6.250030744420374e-28
	.float 6.250030744420374e-28, 2.978956260813424e-14, 3.0233648429852517e-14, 2.9769830128595007e-14
	.float 6.281585662111701e-28, 6.281585662111701e-28, 3.0455706587304704e-14, 3.089979240902298e-14
	.float 3.043596733150189e-14, 6.3131405798030275e-28, 6.3131405798030275e-28, 3.1121850566475165e-14
	.float 3.156593638819344e-14, 3.110210453440877e-14, 6.344695497494354e-28, 6.344695497494354e-28
	.float 3.1787994545645626e-14, 3.22320803673639e-14, 3.1768241737315656e-14, 6.376250415185681e-28
	.float 6.376250415185681e-28, 3.245413852481609e-14, 3.289822434653436e-14, 3.243437894022254e-14
	.float 6.407805332877007e-28, 6.407805332877007e-28, 3.312028250398655e-14, 3.356436832570482e-14
	.float 3.310051614312942e-14, 6.439360250568334e-28, 6.439360250568334e-28, 3.378642648315701e-14
	.float 3.423051230487528e-14, 3.3766653346036304e-14, 6.47091516825966e-28, 6.47091516825966e-28
	.float 3.445257046232747e-14, 3.4896656284045743e-14, 3.443279054894319e-14, 6.502470085950987e-28
	.float 6.502470085950987e-28, 3.511871444149793e-14, 3.5562800263216204e-14, 3.509892775185007e-14
	.float 6.5340250036423135e-28, 6.5340250036423135e-28, 3.578485842066839e-14, 3.6228944242386665e-14
	.float 3.5765064954756953e-14, 6.56557992133364e-28, 6.56557992133364e-28, 3.645100239983885e-14
	.float 3.6895088221557126e-14, 3.6431202157663836e-14, 6.597134839024967e-28, 6.597134839024967e-28
	.float 3.7117146379009314e-14, 3.756123220072759e-14, 3.709733936057072e-14, 6.628689756716293e-28
	.float 6.628689756716293e-28, 3.7783290358179775e-14, 3.822737617989805e-14, 3.77634765634776e-14
	.float 6.66024467440762e-28, 6.66024467440762e-28, 3.8449434337350236e-14, 3.889352015906851e-14
	.float 3.8429613766384485e-14, 6.691799592098946e-28, 6.691799592098946e-28, 3.9115578316520697e-14
	.float 3.955966413823897e-14, 3.909575096929137e-14, 6.723354509790273e-28, 6.723354509790273e-28
	.float 3.978172229569116e-14, 4.022580811740943e-14, 3.976188817219825e-14, 6.7549094274815995e-28
	.float 6.7549094274815995e-28, 4.044786627486162e-14, 4.089195209657989e-14, 4.0428025375105134e-14
	.float 6.786464345172926e-28, 6.786464345172926e-28, 4.111401025403208e-14, 4.155809607575035e-14
	.float 4.1094162578012017e-14, 6.818019262864253e-28, 6.818019262864253e-28, 4.178015423320254e-14
	.float 4.2224240054920814e-14, 4.17602997809189e-14, 6.849574180555579e-28, 6.849574180555579e-28
	.float 4.2446298212373e-14, 4.2890384034091275e-14, 4.242643698382578e-14, 6.881129098246906e-28
	.float 6.881129098246906e-28, 4.311244219154346e-14, 4.3556528013261736e-14, 4.3092574186732666e-14
	.float 6.912684015938232e-28, 6.912684015938232e-28, 4.3778586170713923e-14, 4.42226719924322e-14
	.float 4.375871138963955e-14, 6.944238933629559e-28, 6.944238933629559e-28, 4.4444730149884384e-14
	.float 4.488881597160266e-14, 4.442484859254643e-14, 6.9757938513208855e-28, 6.9757938513208855e-28
	.float 4.5110874129054845e-14, 4.555495995077312e-14, 4.5090985795453314e-14, 7.007348769012212e-28
	.float 7.007348769012212e-28, 4.5777018108225306e-14, 4.622110392994358e-14, 4.57571229983602e-14
	.float 7.038903686703539e-28, 7.038903686703539e-28, 4.644316208739577e-14, 4.688724790911404e-14
	.float 4.642326020126708e-14, 7.070458604394865e-28, 7.070458604394865e-28, 4.710930606656623e-14
	.float 4.75533918882845e-14, 4.7089397404173963e-14, 7.102013522086192e-28, 7.102013522086192e-28
	.float 4.777545004573669e-14, 4.821953586745496e-14, 4.7755534607080846e-14, 7.133568439777518e-28
	.float 7.133568439777518e-28, 4.844159402490715e-14, 4.8885679846625424e-14, 4.842167180998773e-14
	.float 7.165123357468845e-28, 7.165123357468845e-28, 4.910773800407761e-14, 4.9551823825795885e-14
	.float 4.908780901289461e-14, 7.196678275160171e-28, 7.196678275160171e-28, 4.977388198324807e-14
	.float 5.0217967804966346e-14, 4.9753946215801495e-14, 7.228233192851498e-28, 7.228233192851498e-28
	.float 5.0440025962418533e-14, 5.0884111784136807e-14, 5.042008341870838e-14, 7.259788110542825e-28
	.float 7.259788110542825e-28, 5.1106169941588994e-14, 5.155025576330727e-14, 5.108622062161526e-14
	.float 7.291343028234151e-28, 7.291343028234151e-28, 5.1772313920759455e-14, 5.221639974247773e-14
	.float 5.1752357824522144e-14, 7.322897945925478e-28, 7.322897945925478e-28, 5.2438457899929916e-14
	.float 5.288254372164819e-14, 5.2418495027429027e-14, 7.354452863616804e-28, 7.354452863616804e-28
	.float 5.310460187910038e-14, 5.354868770081865e-14, 5.308463223033591e-14, 7.386007781308131e-28
	.float 7.386007781308131e-28, 5.377074585827084e-14, 5.421483167998911e-14, 5.375076943324279e-14
	.float 7.417562698999457e-28, 7.417562698999457e-28, 5.44368898374413e-14, 5.488097565915957e-14
	.float 5.4416906636149676e-14, 7.449117616690784e-28, 7.449117616690784e-28, 5.510303381661176e-14
	.float 5.5547119638330034e-14, 5.508304383905656e-14, 7.480672534382111e-28, 7.480672534382111e-28
	.float 5.576917779578222e-14, 5.6213263617500495e-14, 5.574918104196344e-14, 7.512227452073437e-28
	.float 7.512227452073437e-28, 5.643532177495268e-14, 5.69153963325339e-14, 5.6415318244870324e-14
	.float 7.543782369764764e-28, 7.543782369764764e-28, 5.735951264743827e-14, 5.824768429087482e-14
	.float 5.73194920347464e-14, 7.57533728745609e-28, 7.57533728745609e-28, 5.869180060577919e-14
	.float 5.957997224921574e-14, 5.865176644056017e-14, 7.606892205147417e-28, 7.606892205147417e-28
	.float 6.002408856412011e-14, 6.091226020755666e-14, 5.998404084637393e-14, 7.638447122838743e-28
	.float 7.638447122838743e-28, 6.135637652246104e-14, 6.224454816589758e-14, 6.13163152521877e-14
	.float 7.67000204053007e-28, 7.67000204053007e-28, 6.268866448080196e-14, 6.35768361242385e-14
	.float 6.264858965800146e-14, 7.7015569582213965e-28, 7.7015569582213965e-28, 6.402095243914288e-14
	.float 6.490912408257943e-14, 6.398086406381523e-14, 7.733111875912723e-28, 7.733111875912723e-28
	.float 6.53532403974838e-14, 6.624141204092035e-14, 6.5313138469629e-14, 7.76466679360405e-28
	.float 7.76466679360405e-28, 6.668552835582472e-14, 6.757369999926127e-14, 6.664541287544276e-14
	.float 7.796221711295376e-28, 7.796221711295376e-28, 6.801781631416565e-14, 6.89059879576022e-14
	.float 6.797768728125653e-14, 7.827776628986703e-28, 7.827776628986703e-28, 6.935010427250657e-14
	.float 7.023827591594312e-14, 6.930996168707029e-14, 7.859331546678029e-28, 7.859331546678029e-28
	.float 7.068239223084749e-14, 7.157056387428404e-14, 7.064223609288406e-14, 7.890886464369356e-28
	.float 7.890886464369356e-28, 7.201468018918841e-14, 7.290285183262496e-14, 7.197451049869782e-14
	.float 7.9224413820606825e-28, 7.9224413820606825e-28, 7.334696814752933e-14, 7.423513979096588e-14
	.float 7.330678490451159e-14, 7.953996299752009e-28, 7.953996299752009e-28, 7.467925610587026e-14
	.float 7.55674277493068e-14, 7.463905931032536e-14, 7.985551217443336e-28, 7.985551217443336e-28
	.float 7.601154406421118e-14, 7.689971570764773e-14, 7.597133371613912e-14, 8.017106135134662e-28
	.float 8.017106135134662e-28, 7.73438320225521e-14, 7.823200366598865e-14, 7.730360812195289e-14
	.float 8.048661052825989e-28, 8.048661052825989e-28, 7.867611998089302e-14, 7.956429162432957e-14
	.float 7.863588252776665e-14, 8.08249627157147e-28, 8.08249627157147e-28, 8.000840793923394e-14
	.float 8.089657958267049e-14, 7.996815693358042e-14, 8.145606106954123e-28, 8.145606106954123e-28
	.float 8.134069589757487e-14, 8.222886754101141e-14, 8.130043133939419e-14, 8.208715942336776e-28
	.float 8.208715942336776e-28, 8.267298385591579e-14, 8.356115549935234e-14, 8.263270574520795e-14
	.float 8.27182577771943e-28, 8.27182577771943e-28, 8.400527181425671e-14, 8.489344345769326e-14
	.float 8.396498015102172e-14, 8.334935613102082e-28, 8.334935613102082e-28, 8.533755977259763e-14
	.float 8.622573141603418e-14, 8.529725455683548e-14, 8.398045448484736e-28, 8.398045448484736e-28
	.float 8.666984773093855e-14, 8.75580193743751e-14, 8.662952896264925e-14, 8.461155283867389e-28
	.float 8.461155283867389e-28, 8.800213568927948e-14, 8.889030733271602e-14, 8.796180336846302e-14
	.float 8.524265119250042e-28, 8.524265119250042e-28, 8.93344236476204e-14, 9.022259529105695e-14
	.float 8.929407777427678e-14, 8.587374954632695e-28, 8.587374954632695e-28, 9.066671160596132e-14
	.float 9.155488324939787e-14, 9.062635218009055e-14, 8.650484790015348e-28, 8.650484790015348e-28
	.float 9.199899956430224e-14, 9.288717120773879e-14, 9.195862658590431e-14, 8.713594625398001e-28
	.float 8.713594625398001e-28, 9.333128752264316e-14, 9.421945916607971e-14, 9.329090099171808e-14
	.float 8.776704460780654e-28, 8.776704460780654e-28, 9.466357548098409e-14, 9.555174712442063e-14
	.float 9.462317539753184e-14, 8.839814296163308e-28, 8.839814296163308e-28, 9.599586343932501e-14
	.float 9.688403508276155e-14, 9.595544980334561e-14, 8.90292413154596e-28, 8.90292413154596e-28
	.float 9.732815139766593e-14, 9.821632304110248e-14, 9.728772420915938e-14, 8.966033966928614e-28
	.float 8.966033966928614e-28, 9.866043935600685e-14, 9.95486109994434e-14, 9.861999861497314e-14
	.float 9.029143802311267e-28, 9.029143802311267e-28, 9.999272731434777e-14, 1.0088089895778432e-13
	.float 9.995227302078691e-14, 9.09225363769392e-28, 9.09225363769392e-28, 1.013250152726887e-13
	.float 1.0221318691612524e-13, 1.0128454742660067e-13, 9.155363473076573e-28, 9.155363473076573e-28
	.float 1.0265730323102962e-13, 1.0354547487446616e-13, 1.0261682183241444e-13, 9.218473308459226e-28
	.float 9.218473308459226e-28, 1.0398959118937054e-13, 1.0487776283280709e-13, 1.039490962382282e-13
	.float 9.28158314384188e-28, 9.28158314384188e-28, 1.0532187914771146e-13, 1.0621005079114801e-13
	.float 1.0528137064404197e-13, 9.344692979224533e-28, 9.344692979224533e-28, 1.0665416710605238e-13
	.float 1.0754233874948893e-13, 1.0661364504985574e-13, 9.407802814607186e-28, 9.407802814607186e-28
	.float 1.079864550643933e-13, 1.0887462670782985e-13, 1.079459194556695e-13, 9.470912649989839e-28
	.float 9.470912649989839e-28, 1.0931874302273423e-13, 1.1020691466617077e-13, 1.0927819386148327e-13
	.float 9.534022485372492e-28, 9.534022485372492e-28, 1.1065103098107515e-13, 1.115392026245117e-13
	.float 1.1061046826729704e-13, 9.597132320755145e-28, 9.597132320755145e-28, 1.1198331893941607e-13
	.float 1.1287149058285262e-13, 1.119427426731108e-13, 9.660242156137798e-28, 9.660242156137798e-28
	.float 1.1331560689775699e-13, 1.1472071936077105e-13, 1.1327501707892457e-13, 9.723351991520451e-28
	.float 9.723351991520451e-28, 1.156089519905798e-13, 1.173852952774529e-13, 1.1552774524786064e-13
	.float 9.786461826903105e-28, 9.786461826903105e-28, 1.1827352790726164e-13, 1.2004987119413474e-13
	.float 1.1819229405948817e-13, 9.849571662285758e-28, 9.849571662285758e-28, 1.209381038239435e-13
	.float 1.2271444711081658e-13, 1.208568428711157e-13, 9.91268149766841e-28, 9.91268149766841e-28
	.float 1.2360267974062533e-13, 1.2537902302749843e-13, 1.2352139168274323e-13, 9.975791333051064e-28
	.float 9.975791333051064e-28, 1.2626725565730718e-13, 1.2804359894418027e-13, 1.2618594049437076e-13
	.float 1.0038901168433717e-27, 1.0038901168433717e-27, 1.2893183157398902e-13, 1.3070817486086211e-13
	.float 1.288504893059983e-13, 1.010201100381637e-27, 1.010201100381637e-27, 1.3159640749067086e-13
	.float 1.3337275077754396e-13, 1.3151503811762583e-13, 1.0165120839199023e-27, 1.0165120839199023e-27
	.float 1.342609834073527e-13, 1.360373266942258e-13, 1.3417958692925336e-13, 1.0228230674581677e-27
	.float 1.0228230674581677e-27, 1.3692555932403455e-13, 1.3870190261090765e-13, 1.368441357408809e-13
	.float 1.029134050996433e-27, 1.029134050996433e-27, 1.395901352407164e-13, 1.413664785275895e-13
	.float 1.3950868455250842e-13, 1.0354450345346983e-27, 1.0354450345346983e-27, 1.4225471115739824e-13
	.float 1.4403105444427133e-13, 1.4217323336413595e-13, 1.0417560180729636e-27, 1.0417560180729636e-27
	.float 1.4491928707408008e-13, 1.4669563036095318e-13, 1.4483778217576349e-13, 1.048067001611229e-27
	.float 1.048067001611229e-27, 1.4758386299076193e-13, 1.4936020627763502e-13, 1.4750233098739102e-13
	.float 1.0543779851494942e-27, 1.0543779851494942e-27, 1.5024843890744377e-13, 1.5202478219431687e-13
	.float 1.5016687979901855e-13, 1.0606889686877595e-27, 1.0606889686877595e-27, 1.5291301482412561e-13
	.float 1.546893581109987e-13, 1.5283142861064608e-13, 1.0669999522260249e-27, 1.0669999522260249e-27
	.float 1.5557759074080746e-13, 1.5735393402768055e-13, 1.554959774222736e-13, 1.0733109357642902e-27
	.float 1.0733109357642902e-27, 1.582421666574893e-13, 1.600185099443624e-13, 1.5816052623390114e-13
	.float 1.0796219193025555e-27, 1.0796219193025555e-27, 1.6090674257417115e-13, 1.6268308586104424e-13
	.float 1.6082507504552868e-13, 1.0859329028408208e-27, 1.0859329028408208e-27, 1.63571318490853e-13
	.float 1.6534766177772608e-13, 1.634896238571562e-13, 1.0922438863790861e-27, 1.0922438863790861e-27
	.float 1.6623589440753483e-13, 1.6801223769440793e-13, 1.6615417266878374e-13, 1.0985548699173514e-27
	.float 1.0985548699173514e-27, 1.6890047032421668e-13, 1.7067681361108977e-13, 1.6881872148041127e-13
	.float 1.1048658534556167e-27, 1.1048658534556167e-27, 1.7156504624089852e-13, 1.7334138952777162e-13
	.float 1.714832702920388e-13, 1.111176836993882e-27, 1.111176836993882e-27, 1.7422962215758037e-13
	.float 1.7600596544445346e-13, 1.7414781910366633e-13, 1.1174878205321474e-27, 1.1174878205321474e-27
	.float 1.768941980742622e-13, 1.786705413611353e-13, 1.7681236791529387e-13, 1.1237988040704127e-27
	.float 1.1237988040704127e-27, 1.7955877399094405e-13, 1.8133511727781715e-13, 1.794769167269214e-13
	.float 1.130109787608678e-27, 1.130109787608678e-27, 1.822233499076259e-13, 1.83999693194499e-13
	.float 1.8214146553854893e-13, 1.1364207711469433e-27, 1.1364207711469433e-27, 1.8488792582430774e-13
	.float 1.8666426911118084e-13, 1.8480601435017646e-13, 1.1427317546852086e-27, 1.1427317546852086e-27
	.float 1.8755250174098959e-13, 1.8932884502786268e-13, 1.87470563161804e-13, 1.149042738223474e-27
	.float 1.149042738223474e-27, 1.9021707765767143e-13, 1.9199342094454452e-13, 1.9013511197343153e-13
	.float 1.1553537217617392e-27, 1.1553537217617392e-27, 1.9288165357435327e-13, 1.9465799686122637e-13
	.float 1.9279966078505906e-13, 1.1616647053000046e-27, 1.1616647053000046e-27, 1.9554622949103512e-13
	.float 1.973225727779082e-13, 1.954642095966866e-13, 1.1679756888382699e-27, 1.1679756888382699e-27
	.float 1.9821080540771696e-13, 1.9998714869459006e-13, 1.9812875840831412e-13, 1.1742866723765352e-27
	.float 1.1742866723765352e-27, 2.008753813243988e-13, 2.026517246112719e-13, 2.0079330721994165e-13
	.float 1.1805976559148005e-27, 1.1805976559148005e-27, 2.0353995724108065e-13, 2.0531630052795374e-13
	.float 2.0345785603156918e-13, 1.1869086394530658e-27, 1.1869086394530658e-27, 2.062045331577625e-13
	.float 2.0798087644463559e-13, 2.0612240484319672e-13, 1.1932196229913311e-27, 1.1932196229913311e-27
	.float 2.0886910907444434e-13, 2.1064545236131743e-13, 2.0878695365482425e-13, 1.1995306065295964e-27
	.float 1.1995306065295964e-27, 2.1153368499112618e-13, 2.1331002827799928e-13, 2.1145150246645178e-13
	.float 1.2058415900678618e-27, 1.2058415900678618e-27, 2.1419826090780802e-13, 2.1597460419468112e-13
	.float 2.141160512780793e-13, 1.212152573606127e-27, 1.212152573606127e-27, 2.1686283682448987e-13
	.float 2.1863918011136296e-13, 2.1678060008970684e-13, 1.2184635571443924e-27, 1.2184635571443924e-27
	.float 2.195274127411717e-13, 2.213037560280448e-13, 2.1944514890133437e-13, 1.2247745406826577e-27
	.float 1.2247745406826577e-27, 2.2219198865785356e-13, 2.2396833194472665e-13, 2.221096977129619e-13
	.float 1.231085524220923e-27, 1.231085524220923e-27, 2.248565645745354e-13, 2.266329078614085e-13
	.float 2.2477424652458944e-13, 1.2373965077591883e-27, 1.2373965077591883e-27, 2.2766860553920243e-13
	.float 2.312212921129486e-13, 2.275039152292019e-13, 1.2437074912974536e-27, 1.2437074912974536e-27
	.float 2.329977573725661e-13, 2.365504439463123e-13, 2.3283301285245694e-13, 1.250018474835719e-27
	.float 1.250018474835719e-27, 2.383269092059298e-13, 2.41879595779676e-13, 2.38162110475712e-13
	.float 1.2563294583739843e-27, 1.2563294583739843e-27, 2.436560610392935e-13, 2.472087476130397e-13
	.float 2.4349120809896707e-13, 1.2626404419122496e-27, 1.2626404419122496e-27, 2.489852128726572e-13
	.float 2.5253789944640337e-13, 2.4882030572222213e-13, 1.2689514254505149e-27, 1.2689514254505149e-27
	.float 2.5431436470602087e-13, 2.5786705127976706e-13, 2.541494033454772e-13, 1.2752624089887802e-27
	.float 1.2752624089887802e-27, 2.5964351653938456e-13, 2.6319620311313074e-13, 2.5947850096873226e-13
	.float 1.2815733925270455e-27, 1.2815733925270455e-27, 2.6497266837274824e-13, 2.6852535494649443e-13
	.float 2.6480759859198733e-13, 1.2878843760653108e-27, 1.2878843760653108e-27, 2.7030182020611193e-13
	.float 2.738545067798581e-13, 2.701366962152424e-13, 1.2941953596035761e-27, 1.2941953596035761e-27
	.float 2.756309720394756e-13, 2.791836586132218e-13, 2.7546579383849745e-13, 1.3005063431418415e-27
	.float 1.3005063431418415e-27, 2.809601238728393e-13, 2.845128104465855e-13, 2.807948914617525e-13
	.float 1.3068173266801068e-27, 1.3068173266801068e-27, 2.86289275706203e-13, 2.898419622799492e-13
	.float 2.861239890850076e-13, 1.3131283102183721e-27, 1.3131283102183721e-27, 2.916184275395667e-13
	.float 2.9517111411331287e-13, 2.9145308670826264e-13, 1.3194392937566374e-27, 1.3194392937566374e-27
	.float 2.9694757937293037e-13, 3.0050026594667656e-13, 2.967821843315177e-13, 1.3257502772949027e-27
	.float 1.3257502772949027e-27, 3.0227673120629406e-13, 3.0582941778004025e-13, 3.0211128195477277e-13
	.float 1.332061260833168e-27, 1.332061260833168e-27, 3.0760588303965775e-13, 3.1115856961340393e-13
	.float 3.0744037957802783e-13, 1.3383722443714333e-27, 1.3383722443714333e-27, 3.1293503487302143e-13
	.float 3.164877214467676e-13, 3.127694772012829e-13, 1.3446832279096987e-27, 1.3446832279096987e-27
	.float 3.182641867063851e-13, 3.218168732801313e-13, 3.1809857482453796e-13, 1.350994211447964e-27
	.float 1.350994211447964e-27, 3.235933385397488e-13, 3.27146025113495e-13, 3.23427672447793e-13
	.float 1.3573051949862293e-27, 1.3573051949862293e-27, 3.289224903731125e-13, 3.324751769468587e-13
	.float 3.287567700710481e-13, 1.3636161785244946e-27, 1.3636161785244946e-27, 3.342516422064762e-13
	.float 3.3780432878022237e-13, 3.3408586769430315e-13, 1.36992716206276e-27, 1.36992716206276e-27
	.float 3.3958079403983987e-13, 3.4313348061358606e-13, 3.394149653175582e-13, 1.3762381456010252e-27
	.float 1.3762381456010252e-27, 3.4490994587320356e-13, 3.4846263244694975e-13, 3.447440629408133e-13
	.float 1.3825491291392905e-27, 1.3825491291392905e-27, 3.5023909770656725e-13, 3.5379178428031344e-13
	.float 3.5007316056406834e-13, 1.3888601126775559e-27, 1.3888601126775559e-27, 3.5556824953993094e-13
	.float 3.591209361136771e-13, 3.554022581873234e-13, 1.3951710962158212e-27, 1.3951710962158212e-27
	.float 3.608974013732946e-13, 3.644500879470408e-13, 3.6073135581057847e-13, 1.4014820797540865e-27
	.float 1.4014820797540865e-27, 3.662265532066583e-13, 3.697792397804045e-13, 3.6606045343383353e-13
	.float 1.4077930632923518e-27, 1.4077930632923518e-27, 3.71555705040022e-13, 3.751083916137682e-13
	.float 3.713895510570886e-13, 1.4141040468306171e-27, 1.4141040468306171e-27, 3.768848568733857e-13
	.float 3.804375434471319e-13, 3.7671864868034366e-13, 1.4204150303688824e-27, 1.4204150303688824e-27
	.float 3.822140087067494e-13, 3.8576669528049556e-13, 3.820477463035987e-13, 1.4267260139071477e-27
	.float 1.4267260139071477e-27, 3.8754316054011306e-13, 3.9109584711385925e-13, 3.873768439268538e-13
	.float 1.433036997445413e-27, 1.433036997445413e-27, 3.9287231237347675e-13, 3.9642499894722294e-13
	.float 3.9270594155010885e-13, 1.4393479809836784e-27, 1.4393479809836784e-27, 3.9820146420684044e-13
	.float 4.0175415078058663e-13, 3.980350391733639e-13, 1.4456589645219437e-27, 1.4456589645219437e-27
	.float 4.0353061604020413e-13, 4.070833026139503e-13, 4.03364136796619e-13, 1.451969948060209e-27
	.float 1.451969948060209e-27, 4.088597678735678e-13, 4.12412454447314e-13, 4.0869323441987404e-13
	.float 1.4582809315984743e-27, 1.4582809315984743e-27, 4.141889197069315e-13, 4.177416062806777e-13
	.float 4.140223320431291e-13, 1.4645919151367396e-27, 1.4645919151367396e-27, 4.195180715402952e-13
	.float 4.230707581140414e-13, 4.1935142966638417e-13, 1.470902898675005e-27, 1.470902898675005e-27
	.float 4.248472233736589e-13, 4.2839990994740507e-13, 4.2468052728963923e-13, 1.4772138822132702e-27
	.float 1.4772138822132702e-27, 4.3017637520702257e-13, 4.3372906178076875e-13, 4.300096249128943e-13
	.float 1.4835248657515356e-27, 1.4835248657515356e-27, 4.3550552704038625e-13, 4.3905821361413244e-13
	.float 4.3533872253614936e-13, 1.4898358492898009e-27, 1.4898358492898009e-27, 4.4083467887374994e-13
	.float 4.4438736544749613e-13, 4.406678201594044e-13, 1.4961468328280662e-27, 1.4961468328280662e-27
	.float 4.4616383070711363e-13, 4.497165172808598e-13, 4.459969177826595e-13, 1.5024578163663315e-27
	.float 1.5024578163663315e-27, 4.514929825404773e-13, 4.553439873419829e-13, 4.5132601540591455e-13
	.float 1.5087687999045968e-27, 1.5087687999045968e-27, 4.588969178612179e-13, 4.660022910087103e-13
	.float 4.585628751718751e-13, 1.5150797834428621e-27, 1.5150797834428621e-27, 4.695552215279453e-13
	.float 4.766605946754376e-13, 4.692210704183852e-13, 1.5213907669811274e-27, 1.5213907669811274e-27
	.float 4.802135251946726e-13, 4.87318898342165e-13, 4.798792656648954e-13, 1.5277017505193928e-27
	.float 1.5277017505193928e-27, 4.908718288614e-13, 4.979772020088924e-13, 4.905374609114055e-13
	.float 1.534012734057658e-27, 1.534012734057658e-27, 5.015301325281274e-13, 5.086355056756198e-13
	.float 5.011956561579156e-13, 1.5403237175959234e-27, 1.5403237175959234e-27, 5.121884361948548e-13
	.float 5.192938093423471e-13, 5.118538514044257e-13, 1.5466347011341887e-27, 1.5466347011341887e-27
	.float 5.228467398615821e-13, 5.299521130090745e-13, 5.225120466509359e-13, 1.552945684672454e-27
	.float 1.552945684672454e-27, 5.335050435283095e-13, 5.406104166758019e-13, 5.33170241897446e-13
	.float 1.5592566682107193e-27, 1.5592566682107193e-27, 5.441633471950369e-13, 5.512687203425293e-13
	.float 5.438284371439561e-13, 1.5655676517489846e-27, 1.5655676517489846e-27, 5.548216508617643e-13
	.float 5.619270240092566e-13, 5.544866323904662e-13, 1.57187863528725e-27, 1.57187863528725e-27
	.float 5.654799545284916e-13, 5.72585327675984e-13, 5.651448276369764e-13, 1.5781896188255153e-27
	.float 1.5781896188255153e-27, 5.76138258195219e-13, 5.832436313427114e-13, 5.758030228834865e-13
	.float 1.5845006023637806e-27, 1.5845006023637806e-27, 5.867965618619464e-13, 5.939019350094388e-13
	.float 5.864612181299966e-13, 1.5908115859020459e-27, 1.5908115859020459e-27, 5.974548655286738e-13
	.float 6.045602386761662e-13, 5.971194133765068e-13, 1.5971225694403112e-27, 1.5971225694403112e-27
	.float 6.081131691954011e-13, 6.152185423428935e-13, 6.077776086230169e-13, 1.6034335529785765e-27
	.float 1.6034335529785765e-27, 6.187714728621285e-13, 6.258768460096209e-13, 6.18435803869527e-13
	.float 1.6097445365168418e-27, 1.6097445365168418e-27, 6.294297765288559e-13, 6.365351496763483e-13
	.float 6.290939991160371e-13, 1.616523906217582e-27, 1.616523906217582e-27, 6.400880801955833e-13
	.float 6.471934533430757e-13, 6.397521943625473e-13, 1.6291458732941128e-27, 1.6291458732941128e-27
	.float 6.507463838623107e-13, 6.57851757009803e-13, 6.504103896090574e-13, 1.6417678403706434e-27
	.float 1.6417678403706434e-27, 6.61404687529038e-13, 6.685100606765304e-13, 6.610685848555675e-13
	.float 1.654389807447174e-27, 1.654389807447174e-27, 6.720629911957654e-13, 6.791683643432578e-13
	.float 6.717267801020776e-13, 1.6670117745237046e-27, 1.6670117745237046e-27, 6.827212948624928e-13
	.float 6.898266680099852e-13, 6.823849753485878e-13, 1.6796337416002353e-27, 1.6796337416002353e-27
	.float 6.933795985292202e-13, 7.004849716767125e-13, 6.930431705950979e-13, 1.692255708676766e-27
	.float 1.692255708676766e-27, 7.040379021959475e-13, 7.111432753434399e-13, 7.03701365841608e-13
	.float 1.7048776757532965e-27, 1.7048776757532965e-27, 7.146962058626749e-13, 7.218015790101673e-13
	.float 7.143595610881182e-13, 1.717499642829827e-27, 1.717499642829827e-27, 7.253545095294023e-13
	.float 7.324598826768947e-13, 7.250177563346283e-13, 1.7301216099063578e-27, 1.7301216099063578e-27
	.float 7.360128131961297e-13, 7.43118186343622e-13, 7.356759515811384e-13, 1.7427435769828884e-27
	.float 1.7427435769828884e-27, 7.46671116862857e-13, 7.537764900103494e-13, 7.463341468276485e-13
	.float 1.755365544059419e-27, 1.755365544059419e-27, 7.573294205295844e-13, 7.644347936770768e-13
	.float 7.569923420741587e-13, 1.7679875111359497e-27, 1.7679875111359497e-27, 7.679877241963118e-13
	.float 7.750930973438042e-13, 7.676505373206688e-13, 1.7806094782124803e-27, 1.7806094782124803e-27
	.float 7.786460278630392e-13, 7.857514010105315e-13, 7.783087325671789e-13, 1.793231445289011e-27
	.float 1.793231445289011e-27, 7.893043315297665e-13, 7.964097046772589e-13, 7.88966927813689e-13
	.float 1.8058534123655415e-27, 1.8058534123655415e-27, 7.999626351964939e-13, 8.070680083439863e-13
	.float 7.996251230601992e-13, 1.818475379442072e-27, 1.818475379442072e-27, 8.106209388632213e-13
	.float 8.177263120107137e-13, 8.102833183067093e-13, 1.8310973465186028e-27, 1.8310973465186028e-27
	.float 8.212792425299487e-13, 8.28384615677441e-13, 8.209415135532194e-13, 1.8437193135951334e-27
	.float 1.8437193135951334e-27, 8.31937546196676e-13, 8.390429193441684e-13, 8.315997087997296e-13
	.float 1.856341280671664e-27, 1.856341280671664e-27, 8.425958498634034e-13, 8.497012230108958e-13
	.float 8.422579040462397e-13, 1.8689632477481947e-27, 1.8689632477481947e-27, 8.532541535301308e-13
	.float 8.603595266776232e-13, 8.529160992927498e-13, 1.8815852148247253e-27, 1.8815852148247253e-27
	.float 8.639124571968582e-13, 8.710178303443505e-13, 8.635742945392599e-13, 1.894207181901256e-27
	.float 1.894207181901256e-27, 8.745707608635855e-13, 8.816761340110779e-13, 8.742324897857701e-13
	.float 1.9068291489777866e-27, 1.9068291489777866e-27, 8.852290645303129e-13, 8.923344376778053e-13
	.float 8.848906850322802e-13, 1.9194511160543172e-27, 1.9194511160543172e-27, 8.958873681970403e-13
	.float 9.029927413445327e-13, 8.955488802787903e-13, 1.9320730831308478e-27, 1.9320730831308478e-27
	.float 9.065456718637677e-13, 9.178073882495918e-13, 9.062070755253004e-13, 1.9446950502073784e-27
	.float 1.9446950502073784e-27, 9.249132492880618e-13, 9.391239955830466e-13, 9.24235839770693e-13
	.float 1.957317017283909e-27, 1.957317017283909e-27, 9.462298566215166e-13, 9.604406029165014e-13
	.float 9.455522302637132e-13, 1.9699389843604397e-27, 1.9699389843604397e-27, 9.675464639549713e-13
	.float 9.817572102499561e-13, 9.668686207567334e-13, 1.9825609514369703e-27, 1.9825609514369703e-27
	.float 9.88863071288426e-13, 1.0030738175834109e-12, 9.881850112497537e-13, 1.995182918513501e-27
	.float 1.995182918513501e-27, 1.0101796786218808e-12, 1.0243904249168656e-12, 1.009501401742774e-12
	.float 2.0078048855900316e-27, 2.0078048855900316e-27, 1.0314962859553356e-12, 1.0457070322503204e-12
	.float 1.0308177922357942e-12, 2.0204268526665622e-27, 2.0204268526665622e-27, 1.0528128932887904e-12
	.float 1.0670236395837751e-12, 1.0521341827288144e-12, 2.033048819743093e-27, 2.033048819743093e-27
	.float 1.0741295006222451e-12, 1.0883402469172299e-12, 1.0734505732218347e-12, 2.0456707868196235e-27
	.float 2.0456707868196235e-27, 1.0954461079556999e-12, 1.1096568542506846e-12, 1.094766963714855e-12
	.float 2.058292753896154e-27, 2.058292753896154e-27, 1.1167627152891546e-12, 1.1309734615841394e-12
	.float 1.1160833542078752e-12, 2.0709147209726847e-27, 2.0709147209726847e-27, 1.1380793226226094e-12
	.float 1.1522900689175941e-12, 1.1373997447008954e-12, 2.0835366880492154e-27, 2.0835366880492154e-27
	.float 1.1593959299560641e-12, 1.1736066762510489e-12, 1.1587161351939157e-12, 2.096158655125746e-27
	.float 2.096158655125746e-27, 1.1807125372895189e-12, 1.1949232835845036e-12, 1.180032525686936e-12
	.float 2.1087806222022766e-27, 2.1087806222022766e-27, 1.2020291446229736e-12, 1.2162398909179584e-12
	.float 1.2013489161799562e-12, 2.1214025892788072e-27, 2.1214025892788072e-27, 1.2233457519564284e-12
	.float 1.2375564982514131e-12, 1.2226653066729765e-12, 2.134024556355338e-27, 2.134024556355338e-27
	.float 1.2446623592898831e-12, 1.2588731055848679e-12, 1.2439816971659967e-12, 2.1466465234318685e-27
	.float 2.1466465234318685e-27, 1.2659789666233379e-12, 1.2801897129183226e-12, 1.265298087659017e-12
	.float 2.159268490508399e-27, 2.159268490508399e-27, 1.2872955739567926e-12, 1.3015063202517774e-12
	.float 1.2866144781520372e-12, 2.1718904575849297e-27, 2.1718904575849297e-27, 1.3086121812902474e-12
	.float 1.3228229275852321e-12, 1.3079308686450575e-12, 2.1845124246614604e-27, 2.1845124246614604e-27
	.float 1.3299287886237021e-12, 1.3441395349186869e-12, 1.3292472591380777e-12, 2.197134391737991e-27
	.float 2.197134391737991e-27, 1.3512453959571569e-12, 1.3654561422521416e-12, 1.350563649631098e-12
	.float 2.2097563588145216e-27, 2.2097563588145216e-27, 1.3725620032906116e-12, 1.3867727495855964e-12
	.float 1.3718800401241182e-12, 2.2223783258910523e-27, 2.2223783258910523e-27, 1.3938786106240664e-12
	.float 1.4080893569190511e-12, 1.3931964306171385e-12, 2.235000292967583e-27, 2.235000292967583e-27
	.float 1.4151952179575211e-12, 1.4294059642525059e-12, 1.4145128211101587e-12, 2.2476222600441135e-27
	.float 2.2476222600441135e-27, 1.4365118252909759e-12, 1.4507225715859606e-12, 1.435829211603179e-12
	.float 2.260244227120644e-27, 2.260244227120644e-27, 1.4578284326244306e-12, 1.4720391789194154e-12
	.float 1.4571456020961993e-12, 2.2728661941971748e-27, 2.2728661941971748e-27, 1.4791450399578854e-12
	.float 1.4933557862528701e-12, 1.4784619925892195e-12, 2.2854881612737054e-27, 2.2854881612737054e-27
	.float 1.5004616472913401e-12, 1.5146723935863249e-12, 1.4997783830822398e-12, 2.298110128350236e-27
	.float 2.298110128350236e-27, 1.5217782546247949e-12, 1.5359890009197796e-12, 1.52109477357526e-12
	.float 2.3107320954267666e-27, 2.3107320954267666e-27, 1.5430948619582496e-12, 1.5573056082532344e-12
	.float 1.5424111640682803e-12, 2.3233540625032973e-27, 2.3233540625032973e-27, 1.5644114692917044e-12
	.float 1.5786222155866891e-12, 1.5637275545613005e-12, 2.335976029579828e-27, 2.335976029579828e-27
	.float 1.5857280766251591e-12, 1.5999388229201439e-12, 1.5850439450543208e-12, 2.3485979966563585e-27
	.float 2.3485979966563585e-27, 1.6070446839586139e-12, 1.6212554302535986e-12, 1.606360335547341e-12
	.float 2.361219963732889e-27, 2.361219963732889e-27, 1.6283612912920686e-12, 1.6425720375870534e-12
	.float 1.6276767260403613e-12, 2.3738419308094198e-27, 2.3738419308094198e-27, 1.6496778986255234e-12
	.float 1.6638886449205081e-12, 1.6489931165333815e-12, 2.3864638978859504e-27, 2.3864638978859504e-27
	.float 1.6709945059589781e-12, 1.6852052522539629e-12, 1.6703095070264018e-12, 2.399085864962481e-27
	.float 2.399085864962481e-27, 1.6923111132924329e-12, 1.7065218595874176e-12, 1.691625897519422e-12
	.float 2.4117078320390117e-27, 2.4117078320390117e-27, 1.7136277206258876e-12, 1.7278384669208724e-12
	.float 1.7129422880124423e-12, 2.4243297991155423e-27, 2.4243297991155423e-27, 1.7349443279593424e-12
	.float 1.7491550742543271e-12, 1.7342586785054626e-12, 2.436951766192073e-27, 2.436951766192073e-27
	.float 1.7562609352927971e-12, 1.7704716815877819e-12, 1.7555750689984828e-12, 2.4495737332686036e-27
	.float 2.4495737332686036e-27, 1.7775775426262519e-12, 1.7917882889212366e-12, 1.776891459491503e-12
	.float 2.462195700345134e-27, 2.462195700345134e-27, 1.7988941499597066e-12, 1.8131048962546914e-12
	.float 1.7982078499845233e-12, 2.4748176674216648e-27, 2.4748176674216648e-27, 1.8214321110404663e-12
	.float 1.849853603630436e-12, 1.8200590774092307e-12, 2.4874396344981954e-27, 2.4874396344981954e-27
	.float 1.864065325707376e-12, 1.8924868182973453e-12, 1.862691858395271e-12, 2.500061601574726e-27
	.float 2.500061601574726e-27, 1.9066985403742853e-12, 1.935120032964255e-12, 1.9053246393813117e-12
	.float 2.5126835686512567e-27, 2.5126835686512567e-27, 1.949331755041195e-12, 1.9777532476311643e-12
	.float 1.947957420367352e-12, 2.5253055357277873e-27, 2.5253055357277873e-27, 1.9919649697081043e-12
	.float 2.020386462298074e-12, 1.9905902013533927e-12, 2.537927502804318e-27, 2.537927502804318e-27
	.float 2.034598184375014e-12, 2.0630196769649833e-12, 2.0332229823394332e-12, 2.5505494698808486e-27
	.float 2.5505494698808486e-27, 2.0772313990419233e-12, 2.105652891631893e-12, 2.0758557633254737e-12
	.float 2.5631714369573792e-27, 2.5631714369573792e-27, 2.119864613708833e-12, 2.1482861062988023e-12
	.float 2.1184885443115142e-12, 2.57579340403391e-27, 2.57579340403391e-27, 2.1624978283757423e-12
	.float 2.190919320965712e-12, 2.1611213252975547e-12, 2.5884153711104405e-27, 2.5884153711104405e-27
	.float 2.205131043042652e-12, 2.2335525356326213e-12, 2.2037541062835952e-12, 2.601037338186971e-27
	.float 2.601037338186971e-27, 2.2477642577095613e-12, 2.276185750299531e-12, 2.2463868872696358e-12
	.float 2.6136593052635017e-27, 2.6136593052635017e-27, 2.290397472376471e-12, 2.3188189649664404e-12
	.float 2.2890196682556763e-12, 2.6262812723400323e-27, 2.6262812723400323e-27, 2.3330306870433803e-12
	.float 2.36145217963335e-12, 2.3316524492417168e-12, 2.638903239416563e-27, 2.638903239416563e-27
	.float 2.37566390171029e-12, 2.4040853943002594e-12, 2.3742852302277573e-12, 2.6515252064930936e-27
	.float 2.6515252064930936e-27, 2.4182971163771994e-12, 2.446718608967169e-12, 2.4169180112137978e-12
	.float 2.6641471735696242e-27, 2.6641471735696242e-27, 2.460930331044109e-12, 2.4893518236340784e-12
	.float 2.4595507921998383e-12, 2.676769140646155e-27, 2.676769140646155e-27, 2.5035635457110184e-12
	.float 2.531985038300988e-12, 2.502183573185879e-12, 2.6893911077226855e-27, 2.6893911077226855e-27
	.float 2.546196760377928e-12, 2.5746182529678974e-12, 2.5448163541719193e-12, 2.702013074799216e-27
	.float 2.702013074799216e-27, 2.5888299750448374e-12, 2.617251467634807e-12, 2.58744913515796e-12
	.float 2.7146350418757467e-27, 2.7146350418757467e-27, 2.631463189711747e-12, 2.6598846823017164e-12
	.float 2.6300819161440003e-12, 2.7272570089522774e-27, 2.7272570089522774e-27, 2.6740964043786564e-12
	.float 2.702517896968626e-12, 2.672714697130041e-12, 2.739878976028808e-27, 2.739878976028808e-27
	.float 2.716729619045566e-12, 2.7451511116355354e-12, 2.7153474781160813e-12, 2.7525009431053386e-27
	.float 2.7525009431053386e-27, 2.7593628337124754e-12, 2.787784326302445e-12, 2.757980259102122e-12
	.float 2.7651229101818692e-27, 2.7651229101818692e-27, 2.801996048379385e-12, 2.8304175409693544e-12
	.float 2.8006130400881624e-12, 2.7777448772584e-27, 2.7777448772584e-27, 2.8446292630462944e-12
	.float 2.873050755636264e-12, 2.843245821074203e-12, 2.7903668443349305e-27, 2.7903668443349305e-27
	.float 2.887262477713204e-12, 2.9156839703031734e-12, 2.8858786020602434e-12, 2.802988811411461e-27
	.float 2.802988811411461e-27, 2.9298956923801134e-12, 2.958317184970083e-12, 2.928511383046284e-12
	.float 2.8156107784879918e-27, 2.8156107784879918e-27, 2.972528907047023e-12, 3.0009503996369924e-12
	.float 2.9711441640323244e-12, 2.8282327455645224e-27, 2.8282327455645224e-27, 3.0151621217139324e-12
	.float 3.043583614303902e-12, 3.013776945018365e-12, 2.840854712641053e-27, 2.840854712641053e-27
	.float 3.057795336380842e-12, 3.0862168289708114e-12, 3.0564097260044054e-12, 2.8534766797175836e-27
	.float 2.8534766797175836e-27, 3.1004285510477514e-12, 3.128850043637721e-12, 3.099042506990446e-12
	.float 2.8660986467941143e-27, 2.8660986467941143e-27, 3.143061765714661e-12, 3.1714832583046304e-12
	.float 3.1416752879764864e-12, 2.878720613870645e-27, 2.878720613870645e-27, 3.1856949803815704e-12
	.float 3.21411647297154e-12, 3.184308068962527e-12, 2.8913425809471755e-27, 2.8913425809471755e-27
	.float 3.22832819504848e-12, 3.2567496876384494e-12, 3.2269408499485674e-12, 2.903964548023706e-27
	.float 2.903964548023706e-27, 3.2709614097153894e-12, 3.299382902305359e-12, 3.269573630934608e-12
	.float 2.9165865151002368e-27, 2.9165865151002368e-27, 3.313594624382299e-12, 3.3420161169722684e-12
	.float 3.3122064119206485e-12, 2.9292084821767674e-27, 2.9292084821767674e-27, 3.3562278390492084e-12
	.float 3.384649331639178e-12, 3.354839192906689e-12, 2.941830449253298e-27, 2.941830449253298e-27
	.float 3.398861053716118e-12, 3.4272825463060874e-12, 3.3974719738927295e-12, 2.9544524163298287e-27
	.float 2.9544524163298287e-27, 3.4414942683830274e-12, 3.469915760972997e-12, 3.44010475487877e-12
	.float 2.9670743834063593e-27, 2.9670743834063593e-27, 3.484127483049937e-12, 3.5125489756399064e-12
	.float 3.4827375358648105e-12, 2.97969635048289e-27, 2.97969635048289e-27, 3.5267606977168464e-12
	.float 3.555182190306816e-12, 3.525370316850851e-12, 2.9923183175594205e-27, 2.9923183175594205e-27
	.float 3.569393912383756e-12, 3.5978154049737254e-12, 3.5680030978368915e-12, 3.004940284635951e-27
	.float 3.004940284635951e-27, 3.6120271270506654e-12, 3.642918432189557e-12, 3.610635878822932e-12
	.float 3.0175622517124818e-27, 3.0175622517124818e-27, 3.671341876343437e-12, 3.728184861523376e-12
	.float 3.668558512526232e-12, 3.0301842187890124e-27, 3.0301842187890124e-27, 3.756608305677256e-12
	.float 3.813451290857195e-12, 3.753824074498313e-12, 3.042806185865543e-27, 3.042806185865543e-27
	.float 3.841874735011075e-12, 3.898717720191014e-12, 3.839089636470394e-12, 3.0554281529420737e-27
	.float 3.0554281529420737e-27, 3.927141164344894e-12, 3.983984149524833e-12, 3.924355198442475e-12
	.float 3.0680501200186043e-27, 3.0680501200186043e-27, 4.012407593678713e-12, 4.069250578858652e-12
	.float 4.009620760414556e-12, 3.080672087095135e-27, 3.080672087095135e-27, 4.097674023012532e-12
	.float 4.154517008192471e-12, 4.094886322386637e-12, 3.0932940541716656e-27, 3.0932940541716656e-27
	.float 4.182940452346351e-12, 4.23978343752629e-12, 4.180151884358718e-12, 3.1059160212481962e-27
	.float 3.1059160212481962e-27, 4.26820688168017e-12, 4.325049866860109e-12, 4.265417446330799e-12
	.float 3.1185379883247268e-27, 3.1185379883247268e-27, 4.353473311013989e-12, 4.410316296193928e-12
	.float 4.35068300830288e-12, 3.1311599554012574e-27, 3.1311599554012574e-27, 4.438739740347808e-12
	.float 4.495582725527747e-12, 4.435948570274961e-12, 3.143781922477788e-27, 3.143781922477788e-27
	.float 4.524006169681627e-12, 4.580849154861566e-12, 4.521214132247042e-12, 3.1564038895543187e-27
	.float 3.1564038895543187e-27, 4.609272599015446e-12, 4.666115584195385e-12, 4.606479694219123e-12
	.float 3.1690258566308493e-27, 3.1690258566308493e-27, 4.694539028349265e-12, 4.751382013529204e-12
	.float 4.691745256191204e-12, 3.18164782370738e-27, 3.18164782370738e-27, 4.779805457683084e-12
	.float 4.836648442863023e-12, 4.777010818163285e-12, 3.1942697907839106e-27, 3.1942697907839106e-27
	.float 4.865071887016903e-12, 4.921914872196842e-12, 4.862276380135366e-12, 3.2068917578604412e-27
	.float 3.2068917578604412e-27, 4.950338316350722e-12, 5.007181301530661e-12, 4.947541942107447e-12
	.float 3.219513724936972e-27, 3.219513724936972e-27, 5.035604745684541e-12, 5.09244773086448e-12
	.float 5.032807504079528e-12, 3.2330971162417406e-27, 3.2330971162417406e-27, 5.12087117501836e-12
	.float 5.177714160198299e-12, 5.118073066051609e-12, 3.258341050394802e-27, 3.258341050394802e-27
	.float 5.206137604352179e-12, 5.262980589532118e-12, 5.2033386280236904e-12, 3.283584984547863e-27
	.float 3.283584984547863e-27, 5.291404033685998e-12, 5.348247018865937e-12, 5.2886041899957714e-12
	.float 3.308828918700924e-27, 3.308828918700924e-27, 5.376670463019817e-12, 5.433513448199756e-12
	.float 5.3738697519678524e-12, 3.3340728528539856e-27, 3.3340728528539856e-27, 5.461936892353636e-12
	.float 5.518779877533575e-12, 5.4591353139399335e-12, 3.359316787007047e-27, 3.359316787007047e-27
	.float 5.547203321687455e-12, 5.604046306867394e-12, 5.5444008759120145e-12, 3.384560721160108e-27
	.float 3.384560721160108e-27, 5.632469751021274e-12, 5.689312736201213e-12, 5.6296664378840955e-12
	.float 3.409804655313169e-27, 3.409804655313169e-27, 5.717736180355093e-12, 5.774579165535032e-12
	.float 5.7149319998561765e-12, 3.4350485894662306e-27, 3.4350485894662306e-27, 5.803002609688912e-12
	.float 5.859845594868851e-12, 5.8001975618282575e-12, 3.460292523619292e-27, 3.460292523619292e-27
	.float 5.888269039022731e-12, 5.94511202420267e-12, 5.8854631238003385e-12, 3.485536457772353e-27
	.float 3.485536457772353e-27, 5.97353546835655e-12, 6.030378453536489e-12, 5.9707286857724196e-12
	.float 3.5107803919254144e-27, 3.5107803919254144e-27, 6.058801897690369e-12, 6.115644882870308e-12
	.float 6.0559942477445006e-12, 3.5360243260784756e-27, 3.5360243260784756e-27, 6.144068327024188e-12
	.float 6.200911312204127e-12, 6.1412598097165816e-12, 3.561268260231537e-27, 3.561268260231537e-27
	.float 6.229334756358007e-12, 6.286177741537946e-12, 6.226525371688663e-12, 3.586512194384598e-27
	.float 3.586512194384598e-27, 6.314601185691826e-12, 6.371444170871765e-12, 6.311790933660744e-12
	.float 3.6117561285376594e-27, 3.6117561285376594e-27, 6.399867615025645e-12, 6.456710600205584e-12
	.float 6.397056495632825e-12, 3.637000062690721e-27, 3.637000062690721e-27, 6.485134044359464e-12
	.float 6.541977029539403e-12, 6.482322057604906e-12, 3.662243996843782e-27, 3.662243996843782e-27
	.float 6.570400473693283e-12, 6.627243458873222e-12, 6.567587619576987e-12, 3.687487930996843e-27
	.float 3.687487930996843e-27, 6.655666903027102e-12, 6.712509888207041e-12, 6.652853181549068e-12
	.float 3.7127318651499044e-27, 3.7127318651499044e-27, 6.740933332360921e-12, 6.79777631754086e-12
	.float 6.738118743521149e-12, 3.737975799302966e-27, 3.737975799302966e-27, 6.82619976169474e-12
	.float 6.883042746874679e-12, 6.82338430549323e-12, 3.763219733456027e-27, 3.763219733456027e-27
	.float 6.911466191028559e-12, 6.968309176208498e-12, 6.908649867465311e-12, 3.788463667609088e-27
	.float 3.788463667609088e-27, 6.996732620362378e-12, 7.053575605542317e-12, 6.993915429437392e-12
	.float 3.8137076017621494e-27, 3.8137076017621494e-27, 7.081999049696197e-12, 7.138842034876136e-12
	.float 7.079180991409473e-12, 3.838951535915211e-27, 3.838951535915211e-27, 7.167265479030016e-12
	.float 7.224108464209955e-12, 7.164446553381554e-12, 3.864195470068272e-27, 3.864195470068272e-27
	.float 7.252531908363835e-12, 7.342792172904122e-12, 7.249712115353635e-12, 3.889439404221333e-27
	.float 3.889439404221333e-27, 7.399639061211882e-12, 7.51332503157176e-12, 7.393997740468006e-12
	.float 3.9146833383743945e-27, 3.9146833383743945e-27, 7.57017191987952e-12, 7.683857890239398e-12
	.float 7.564528864412168e-12, 3.939927272527456e-27, 3.939927272527456e-27, 7.740704778547158e-12
	.float 7.854390748907036e-12, 7.73505998835633e-12, 3.965171206680517e-27, 3.965171206680517e-27
	.float 7.911237637214796e-12, 8.024923607574674e-12, 7.905591112300492e-12, 3.990415140833578e-27
	.float 3.990415140833578e-27, 8.081770495882434e-12, 8.195456466242312e-12, 8.076122236244654e-12
	.float 4.0156590749866395e-27, 4.0156590749866395e-27, 8.252303354550072e-12, 8.36598932490995e-12
	.float 8.246653360188816e-12, 4.040903009139701e-27, 4.040903009139701e-27, 8.42283621321771e-12
	.float 8.536522183577588e-12, 8.417184484132978e-12, 4.066146943292762e-27, 4.066146943292762e-27
	.float 8.593369071885348e-12, 8.707055042245226e-12, 8.58771560807714e-12, 4.091390877445823e-27
	.float 4.091390877445823e-27, 8.763901930552986e-12, 8.877587900912864e-12, 8.758246732021302e-12
	.float 4.1166348115988845e-27, 4.1166348115988845e-27, 8.934434789220624e-12, 9.048120759580502e-12
	.float 8.928777855965464e-12, 4.141878745751946e-27, 4.141878745751946e-27, 9.104967647888262e-12
	.float 9.21865361824814e-12, 9.099308979909626e-12, 4.167122679905007e-27, 4.167122679905007e-27
	.float 9.2755005065559e-12, 9.389186476915778e-12, 9.269840103853788e-12, 4.192366614058068e-27
	.float 4.192366614058068e-27, 9.446033365223538e-12, 9.559719335583416e-12, 9.44037122779795e-12
	.float 4.2176105482111295e-27, 4.2176105482111295e-27, 9.616566223891176e-12, 9.730252194251054e-12
	.float 9.610902351742112e-12, 4.242854482364191e-27, 4.242854482364191e-27, 9.787099082558814e-12
	.float 9.900785052918692e-12, 9.781433475686274e-12, 4.268098416517252e-27, 4.268098416517252e-27
	.float 9.957631941226452e-12, 1.007131791158633e-11, 9.951964599630436e-12, 4.293342350670313e-27
	.float 4.293342350670313e-27, 1.012816479989409e-11, 1.0241850770253969e-11, 1.0122495723574598e-11
	.float 4.3185862848233745e-27, 4.3185862848233745e-27, 1.0298697658561728e-11, 1.0412383628921607e-11
	.float 1.029302684751876e-11, 4.343830218976436e-27, 4.343830218976436e-27, 1.0469230517229366e-11
	.float 1.0582916487589245e-11, 1.0463557971462922e-11, 4.369074153129497e-27, 4.369074153129497e-27
	.float 1.0639763375897004e-11, 1.0753449346256883e-11, 1.0634089095407084e-11, 4.394318087282558e-27
	.float 4.394318087282558e-27, 1.0810296234564643e-11, 1.092398220492452e-11, 1.0804620219351246e-11
	.float 4.4195620214356196e-27, 4.4195620214356196e-27, 1.098082909323228e-11, 1.1094515063592159e-11
	.float 1.0975151343295408e-11, 4.444805955588681e-27, 4.444805955588681e-27, 1.1151361951899919e-11
	.float 1.1265047922259797e-11, 1.114568246723957e-11, 4.470049889741742e-27, 4.470049889741742e-27
	.float 1.1321894810567557e-11, 1.1435580780927435e-11, 1.1316213591183732e-11, 4.495293823894803e-27
	.float 4.495293823894803e-27, 1.1492427669235195e-11, 1.1606113639595073e-11, 1.1486744715127895e-11
	.float 4.5205377580478646e-27, 4.5205377580478646e-27, 1.1662960527902833e-11, 1.177664649826271e-11
	.float 1.1657275839072057e-11, 4.545781692200926e-27, 4.545781692200926e-27, 1.183349338657047e-11
	.float 1.1947179356930349e-11, 1.1827806963016219e-11, 4.571025626353987e-27, 4.571025626353987e-27
	.float 1.2004026245238109e-11, 1.2117712215597987e-11, 1.199833808696038e-11, 4.596269560507048e-27
	.float 4.596269560507048e-27, 1.2174559103905747e-11, 1.2288245074265625e-11, 1.2168869210904543e-11
	.float 4.6215134946601096e-27, 4.6215134946601096e-27
.global lbl_8046D378
lbl_8046D378:
	.float 6.922414413764596e-43, 2.802596928649634e-44, 0.0, 0.0
	.float -6.504412687050361e-39, 1.3844828827529193e-41, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 1.401298464324817e-45
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 7.937665524870852e-10, 8.010424545901174e-10, 7.933949053295919e-10
	.float 1.4547290275948184e-25, 1.4547290275948184e-25, 8.04680655441814e-10, 8.119565575448462e-10
	.float 8.043088972620183e-10, 1.462807086523798e-25, 1.462807086523798e-25, 8.155947583965428e-10
	.float 8.22870660499575e-10, 8.152228891944446e-10, 1.4708851454527776e-25, 1.4708851454527776e-25
	.float 8.265088613512717e-10, 8.337847634543039e-10, 8.26136881126871e-10, 1.4789632043817572e-25
	.float 1.4789632043817572e-25, 8.374229643060005e-10, 8.446988664090327e-10, 8.370508730592974e-10
	.float 1.4870412633107368e-25, 1.4870412633107368e-25, 8.483370672607293e-10, 8.556129693637615e-10
	.float 8.479648649917237e-10, 1.4951193222397164e-25, 1.4951193222397164e-25, 8.592511702154582e-10
	.float 8.665270723184904e-10, 8.588788569241501e-10, 1.503197381168696e-25, 1.503197381168696e-25
	.float 8.70165273170187e-10, 8.774411752732192e-10, 8.697928488565765e-10, 1.5112754400976756e-25
	.float 1.5112754400976756e-25, 8.810793761249158e-10, 8.88355278227948e-10, 8.807068407890029e-10
	.float 1.5193534990266552e-25, 1.5193534990266552e-25, 8.919934790796447e-10, 8.992693811826769e-10
	.float 8.916208327214292e-10, 1.5274315579556348e-25, 1.5274315579556348e-25, 9.029075820343735e-10
	.float 9.101834841374057e-10, 9.025348246538556e-10, 1.5355096168846144e-25, 1.5355096168846144e-25
	.float 9.138216849891023e-10, 9.210975870921345e-10, 9.13448816586282e-10, 1.543587675813594e-25
	.float 1.543587675813594e-25, 9.247357879438312e-10, 9.327008054782482e-10, 9.243628085187083e-10
	.float 1.5516657347425736e-25, 1.5516657347425736e-25, 9.399772071816415e-10, 9.545290113877059e-10
	.float 9.392310262867909e-10, 1.5597437936715532e-25, 1.5597437936715532e-25, 9.618054130910991e-10
	.float 9.763572172971635e-10, 9.610590101516436e-10, 1.5678218526005328e-25, 1.5678218526005328e-25
	.float 9.836336190005568e-10, 9.981854232066212e-10, 9.828869940164964e-10, 1.5758999115295124e-25
	.float 1.5758999115295124e-25, 1.0054618249100145e-09, 1.0200136291160788e-09, 1.0047149778813491e-09
	.float 1.583977970458492e-25, 1.583977970458492e-25, 1.0272900308194721e-09, 1.0418418350255365e-09
	.float 1.0265429617462019e-09, 1.5920560293874716e-25, 1.5920560293874716e-25, 1.0491182367289298e-09
	.float 1.0636700409349942e-09, 1.0483709456110546e-09, 1.6001340883164512e-25, 1.6001340883164512e-25
	.float 1.0709464426383875e-09, 1.0854982468444518e-09, 1.0701989294759073e-09, 1.6082121472454308e-25
	.float 1.6082121472454308e-25, 1.0927746485478451e-09, 1.1073264527539095e-09, 1.09202691334076e-09
	.float 1.6162902061744104e-25, 1.6162902061744104e-25, 1.1146028544573028e-09, 1.1291546586633672e-09
	.float 1.1138548972056128e-09, 1.62436826510339e-25, 1.62436826510339e-25, 1.1364310603667604e-09
	.float 1.1509828645728248e-09, 1.1356828810704656e-09, 1.6324463240323696e-25, 1.6324463240323696e-25
	.float 1.1582592662762181e-09, 1.1728110704822825e-09, 1.1575108649353183e-09, 1.6405243829613492e-25
	.float 1.6405243829613492e-25, 1.1800874721856758e-09, 1.1946392763917402e-09, 1.179338848800171e-09
	.float 1.6486024418903288e-25, 1.6486024418903288e-25, 1.2019156780951334e-09, 1.2164674823011978e-09
	.float 1.2011668326650238e-09, 1.6566805008193084e-25, 1.6566805008193084e-25, 1.2237438840045911e-09
	.float 1.2382956882106555e-09, 1.2229948165298765e-09, 1.664758559748288e-25, 1.664758559748288e-25
	.float 1.2455720899140488e-09, 1.2601238941201132e-09, 1.2448228003947293e-09, 1.6728366186772676e-25
	.float 1.6728366186772676e-25, 1.2674002958235064e-09, 1.2819521000295708e-09, 1.266650784259582e-09
	.float 1.6809146776062472e-25, 1.6809146776062472e-25, 1.2892285017329641e-09, 1.3037803059390285e-09
	.float 1.2884787681244347e-09, 1.6889927365352268e-25, 1.6889927365352268e-25, 1.3110567076424218e-09
	.float 1.3256085118484862e-09, 1.3103067519892875e-09, 1.6970707954642064e-25, 1.6970707954642064e-25
	.float 1.3328849135518794e-09, 1.3474367177579438e-09, 1.3321347358541402e-09, 1.705148854393186e-25
	.float 1.705148854393186e-25, 1.354713119461337e-09, 1.3692649236674015e-09, 1.353962719718993e-09
	.float 1.7132269133221656e-25, 1.7132269133221656e-25, 1.3765413253707948e-09, 1.3910931295768592e-09
	.float 1.3757907035838457e-09, 1.7213049722511452e-25, 1.7213049722511452e-25, 1.3983695312802524e-09
	.float 1.4129213354863168e-09, 1.3976186874486984e-09, 1.7293830311801248e-25, 1.7293830311801248e-25
	.float 1.42019773718971e-09, 1.4347495413957745e-09, 1.4194466713135512e-09, 1.7374610901091044e-25
	.float 1.7374610901091044e-25, 1.4420259430991678e-09, 1.4565777473052322e-09, 1.441274655178404e-09
	.float 1.745539149038084e-25, 1.745539149038084e-25, 1.4638541490086254e-09, 1.4784059532146898e-09
	.float 1.4631026390432567e-09, 1.7536172079670636e-25, 1.7536172079670636e-25, 1.485682354918083e-09
	.float 1.5002341591241475e-09, 1.4849306229081094e-09, 1.7616952668960432e-25, 1.7616952668960432e-25
	.float 1.5075105608275408e-09, 1.5220623650336051e-09, 1.5067586067729621e-09, 1.7697733258250228e-25
	.float 1.7697733258250228e-25, 1.5293387667369984e-09, 1.5438905709430628e-09, 1.5285865906378149e-09
	.float 1.7778513847540024e-25, 1.7778513847540024e-25, 1.551166972646456e-09, 1.5657187768525205e-09
	.float 1.5504145745026676e-09, 1.785929443682982e-25, 1.785929443682982e-25, 1.5729951785559138e-09
	.float 1.5875469827619781e-09, 1.5722425583675204e-09, 1.7940075026119616e-25, 1.7940075026119616e-25
	.float 1.5948233844653714e-09, 1.6093751886714358e-09, 1.594070542232373e-09, 1.8020855615409412e-25
	.float 1.8020855615409412e-25, 1.616651590374829e-09, 1.6312033945808935e-09, 1.6158985260972258e-09
	.float 1.8101636204699208e-25, 1.8101636204699208e-25, 1.6384797962842867e-09, 1.6530316004903511e-09
	.float 1.6377265099620786e-09, 1.8182416793989004e-25, 1.8182416793989004e-25, 1.6603080021937444e-09
	.float 1.6748598063998088e-09, 1.6595544938269313e-09, 1.82631973832788e-25, 1.82631973832788e-25
	.float 1.682136208103202e-09, 1.6966880123092665e-09, 1.681382477691784e-09, 1.8343977972568596e-25
	.float 1.8343977972568596e-25, 1.7039644140126597e-09, 1.7185162182187241e-09, 1.7032104615566368e-09
	.float 1.8424758561858393e-25, 1.8424758561858393e-25, 1.7257926199221174e-09, 1.7403444241281818e-09
	.float 1.7250384454214895e-09, 1.8505539151148189e-25, 1.8505539151148189e-25, 1.747620825831575e-09
	.float 1.7621726300376395e-09, 1.7468664292863423e-09, 1.8586319740437985e-25, 1.8586319740437985e-25
	.float 1.7694490317410327e-09, 1.7840008359470971e-09, 1.768694413151195e-09, 1.866710032972778e-25
	.float 1.866710032972778e-25, 1.7912772376504904e-09, 1.8058290418565548e-09, 1.7905223970160478e-09
	.float 1.8747880919017577e-25, 1.8747880919017577e-25, 1.813105443559948e-09, 1.8276572477660125e-09
	.float 1.8123503808809005e-09, 1.8828661508307373e-25, 1.8828661508307373e-25, 1.8349336494694057e-09
	.float 1.8494854536754701e-09, 1.8341783647457532e-09, 1.8909442097597169e-25, 1.8909442097597169e-25
	.float 1.8567618553788634e-09, 1.8799821699388986e-09, 1.856006348610606e-09, 1.8990222686886965e-25
	.float 1.8990222686886965e-25, 1.894534973345685e-09, 1.923638581757814e-09, 1.8930235157199604e-09
	.float 1.907100327617676e-25, 1.907100327617676e-25, 1.9381913851646004e-09, 1.9672949935767292e-09
	.float 1.936679483449666e-09, 1.9151783865466557e-25, 1.9151783865466557e-25, 1.9818477969835158e-09
	.float 2.0109514053956445e-09, 1.9803354511793714e-09, 1.9232564454756353e-25, 1.9232564454756353e-25
	.float 2.025504208802431e-09, 2.05460781721456e-09, 2.023991418909077e-09, 1.9313345044046149e-25
	.float 1.9313345044046149e-25, 2.0691606206213464e-09, 2.098264229033475e-09, 2.0676473866387823e-09
	.float 1.9394125633335945e-25, 1.9394125633335945e-25, 2.1128170324402618e-09, 2.1419206408523905e-09
	.float 2.111303354368488e-09, 1.947490622262574e-25, 1.947490622262574e-25, 2.156473444259177e-09
	.float 2.185577052671306e-09, 2.1549593220981933e-09, 1.9555686811915537e-25, 1.9555686811915537e-25
	.float 2.2001298560780924e-09, 2.229233464490221e-09, 2.1986152898278988e-09, 1.9636467401205333e-25
	.float 1.9636467401205333e-25, 2.2437862678970077e-09, 2.2728898763091365e-09, 2.2422712575576043e-09
	.float 1.9717247990495129e-25, 1.9717247990495129e-25, 2.287442679715923e-09, 2.316546288128052e-09
	.float 2.2859272252873097e-09, 1.9798028579784925e-25, 1.9798028579784925e-25, 2.3310990915348384e-09
	.float 2.360202699946967e-09, 2.3295831930170152e-09, 1.987880916907472e-25, 1.987880916907472e-25
	.float 2.3747555033537537e-09, 2.4038591117658825e-09, 2.3732391607467207e-09, 1.9959589758364517e-25
	.float 1.9959589758364517e-25, 2.418411915172669e-09, 2.447515523584798e-09, 2.416895128476426e-09
	.float 2.0040370347654313e-25, 2.0040370347654313e-25, 2.4620683269915844e-09, 2.491171935403713e-09
	.float 2.4605510962061317e-09, 2.012115093694411e-25, 2.012115093694411e-25, 2.5057247388104997e-09
	.float 2.5348283472226285e-09, 2.504207063935837e-09, 2.0201931526233905e-25, 2.0201931526233905e-25
	.float 2.549381150629415e-09, 2.578484759041544e-09, 2.5478630316655426e-09, 2.02827121155237e-25
	.float 2.02827121155237e-25, 2.5930375624483304e-09, 2.622141170860459e-09, 2.591518999395248e-09
	.float 2.0363492704813497e-25, 2.0363492704813497e-25, 2.6366939742672457e-09, 2.6657975826793745e-09
	.float 2.6351749671249536e-09, 2.0444273294103293e-25, 2.0444273294103293e-25, 2.680350386086161e-09
	.float 2.70945399449829e-09, 2.678830934854659e-09, 2.052505388339309e-25, 2.052505388339309e-25
	.float 2.7240067979050764e-09, 2.753110406317205e-09, 2.7224869025843645e-09, 2.0605834472682885e-25
	.float 2.0605834472682885e-25, 2.7676632097239917e-09, 2.7967668181361205e-09, 2.76614287031407e-09
	.float 2.069371481011967e-25, 2.069371481011967e-25, 2.811319621542907e-09, 2.840423229955036e-09
	.float 2.8097988380437755e-09, 2.085527598869926e-25, 2.085527598869926e-25, 2.8549760333618224e-09
	.float 2.884079641773951e-09, 2.853454805773481e-09, 2.1016837167278854e-25, 2.1016837167278854e-25
	.float 2.8986324451807377e-09, 2.9277360535928665e-09, 2.8971107735031865e-09, 2.1178398345858446e-25
	.float 2.1178398345858446e-25, 2.942288856999653e-09, 2.971392465411782e-09, 2.940766741232892e-09
	.float 2.133995952443804e-25, 2.133995952443804e-25, 2.9859452688185684e-09, 3.015048877230697e-09
	.float 2.9844227089625974e-09, 2.150152070301763e-25, 2.150152070301763e-25, 3.0296016806374837e-09
	.float 3.0587052890496125e-09, 3.028078676692303e-09, 2.166308188159722e-25, 2.166308188159722e-25
	.float 3.073258092456399e-09, 3.102361700868528e-09, 3.0717346444220084e-09, 2.1824643060176814e-25
	.float 2.1824643060176814e-25, 3.1169145042753144e-09, 3.146018112687443e-09, 3.115390612151714e-09
	.float 2.1986204238756406e-25, 2.1986204238756406e-25, 3.1605709160942297e-09, 3.1896745245063585e-09
	.float 3.1590465798814193e-09, 2.2147765417336e-25, 2.2147765417336e-25, 3.204227327913145e-09
	.float 3.233330936325274e-09, 3.202702547611125e-09, 2.230932659591559e-25, 2.230932659591559e-25
	.float 3.2478837397320603e-09, 3.276987348144189e-09, 3.2463585153408303e-09, 2.2470887774495182e-25
	.float 2.2470887774495182e-25, 3.2915401515509757e-09, 3.3206437599631045e-09, 3.2900144830705358e-09
	.float 2.2632448953074774e-25, 2.2632448953074774e-25, 3.335196563369891e-09, 3.3643001717820198e-09
	.float 3.3336704508002413e-09, 2.2794010131654367e-25, 2.2794010131654367e-25, 3.3788529751888063e-09
	.float 3.407956583600935e-09, 3.3773264185299467e-09, 2.295557131023396e-25, 2.295557131023396e-25
	.float 3.4225093870077217e-09, 3.4516129954198504e-09, 3.4209823862596522e-09, 2.311713248881355e-25
	.float 2.311713248881355e-25, 3.466165798826637e-09, 3.4952694072387658e-09, 3.4646383539893577e-09
	.float 2.3278693667393143e-25, 2.3278693667393143e-25, 3.5098222106455523e-09, 3.538925819057681e-09
	.float 3.508294321719063e-09, 2.3440254845972735e-25, 2.3440254845972735e-25, 3.5534786224644677e-09
	.float 3.5825822308765964e-09, 3.5519502894487687e-09, 2.3601816024552327e-25, 2.3601816024552327e-25
	.float 3.597135034283383e-09, 3.6262386426955118e-09, 3.595606257178474e-09, 2.376337720313192e-25
	.float 2.376337720313192e-25, 3.6407914461022983e-09, 3.669895054514427e-09, 3.6392622249081796e-09
	.float 2.392493838171151e-25, 2.392493838171151e-25, 3.6844478579212137e-09, 3.7135514663333424e-09
	.float 3.682918192637885e-09, 2.4086499560291103e-25, 2.4086499560291103e-25, 3.730918241018344e-09
	.float 3.7891254578426015e-09, 3.727858022273267e-09, 2.4248060738870695e-25, 2.4248060738870695e-25
	.float 3.8182310646561746e-09, 3.876438281480432e-09, 3.815169957732678e-09, 2.4409621917450287e-25
	.float 2.4409621917450287e-25, 3.905543888294005e-09, 3.963751105118263e-09, 3.902481893192089e-09
	.float 2.457118309602988e-25, 2.457118309602988e-25, 3.992856711931836e-09, 4.0510639287560934e-09
	.float 3.9897938286515e-09, 2.473274427460947e-25, 2.473274427460947e-25, 4.0801695355696666e-09
	.float 4.138376752393924e-09, 4.077105764110911e-09, 2.4894305453189063e-25, 2.4894305453189063e-25
	.float 4.167482359207497e-09, 4.225689576031755e-09, 4.164417699570322e-09, 2.5055866631768655e-25
	.float 2.5055866631768655e-25, 4.254795182845328e-09, 4.3130023996695854e-09, 4.251729635029733e-09
	.float 2.5217427810348247e-25, 2.5217427810348247e-25, 4.3421080064831585e-09, 4.400315223307416e-09
	.float 4.339041570489144e-09, 2.537898898892784e-25, 2.537898898892784e-25, 4.429420830120989e-09
	.float 4.487628046945247e-09, 4.426353505948555e-09, 2.554055016750743e-25, 2.554055016750743e-25
	.float 4.51673365375882e-09, 4.574940870583077e-09, 4.513665441407966e-09, 2.5702111346087023e-25
	.float 2.5702111346087023e-25, 4.6040464773966505e-09, 4.662253694220908e-09, 4.600977376867377e-09
	.float 2.5863672524666615e-25, 2.5863672524666615e-25, 4.691359301034481e-09, 4.749566517858739e-09
	.float 4.688289312326788e-09, 2.6025233703246207e-25, 2.6025233703246207e-25, 4.778672124672312e-09
	.float 4.836879341496569e-09, 4.775601247786199e-09, 2.61867948818258e-25, 2.61867948818258e-25
	.float 4.8659849483101425e-09, 4.9241921651344e-09, 4.86291318324561e-09, 2.634835606040539e-25
	.float 2.634835606040539e-25, 4.953297771947973e-09, 5.011504988772231e-09, 4.9502251187050206e-09
	.float 2.6509917238984983e-25, 2.6509917238984983e-25, 5.040610595585804e-09, 5.098817812410061e-09
	.float 5.0375370541644315e-09, 2.6671478417564575e-25, 2.6671478417564575e-25, 5.1279234192236345e-09
	.float 5.186130636047892e-09, 5.1248489896238425e-09, 2.6833039596144167e-25, 2.6833039596144167e-25
	.float 5.215236242861465e-09, 5.273443459685723e-09, 5.2121609250832535e-09, 2.699460077472376e-25
	.float 2.699460077472376e-25, 5.302549066499296e-09, 5.360756283323553e-09, 5.2994728605426644e-09
	.float 2.715616195330335e-25, 2.715616195330335e-25, 5.3898618901371265e-09, 5.448069106961384e-09
	.float 5.386784796002075e-09, 2.7317723131882943e-25, 2.7317723131882943e-25, 5.477174713774957e-09
	.float 5.535381930599215e-09, 5.474096731461486e-09, 2.7479284310462535e-25, 2.7479284310462535e-25
	.float 5.564487537412788e-09, 5.622694754237045e-09, 5.561408666920897e-09, 2.7640845489042128e-25
	.float 2.7640845489042128e-25, 5.6518003610506184e-09, 5.710007577874876e-09, 5.648720602380308e-09
	.float 2.780240666762172e-25, 2.780240666762172e-25, 5.739113184688449e-09, 5.797320401512707e-09
	.float 5.736032537839719e-09, 2.796396784620131e-25, 2.796396784620131e-25, 5.82642600832628e-09
	.float 5.884633225150537e-09, 5.82334447329913e-09, 2.8125529024780904e-25, 2.8125529024780904e-25
	.float 5.9137388319641104e-09, 5.971946048788368e-09, 5.910656408758541e-09, 2.8287090203360496e-25
	.float 2.8287090203360496e-25, 6.001051655601941e-09, 6.059258872426199e-09, 5.997968344217952e-09
	.float 2.8448651381940088e-25, 2.8448651381940088e-25, 6.088364479239772e-09, 6.146571696064029e-09
	.float 6.085280279677363e-09, 2.861021256051968e-25, 2.861021256051968e-25, 6.1756773028776024e-09
	.float 6.23388451970186e-09, 6.172592215136774e-09, 2.877177373909927e-25, 2.877177373909927e-25
	.float 6.262990126515433e-09, 6.321197343339691e-09, 6.259904150596185e-09, 2.8933334917678864e-25
	.float 2.8933334917678864e-25, 6.350302950153264e-09, 6.408510166977521e-09, 6.347216086055596e-09
	.float 2.9094896096258456e-25, 2.9094896096258456e-25, 6.437615773791094e-09, 6.495822990615352e-09
	.float 6.434528021515007e-09, 2.925645727483805e-25, 2.925645727483805e-25, 6.524928597428925e-09
	.float 6.583135814253183e-09, 6.521839956974418e-09, 2.941801845341764e-25, 2.941801845341764e-25
	.float 6.612241421066756e-09, 6.670448637891013e-09, 6.609151892433829e-09, 2.957957963199723e-25
	.float 2.957957963199723e-25, 6.699554244704586e-09, 6.757761461528844e-09, 6.69646382789324e-09
	.float 2.9741140810576824e-25, 2.9741140810576824e-25, 6.786867068342417e-09, 6.845074285166675e-09
	.float 6.783775763352651e-09, 2.9902701989156416e-25, 2.9902701989156416e-25, 6.874179891980248e-09
	.float 6.932387108804505e-09, 6.871087698812062e-09, 3.006426316773601e-25, 3.006426316773601e-25
	.float 6.961492715618078e-09, 7.019699932442336e-09, 6.958399634271473e-09, 3.02258243463156e-25
	.float 3.02258243463156e-25, 7.048805539255909e-09, 7.1070127560801666e-09, 7.045711569730884e-09
	.float 3.038738552489519e-25, 3.038738552489519e-25, 7.13611836289374e-09, 7.194325579717997e-09
	.float 7.133023505190295e-09, 3.0548946703474784e-25, 3.0548946703474784e-25, 7.22343118653157e-09
	.float 7.281638403355828e-09, 7.2203354406497056e-09, 3.0710507882054376e-25, 3.0710507882054376e-25
	.float 7.310744010169401e-09, 7.3689512269936586e-09, 7.3076473761091165e-09, 3.087206906063397e-25
	.float 3.087206906063397e-25, 7.398056833807232e-09, 7.46194750433915e-09, 7.3949593115685275e-09
	.float 3.103363023921356e-25, 3.103363023921356e-25, 7.520158717966297e-09, 7.636573151614812e-09
	.float 7.513961897132049e-09, 3.119519141779315e-25, 3.119519141779315e-25, 7.694784365241958e-09
	.float 7.811198798890473e-09, 7.68858576805087e-09, 3.1356752596372744e-25, 3.1356752596372744e-25
	.float 7.86941001251762e-09, 7.985824446166134e-09, 7.863209638969693e-09, 3.1518313774952336e-25
	.float 3.1518313774952336e-25, 8.04403565979328e-09, 8.160450093441796e-09, 8.037833509888515e-09
	.float 3.167987495353193e-25, 3.167987495353193e-25, 8.218661307068942e-09, 8.335075740717457e-09
	.float 8.212457380807336e-09, 3.184143613211152e-25, 3.184143613211152e-25, 8.393286954344603e-09
	.float 8.509701387993118e-09, 8.387081251726158e-09, 3.2002997310691112e-25, 3.2002997310691112e-25
	.float 8.567912601620264e-09, 8.68432703526878e-09, 8.56170512264498e-09, 3.2164558489270704e-25
	.float 3.2164558489270704e-25, 8.742538248895926e-09, 8.858952682544441e-09, 8.736328993563802e-09
	.float 3.2326119667850296e-25, 3.2326119667850296e-25, 8.917163896171587e-09, 9.033578329820102e-09
	.float 8.910952864482624e-09, 3.248768084642989e-25, 3.248768084642989e-25, 9.091789543447248e-09
	.float 9.208203977095764e-09, 9.085576735401446e-09, 3.264924202500948e-25, 3.264924202500948e-25
	.float 9.26641519072291e-09, 9.382829624371425e-09, 9.260200606320268e-09, 3.2810803203589073e-25
	.float 3.2810803203589073e-25, 9.441040837998571e-09, 9.557455271647086e-09, 9.43482447723909e-09
	.float 3.2972364382168665e-25, 3.2972364382168665e-25, 9.615666485274232e-09, 9.732080918922748e-09
	.float 9.609448348157912e-09, 3.3133925560748257e-25, 3.3133925560748257e-25, 9.790292132549894e-09
	.float 9.906706566198409e-09, 9.784072219076734e-09, 3.329548673932785e-25, 3.329548673932785e-25
	.float 9.964917779825555e-09, 1.008133221347407e-08, 9.958696089995556e-09, 3.345704791790744e-25
	.float 3.345704791790744e-25, 1.0139543427101216e-08, 1.0255957860749731e-08, 1.0133319960914378e-08
	.float 3.3618609096487033e-25, 3.3618609096487033e-25, 1.0314169074376878e-08, 1.0430583508025393e-08
	.float 1.03079438318332e-08, 3.3780170275066625e-25, 3.3780170275066625e-25, 1.0488794721652539e-08
	.float 1.0605209155301054e-08, 1.0482567702752021e-08, 3.3941731453646217e-25, 3.3941731453646217e-25
	.float 1.06634203689282e-08, 1.0779834802576715e-08, 1.0657191573670843e-08, 3.410329263222581e-25
	.float 3.410329263222581e-25, 1.0838046016203862e-08, 1.0954460449852377e-08, 1.0831815444589665e-08
	.float 3.42648538108054e-25, 3.42648538108054e-25, 1.1012671663479523e-08, 1.1129086097128038e-08
	.float 1.1006439315508487e-08, 3.4426414989384993e-25, 3.4426414989384993e-25, 1.1187297310755184e-08
	.float 1.13037117444037e-08, 1.1181063186427309e-08, 3.4587976167964585e-25, 3.4587976167964585e-25
	.float 1.1361922958030846e-08, 1.147833739167936e-08, 1.1355687057346131e-08, 3.4749537346544177e-25
	.float 3.4749537346544177e-25, 1.1536548605306507e-08, 1.1652963038955022e-08, 1.1530310928264953e-08
	.float 3.491109852512377e-25, 3.491109852512377e-25, 1.1711174252582168e-08, 1.1827588686230683e-08
	.float 1.1704934799183775e-08, 3.507265970370336e-25, 3.507265970370336e-25, 1.188579989985783e-08
	.float 1.2002214333506345e-08, 1.1879558670102597e-08, 3.5234220882282953e-25, 3.5234220882282953e-25
	.float 1.2060425547133491e-08, 1.2176839980782006e-08, 1.2054182541021419e-08, 3.5395782060862545e-25
	.float 3.5395782060862545e-25, 1.2235051194409152e-08, 1.2351465628057667e-08, 1.222880641194024e-08
	.float 3.5557343239442137e-25, 3.5557343239442137e-25, 1.2409676841684814e-08, 1.2526091275333329e-08
	.float 1.2403430282859063e-08, 3.571890441802173e-25, 3.571890441802173e-25, 1.2584302488960475e-08
	.float 1.270071692260899e-08, 1.2578054153777884e-08, 3.588046559660132e-25, 3.588046559660132e-25
	.float 1.2758928136236136e-08, 1.2875342569884651e-08, 1.2752678024696706e-08, 3.6042026775180913e-25
	.float 3.6042026775180913e-25, 1.2933553783511798e-08, 1.3049968217160313e-08, 1.2927301895615528e-08
	.float 3.6203587953760505e-25, 3.6203587953760505e-25, 1.3108179430787459e-08, 1.3224593864435974e-08
	.float 1.310192576653435e-08, 3.6365149132340097e-25, 3.6365149132340097e-25, 1.328280507806312e-08
	.float 1.3399219511711635e-08, 1.3276549637453172e-08, 3.652671031091969e-25, 3.652671031091969e-25
	.float 1.3457430725338781e-08, 1.3573845158987297e-08, 1.3451173508371994e-08, 3.668827148949928e-25
	.float 3.668827148949928e-25, 1.3632056372614443e-08, 1.3748470806262958e-08, 1.3625797379290816e-08
	.float 3.6849832668078873e-25, 3.6849832668078873e-25, 1.3806682019890104e-08, 1.392309645353862e-08
	.float 1.3800421250209638e-08, 3.7011393846658465e-25, 3.7011393846658465e-25, 1.3981307667165765e-08
	.float 1.409772210081428e-08, 1.397504512112846e-08, 3.7172955025238057e-25, 3.7172955025238057e-25
	.float 1.4155933314441427e-08, 1.4272347748089942e-08, 1.4149668992047282e-08, 3.733451620381765e-25
	.float 3.733451620381765e-25, 1.4330558961717088e-08, 1.4446973395365603e-08, 1.4324292862966104e-08
	.float 3.749607738239724e-25, 3.749607738239724e-25, 1.450518460899275e-08, 1.4621599042641265e-08
	.float 1.4498916733884926e-08, 3.7657638560976834e-25, 3.7657638560976834e-25, 1.467981025626841e-08
	.float 1.4796224689916926e-08, 1.4673540604803748e-08, 3.7819199739556426e-25, 3.7819199739556426e-25
	.float 1.4854435903544072e-08, 1.5040539480537518e-08, 1.484816447572257e-08, 3.7980760918136018e-25
	.float 3.7980760918136018e-25, 1.515696190779181e-08, 1.538979077508884e-08, 1.5144415499435127e-08
	.float 3.814232209671561e-25, 3.814232209671561e-25, 1.5506213202343133e-08, 1.5739042069640163e-08
	.float 1.549366324127277e-08, 3.83038832752952e-25, 3.83038832752952e-25, 1.5855464496894456e-08
	.float 1.6088293364191486e-08, 1.5842910983110414e-08, 3.8465444453874794e-25, 3.8465444453874794e-25
	.float 1.620471579144578e-08, 1.643754465874281e-08, 1.6192158724948058e-08, 3.8627005632454386e-25
	.float 3.8627005632454386e-25, 1.65539670859971e-08, 1.678679595329413e-08, 1.6541406466785702e-08
	.float 3.878856681103398e-25, 3.878856681103398e-25, 1.6903218380548424e-08, 1.7136047247845454e-08
	.float 1.6890654208623346e-08, 3.895012798961357e-25, 3.895012798961357e-25, 1.7252469675099746e-08
	.float 1.7485298542396777e-08, 1.723990195046099e-08, 3.911168916819316e-25, 3.911168916819316e-25
	.float 1.760172096965107e-08, 1.78345498369481e-08, 1.7589149692298633e-08, 3.9273250346772754e-25
	.float 3.9273250346772754e-25, 1.7950972264202392e-08, 1.8183801131499422e-08, 1.7938397434136277e-08
	.float 3.9434811525352346e-25, 3.9434811525352346e-25, 1.8300223558753714e-08, 1.8533052426050745e-08
	.float 1.828764517597392e-08, 3.959637270393194e-25, 3.959637270393194e-25, 1.8649474853305037e-08
	.float 1.8882303720602067e-08, 1.8636892917811565e-08, 3.975793388251153e-25, 3.975793388251153e-25
	.float 1.899872614785636e-08, 1.923155501515339e-08, 1.898614065964921e-08, 3.991949506109112e-25
	.float 3.991949506109112e-25, 1.9347977442407682e-08, 1.9580806309704712e-08, 1.9335388401486853e-08
	.float 4.0081056239670714e-25, 4.0081056239670714e-25, 1.9697228736959005e-08, 1.9930057604256035e-08
	.float 1.9684636143324497e-08, 4.0242617418250306e-25, 4.0242617418250306e-25, 2.0046480031510328e-08
	.float 2.0279308898807358e-08, 2.003388388516214e-08, 4.04041785968299e-25, 4.04041785968299e-25
	.float 2.039573132606165e-08, 2.062856019335868e-08, 2.0383131626999784e-08, 4.056573977540949e-25
	.float 4.056573977540949e-25, 2.0744982620612973e-08, 2.0977811487910003e-08, 2.0732379368837428e-08
	.float 4.072730095398908e-25, 4.072730095398908e-25, 2.1094233915164295e-08, 2.1327062782461326e-08
	.float 2.1081627110675072e-08, 4.0888862132568674e-25, 4.0888862132568674e-25, 2.1443485209715618e-08
	.float 2.1676314077012648e-08, 2.1430874852512716e-08, 4.1050423311148266e-25, 4.1050423311148266e-25
	.float 2.179273650426694e-08, 2.202556537156397e-08, 2.178012259435036e-08, 4.121198448972786e-25
	.float 4.121198448972786e-25, 2.2141987798818263e-08, 2.2374816666115294e-08, 2.2129370336188003e-08
	.float 4.138806070896352e-25, 4.138806070896352e-25, 2.2491239093369586e-08, 2.2724067960666616e-08
	.float 2.2478618078025647e-08, 4.17111830661227e-25, 4.17111830661227e-25, 2.284049038792091e-08
	.float 2.307331925521794e-08, 2.282786581986329e-08, 4.2034305423281885e-25, 4.2034305423281885e-25
	.float 2.318974168247223e-08, 2.342257054976926e-08, 2.3177113561700935e-08, 4.235742778044107e-25
	.float 4.235742778044107e-25, 2.3538992977023554e-08, 2.3771821844320584e-08, 2.352636130353858e-08
	.float 4.268055013760025e-25, 4.268055013760025e-25, 2.3888244271574877e-08, 2.4121073138871907e-08
	.float 2.3875609045376223e-08, 4.300367249475944e-25, 4.300367249475944e-25, 2.42374955661262e-08
	.float 2.447032443342323e-08, 2.4224856787213866e-08, 4.332679485191862e-25, 4.332679485191862e-25
	.float 2.4586746860677522e-08, 2.4819575727974552e-08, 2.457410452905151e-08, 4.364991720907781e-25
	.float 4.364991720907781e-25, 2.4935998155228845e-08, 2.5168827022525875e-08, 2.4923352270889154e-08
	.float 4.397303956623699e-25, 4.397303956623699e-25, 2.5285249449780167e-08, 2.5518078317077197e-08
	.float 2.5272600012726798e-08, 4.429616192339617e-25, 4.429616192339617e-25, 2.563450074433149e-08
	.float 2.586732961162852e-08, 2.5621847754564442e-08, 4.461928428055536e-25, 4.461928428055536e-25
	.float 2.5983752038882812e-08, 2.6216580906179843e-08, 2.5971095496402086e-08, 4.494240663771454e-25
	.float 4.494240663771454e-25, 2.6333003333434135e-08, 2.6565832200731165e-08, 2.632034323823973e-08
	.float 4.526552899487373e-25, 4.526552899487373e-25, 2.6682254627985458e-08, 2.6915083495282488e-08
	.float 2.6669590980077373e-08, 4.558865135203291e-25, 4.558865135203291e-25, 2.703150592253678e-08
	.float 2.726433478983381e-08, 2.7018838721915017e-08, 4.591177370919209e-25, 4.591177370919209e-25
	.float 2.7380757217088103e-08, 2.7613586084385133e-08, 2.736808646375266e-08, 4.623489606635128e-25
	.float 4.623489606635128e-25, 2.7730008511639426e-08, 2.7962837378936456e-08, 2.7717334205590305e-08
	.float 4.655801842351046e-25, 4.655801842351046e-25, 2.807925980619075e-08, 2.831208867348778e-08
	.float 2.806658194742795e-08, 4.688114078066965e-25, 4.688114078066965e-25, 2.842851110074207e-08
	.float 2.86613399680391e-08, 2.8415829689265593e-08, 4.720426313782883e-25, 4.720426313782883e-25
	.float 2.8777762395293394e-08, 2.9010591262590424e-08, 2.8765077431103236e-08, 4.752738549498801e-25
	.float 4.752738549498801e-25, 2.9127013689844716e-08, 2.9359842557141747e-08, 2.911432517294088e-08
	.float 4.78505078521472e-25, 4.78505078521472e-25, 2.947626498439604e-08, 2.970909385169307e-08
	.float 2.9463572914778524e-08, 4.817363020930638e-25, 4.817363020930638e-25, 2.984871017019941e-08
	.float 3.031436790479347e-08, 2.9823318925537023e-08, 4.849675256646557e-25, 4.849675256646557e-25
	.float 3.0547212759302056e-08, 3.1012870493896116e-08, 3.052181440921231e-08, 4.881987492362475e-25
	.float 4.881987492362475e-25, 3.12457153484047e-08, 3.171137308299876e-08, 3.12203098928876e-08
	.float 4.914299728078393e-25, 4.914299728078393e-25, 3.1944217937507347e-08, 3.240987567210141e-08
	.float 3.1918805376562887e-08, 4.946611963794312e-25, 4.946611963794312e-25, 3.264272052660999e-08
	.float 3.310837826120405e-08, 3.2617300860238174e-08, 4.97892419951023e-25, 4.97892419951023e-25
	.float 3.334122311571264e-08, 3.38068808503067e-08, 3.331579634391346e-08, 5.011236435226149e-25
	.float 5.011236435226149e-25, 3.403972570481528e-08, 3.450538343940934e-08, 3.401429182758875e-08
	.float 5.043548670942067e-25, 5.043548670942067e-25, 3.473822829391793e-08, 3.520388602851199e-08
	.float 3.471278731126404e-08, 5.0758609066579855e-25, 5.0758609066579855e-25, 3.543673088302057e-08
	.float 3.5902388617614633e-08, 3.5411282794939325e-08, 5.108173142373904e-25, 5.108173142373904e-25
	.float 3.613523347212322e-08, 3.660089120671728e-08, 3.610977827861461e-08, 5.140485378089822e-25
	.float 5.140485378089822e-25, 3.6833736061225864e-08, 3.7299393795819924e-08, 3.68082737622899e-08
	.float 5.172797613805741e-25, 5.172797613805741e-25, 3.753223865032851e-08, 3.799789638492257e-08
	.float 3.750676924596519e-08, 5.205109849521659e-25, 5.205109849521659e-25, 3.8230741239431154e-08
	.float 3.8696398974025215e-08, 3.8205264729640476e-08, 5.2374220852375775e-25, 5.2374220852375775e-25
	.float 3.89292438285338e-08, 3.939490156312786e-08, 3.8903760213315763e-08, 5.269734320953496e-25
	.float 5.269734320953496e-25, 3.9627746417636445e-08, 4.0093404152230505e-08, 3.960225569699105e-08
	.float 5.302046556669414e-25, 5.302046556669414e-25, 4.032624900673909e-08, 4.079190674133315e-08
	.float 4.030075118066634e-08, 5.334358792385333e-25, 5.334358792385333e-25, 4.1024751595841735e-08
	.float 4.1490409330435796e-08, 4.0999246664341626e-08, 5.366671028101251e-25, 5.366671028101251e-25
	.float 4.172325418494438e-08, 4.218891191953844e-08, 4.1697742148016914e-08, 5.39898326381717e-25
	.float 5.39898326381717e-25, 4.2421756774047026e-08, 4.2887414508641086e-08, 4.23962376316922e-08
	.float 5.431295499533088e-25, 5.431295499533088e-25, 4.312025936314967e-08, 4.358591709774373e-08
	.float 4.309473311536749e-08, 5.463607735249006e-25, 5.463607735249006e-25, 4.3818761952252316e-08
	.float 4.428441968684638e-08, 4.379322859904278e-08, 5.495919970964925e-25, 5.495919970964925e-25
	.float 4.451726454135496e-08, 4.498292227594902e-08, 4.4491724082718065e-08, 5.528232206680843e-25
	.float 5.528232206680843e-25, 4.521576713045761e-08, 4.568142486505167e-08, 4.519021956639335e-08
	.float 5.560544442396762e-25, 5.560544442396762e-25, 4.591426971956025e-08, 4.637992745415431e-08
	.float 4.588871505006864e-08, 5.59285667811268e-25, 5.59285667811268e-25, 4.66127723086629e-08
	.float 4.707843004325696e-08, 4.658721053374393e-08, 5.625168913828598e-25, 5.625168913828598e-25
	.float 4.731127489776554e-08, 4.77769326323596e-08, 4.7285706017419216e-08, 5.657481149544517e-25
	.float 5.657481149544517e-25, 4.800977748686819e-08, 4.847543522146225e-08, 4.7984201501094503e-08
	.float 5.689793385260435e-25, 5.689793385260435e-25, 4.8708280075970833e-08, 4.9173937810564894e-08
	.float 4.868269698476979e-08, 5.722105620976354e-25, 5.722105620976354e-25, 4.940678266507348e-08
	.float 4.987244039966754e-08, 4.938119246844508e-08, 5.754417856692272e-25, 5.754417856692272e-25
	.float 5.0105285254176124e-08, 5.0570942988770184e-08, 5.0079687952120366e-08, 5.78673009240819e-25
	.float 5.78673009240819e-25, 5.080378784327877e-08, 5.126944557787283e-08, 5.0778183435795654e-08
	.float 5.819042328124109e-25, 5.819042328124109e-25, 5.1502290432381415e-08, 5.1967948166975475e-08
	.float 5.147667891947094e-08, 5.851354563840027e-25, 5.851354563840027e-25, 5.220079302148406e-08
	.float 5.266645075607812e-08, 5.217517440314623e-08, 5.883666799555946e-25, 5.883666799555946e-25
	.float 5.2899295610586705e-08, 5.3364953345180766e-08, 5.287366988682152e-08, 5.915979035271864e-25
	.float 5.915979035271864e-25, 5.359779819968935e-08, 5.406345593428341e-08, 5.3572165370496805e-08
	.float 5.9482912709877825e-25, 5.9482912709877825e-25, 5.4296300788791996e-08, 5.4761958523386056e-08
	.float 5.427066085417209e-08, 5.980603506703701e-25, 5.980603506703701e-25, 5.499480337789464e-08
	.float 5.54604611124887e-08, 5.496915633784738e-08, 6.012915742419619e-25, 6.012915742419619e-25
	.float 5.5693305966997286e-08, 5.615896370159135e-08, 5.566765182152267e-08, 6.045227978135538e-25
	.float 6.045227978135538e-25, 5.639180855609993e-08, 5.685746629069399e-08, 5.6366147305197956e-08
	.float 6.077540213851456e-25, 6.077540213851456e-25, 5.709031114520258e-08, 5.755596887979664e-08
	.float 5.706464278887324e-08, 6.1098524495673745e-25, 6.1098524495673745e-25, 5.778881373430522e-08
	.float 5.825447146889928e-08, 5.776313827254853e-08, 6.142164685283293e-25, 6.142164685283293e-25
	.float 5.848731632340787e-08, 5.895297405800193e-08, 5.846163375622382e-08, 6.174476920999211e-25
	.float 6.174476920999211e-25, 5.918581891251051e-08, 5.969830851881852e-08, 5.9160129239899106e-08
	.float 6.20678915671513e-25, 6.20678915671513e-25, 6.016399822783569e-08, 6.109531369702381e-08
	.float 6.011260467175816e-08, 6.239101392431048e-25, 6.239101392431048e-25, 6.156100340604098e-08
	.float 6.24923188752291e-08, 6.150959563910874e-08, 6.2714136281469665e-25, 6.2714136281469665e-25
	.float 6.295800858424627e-08, 6.388932405343439e-08, 6.290658660645931e-08, 6.303725863862885e-25
	.float 6.303725863862885e-25, 6.435501376245156e-08, 6.528632923163968e-08, 6.430357757380989e-08
	.float 6.336038099578803e-25, 6.336038099578803e-25, 6.575201894065685e-08, 6.668333440984497e-08
	.float 6.570056854116046e-08, 6.368350335294722e-25, 6.368350335294722e-25, 6.714902411886214e-08
	.float 6.808033958805026e-08, 6.709755950851104e-08, 6.40066257101064e-25, 6.40066257101064e-25
	.float 6.854602929706743e-08, 6.947734476625556e-08, 6.849455047586162e-08, 6.432974806726559e-25
	.float 6.432974806726559e-25, 6.994303447527273e-08, 7.087434994446085e-08, 6.989154144321219e-08
	.float 6.465287042442477e-25, 6.465287042442477e-25, 7.134003965347802e-08, 7.227135512266614e-08
	.float 7.128853241056277e-08, 6.497599278158395e-25, 6.497599278158395e-25, 7.27370448316833e-08
	.float 7.366836030087143e-08, 7.268552337791334e-08, 6.529911513874314e-25, 6.529911513874314e-25
	.float 7.41340500098886e-08, 7.506536547907672e-08, 7.408251434526392e-08, 6.562223749590232e-25
	.float 6.562223749590232e-25, 7.553105518809389e-08, 7.646237065728201e-08, 7.547950531261449e-08
	.float 6.594535985306151e-25, 6.594535985306151e-25, 7.692806036629918e-08, 7.78593758354873e-08
	.float 7.687649627996507e-08, 6.626848221022069e-25, 6.626848221022069e-25, 7.832506554450447e-08
	.float 7.925638101369259e-08, 7.827348724731564e-08, 6.659160456737987e-25, 6.659160456737987e-25
	.float 7.972207072270976e-08, 8.065338619189788e-08, 7.967047821466622e-08, 6.691472692453906e-25
	.float 6.691472692453906e-25, 8.111907590091505e-08, 8.205039137010317e-08, 8.10674691820168e-08
	.float 6.723784928169824e-25, 6.723784928169824e-25, 8.251608107912034e-08, 8.344739654830846e-08
	.float 8.246446014936737e-08, 6.756097163885743e-25, 6.756097163885743e-25, 8.391308625732563e-08
	.float 8.484440172651375e-08, 8.386145111671794e-08, 6.788409399601661e-25, 6.788409399601661e-25
	.float 8.531009143553092e-08, 8.624140690471904e-08, 8.525844208406852e-08, 6.820721635317579e-25
	.float 6.820721635317579e-25, 8.670709661373621e-08, 8.763841208292433e-08, 8.66554330514191e-08
	.float 6.853033871033498e-25, 6.853033871033498e-25, 8.81041017919415e-08, 8.903541726112962e-08
	.float 8.805242401876967e-08, 6.885346106749416e-25, 6.885346106749416e-25, 8.950110697014679e-08
	.float 9.043242243933491e-08, 8.944941498612025e-08, 6.917658342465335e-25, 6.917658342465335e-25
	.float 9.089811214835208e-08, 9.18294276175402e-08, 9.084640595347082e-08, 6.949970578181253e-25
	.float 6.949970578181253e-25, 9.229511732655737e-08, 9.32264327957455e-08, 9.22433969208214e-08
	.float 6.9822828138971715e-25, 6.9822828138971715e-25, 9.369212250476266e-08, 9.462343797395079e-08
	.float 9.364038788817197e-08, 7.01459504961309e-25, 7.01459504961309e-25, 9.508912768296796e-08
	.float 9.602044315215608e-08, 9.503737885552255e-08, 7.046907285329008e-25, 7.046907285329008e-25
	.float 9.648613286117325e-08, 9.741744833036137e-08, 9.643436982287312e-08, 7.079219521044927e-25
	.float 7.079219521044927e-25, 9.788313803937854e-08, 9.881445350856666e-08, 9.78313607902237e-08
	.float 7.111531756760845e-25, 7.111531756760845e-25, 9.928014321758383e-08, 1.0021145868677195e-07
	.float 9.922835175757427e-08, 7.1438439924767635e-25, 7.1438439924767635e-25, 1.0067714839578912e-07
	.float 1.0160846386497724e-07, 1.0062534272492485e-07, 7.176156228192682e-25, 7.176156228192682e-25
	.float 1.0207415357399441e-07, 1.0300546904318253e-07, 1.0202233369227542e-07, 7.2084684639086e-25
	.float 7.2084684639086e-25, 1.034711587521997e-07, 1.0440247422138782e-07, 1.03419324659626e-07
	.float 7.240780699624519e-25, 7.240780699624519e-25, 1.0486816393040499e-07, 1.0579947939959311e-07
	.float 1.0481631562697658e-07, 7.273092935340437e-25, 7.273092935340437e-25, 1.0626516910861028e-07
	.float 1.071964845777984e-07, 1.0621330659432715e-07, 7.305405171056356e-25, 7.305405171056356e-25
	.float 1.0766217428681557e-07, 1.0859348975600369e-07, 1.0761029756167773e-07, 7.337717406772274e-25
	.float 7.337717406772274e-25, 1.0905917946502086e-07, 1.0999049493420898e-07, 1.090072885290283e-07
	.float 7.370029642488192e-25, 7.370029642488192e-25, 1.1045618464322615e-07, 1.1138750011241427e-07
	.float 1.1040427949637888e-07, 7.402341878204111e-25, 7.402341878204111e-25, 1.1185318982143144e-07
	.float 1.1278450529061956e-07, 1.1180127046372945e-07, 7.434654113920029e-25, 7.434654113920029e-25
	.float 1.1325019499963673e-07, 1.1418151046882485e-07, 1.1319826143108003e-07, 7.466966349635948e-25
	.float 7.466966349635948e-25, 1.1464720017784202e-07, 1.1557851564703014e-07, 1.145952523984306e-07
	.float 7.499278585351866e-25, 7.499278585351866e-25, 1.1604420535604731e-07, 1.1697552082523544e-07
	.float 1.1599224336578118e-07, 7.531590821067784e-25, 7.531590821067784e-25, 1.174412105342526e-07
	.float 1.1837252600344073e-07, 1.1738923433313175e-07, 7.563903056783703e-25, 7.563903056783703e-25
	.float 1.188382157124579e-07, 1.2032977281251078e-07, 1.1878622530048233e-07, 7.596215292499621e-25
	.float 7.596215292499621e-25, 1.2126115223054512e-07, 1.2312378316892136e-07, 1.2115714298488456e-07
	.float 7.62852752821554e-25, 7.62852752821554e-25, 1.240551625869557e-07, 1.2591779352533194e-07
	.float 1.239511249195857e-07, 7.660839763931458e-25, 7.660839763931458e-25, 1.2684917294336628e-07
	.float 1.2871180388174253e-07, 1.2674510685428686e-07, 7.693151999647376e-25, 7.693151999647376e-25
	.float 1.2964318329977687e-07, 1.315058142381531e-07, 1.29539088788988e-07, 7.725464235363295e-25
	.float 7.725464235363295e-25, 1.3243719365618745e-07, 1.342998245945637e-07, 1.3233307072368916e-07
	.float 7.757776471079213e-25, 7.757776471079213e-25, 1.3523120401259803e-07, 1.3709383495097427e-07
	.float 1.351270526583903e-07, 7.790088706795132e-25, 7.790088706795132e-25, 1.380252143690086e-07
	.float 1.3988784530738485e-07, 1.3792103459309146e-07, 7.82240094251105e-25, 7.82240094251105e-25
	.float 1.408192247254192e-07, 1.4268185566379543e-07, 1.4071501652779261e-07, 7.8547131782269685e-25
	.float 7.8547131782269685e-25, 1.4361323508182977e-07, 1.45475866020206e-07, 1.4350899846249376e-07
	.float 7.887025413942887e-25, 7.887025413942887e-25, 1.4640724543824035e-07, 1.482698763766166e-07
	.float 1.4630298039719491e-07, 7.919337649658805e-25, 7.919337649658805e-25, 1.4920125579465093e-07
	.float 1.5106388673302718e-07, 1.4909696233189607e-07, 7.951649885374724e-25, 7.951649885374724e-25
	.float 1.5199526615106151e-07, 1.5385789708943776e-07, 1.5189094426659722e-07, 7.983962121090642e-25
	.float 7.983962121090642e-25, 1.547892765074721e-07, 1.5665190744584834e-07, 1.5468492620129837e-07
	.float 8.0162743568065605e-25, 8.0162743568065605e-25, 1.5758328686388268e-07, 1.5944591780225892e-07
	.float 1.5747890813599952e-07, 8.048586592522479e-25, 8.048586592522479e-25, 1.6037729722029326e-07
	.float 1.622399281586695e-07, 1.6027289007070067e-07, 8.080898828238397e-25, 8.080898828238397e-25
	.float 1.6317130757670384e-07, 1.6503393851508008e-07, 1.6306687200540182e-07, 8.113211063954316e-25
	.float 8.113211063954316e-25, 1.6596531793311442e-07, 1.6782794887149066e-07, 1.6586085394010297e-07
	.float 8.145523299670234e-25, 8.145523299670234e-25, 1.68759328289525e-07, 1.7062195922790124e-07
	.float 1.6865483587480412e-07, 8.1778355353861525e-25, 8.1778355353861525e-25, 1.7155333864593558e-07
	.float 1.7341596958431182e-07, 1.7144881780950527e-07, 8.210147771102071e-25, 8.210147771102071e-25
	.float 1.7434734900234616e-07, 1.762099799407224e-07, 1.7424279974420642e-07, 8.242460006817989e-25
	.float 8.242460006817989e-25, 1.7714135935875674e-07, 1.7900399029713299e-07, 1.7703678167890757e-07
	.float 8.277738359537539e-25, 8.277738359537539e-25, 1.7993536971516733e-07, 1.8179800065354357e-07
	.float 1.7983076361360872e-07, 8.342362830969376e-25, 8.342362830969376e-25, 1.827293800715779e-07
	.float 1.8459201100995415e-07, 1.8262474554830987e-07, 8.406987302401212e-25, 8.406987302401212e-25
	.float 1.855233904279885e-07, 1.8738602136636473e-07, 1.8541872748301103e-07, 8.47161177383305e-25
	.float 8.47161177383305e-25, 1.8831740078439907e-07, 1.901800317227753e-07, 1.8821270941771218e-07
	.float 8.536236245264886e-25, 8.536236245264886e-25, 1.9111141114080965e-07, 1.929740420791859e-07
	.float 1.9100669135241333e-07, 8.600860716696723e-25, 8.600860716696723e-25, 1.9390542149722023e-07
	.float 1.9576805243559647e-07, 1.9380067328711448e-07, 8.66548518812856e-25, 8.66548518812856e-25
	.float 1.966994318536308e-07, 1.9856206279200705e-07, 1.9659465522181563e-07, 8.730109659560396e-25
	.float 8.730109659560396e-25, 1.994934422100414e-07, 2.0135607314841764e-07, 1.9938863715651678e-07
	.float 8.794734130992233e-25, 8.794734130992233e-25, 2.0228745256645198e-07, 2.0415008350482822e-07
	.float 2.0218261909121793e-07, 8.85935860242407e-25, 8.85935860242407e-25, 2.0508146292286256e-07
	.float 2.069440938612388e-07, 2.0497660102591908e-07, 8.923983073855907e-25, 8.923983073855907e-25
	.float 2.0787547327927314e-07, 2.0973810421764938e-07, 2.0777058296062023e-07, 8.988607545287744e-25
	.float 8.988607545287744e-25, 2.1066948363568372e-07, 2.1253211457405996e-07, 2.1056456489532138e-07
	.float 9.05323201671958e-25, 9.05323201671958e-25, 2.134634939920943e-07, 2.1532612493047054e-07
	.float 2.1335854683002253e-07, 9.117856488151417e-25, 9.117856488151417e-25, 2.1625750434850488e-07
	.float 2.1812013528688112e-07, 2.1615252876472368e-07, 9.182480959583254e-25, 9.182480959583254e-25
	.float 2.1905151470491546e-07, 2.209141456432917e-07, 2.1894651069942483e-07, 9.247105431015091e-25
	.float 9.247105431015091e-25, 2.2184552506132604e-07, 2.2370815599970229e-07, 2.2174049263412599e-07
	.float 9.311729902446928e-25, 9.311729902446928e-25, 2.2463953541773662e-07, 2.2650216635611287e-07
	.float 2.2453447456882714e-07, 9.376354373878765e-25, 9.376354373878765e-25, 2.274335457741472e-07
	.float 2.2929617671252345e-07, 2.2732845650352829e-07, 9.440978845310601e-25, 9.440978845310601e-25
	.float 2.3022755613055779e-07, 2.3209018706893403e-07, 2.3012243843822944e-07, 9.505603316742438e-25
	.float 9.505603316742438e-25, 2.3302156648696837e-07, 2.348841974253446e-07, 2.329164203729306e-07
	.float 9.570227788174275e-25, 9.570227788174275e-25, 2.3581557684337895e-07, 2.376782077817552e-07
	.float 2.3571040230763174e-07, 9.634852259606112e-25, 9.634852259606112e-25, 2.3880059529801656e-07
	.float 2.4252585717476904e-07, 2.385901893831033e-07, 9.699476731037949e-25, 9.699476731037949e-25
	.float 2.443886160108377e-07, 2.481138778875902e-07, 2.441781532525056e-07, 9.764101202469785e-25
	.float 9.764101202469785e-25, 2.499766367236589e-07, 2.5370189860041137e-07, 2.497661171219079e-07
	.float 9.828725673901622e-25, 9.828725673901622e-25, 2.5556465743648005e-07, 2.5928991931323253e-07
	.float 2.553540809913102e-07, 9.89335014533346e-25, 9.89335014533346e-25, 2.611526781493012e-07
	.float 2.648779400260537e-07, 2.609420448607125e-07, 9.957974616765296e-25, 9.957974616765296e-25
	.float 2.6674069886212237e-07, 2.7046596073887486e-07, 2.665300087301148e-07, 1.0022599088197133e-24
	.float 1.0022599088197133e-24, 2.7232871957494353e-07, 2.76053981451696e-07, 2.721179725995171e-07
	.float 1.008722355962897e-24, 1.008722355962897e-24, 2.779167402877647e-07, 2.816420021645172e-07
	.float 2.777059364689194e-07, 1.0151848031060806e-24, 1.0151848031060806e-24, 2.8350476100058586e-07
	.float 2.8723002287733834e-07, 2.832939003383217e-07, 1.0216472502492643e-24, 1.0216472502492643e-24
	.float 2.89092781713407e-07, 2.928180435901595e-07, 2.88881864207724e-07, 1.028109697392448e-24
	.float 1.028109697392448e-24, 2.946808024262282e-07, 2.9840606430298067e-07, 2.944698280771263e-07
	.float 1.0345721445356317e-24, 1.0345721445356317e-24, 3.0026882313904935e-07, 3.0399408501580183e-07
	.float 3.000577919465286e-07, 1.0410345916788154e-24, 1.0410345916788154e-24, 3.058568438518705e-07
	.float 3.09582105728623e-07, 3.056457558159309e-07, 1.047497038821999e-24, 1.047497038821999e-24
	.float 3.1144486456469167e-07, 3.1517012644144415e-07, 3.112337196853332e-07, 1.0539594859651827e-24
	.float 1.0539594859651827e-24, 3.1703288527751283e-07, 3.207581471542653e-07, 3.168216835547355e-07
	.float 1.0604219331083664e-24, 1.0604219331083664e-24, 3.22620905990334e-07, 3.263461678670865e-07
	.float 3.224096474241378e-07, 1.06688438025155e-24, 1.06688438025155e-24, 3.2820892670315516e-07
	.float 3.3193418857990764e-07, 3.279976112935401e-07, 1.0733468273947338e-24, 1.0733468273947338e-24
	.float 3.337969474159763e-07, 3.375222092927288e-07, 3.335855751629424e-07, 1.0798092745379174e-24
	.float 1.0798092745379174e-24, 3.393849681287975e-07, 3.4311023000554997e-07, 3.391735390323447e-07
	.float 1.0862717216811011e-24, 1.0862717216811011e-24, 3.4497298884161864e-07, 3.4869825071837113e-07
	.float 3.44761502901747e-07, 1.0927341688242848e-24, 1.0927341688242848e-24, 3.505610095544398e-07
	.float 3.542862714311923e-07, 3.503494667711493e-07, 1.0991966159674685e-24, 1.0991966159674685e-24
	.float 3.5614903026726097e-07, 3.5987429214401345e-07, 3.559374306405516e-07, 1.1056590631106522e-24
	.float 1.1056590631106522e-24, 3.6173705098008213e-07, 3.654623128568346e-07, 3.615253945099539e-07
	.float 1.1121215102538359e-24, 1.1121215102538359e-24, 3.673250716929033e-07, 3.710503335696558e-07
	.float 3.671133583793562e-07, 1.1185839573970195e-24, 1.1185839573970195e-24, 3.7291309240572446e-07
	.float 3.7663835428247694e-07, 3.727013222487585e-07, 1.1250464045402032e-24, 1.1250464045402032e-24
	.float 3.785011131185456e-07, 3.822263749952981e-07, 3.782892861181608e-07, 1.1315088516833869e-24
	.float 1.1315088516833869e-24, 3.840891338313668e-07, 3.8781439570811926e-07, 3.838772499875631e-07
	.float 1.1379712988265706e-24, 1.1379712988265706e-24, 3.8967715454418794e-07, 3.934024164209404e-07
	.float 3.894652138569654e-07, 1.1444337459697543e-24, 1.1444337459697543e-24, 3.952651752570091e-07
	.float 3.989904371337616e-07, 3.950531777263677e-07, 1.150896193112938e-24, 1.150896193112938e-24
	.float 4.0085319596983027e-07, 4.0457845784658275e-07, 4.0064114159577e-07, 1.1573586402561216e-24
	.float 1.1573586402561216e-24, 4.0644121668265143e-07, 4.101664785594039e-07, 4.062291054651723e-07
	.float 1.1638210873993053e-24, 1.1638210873993053e-24, 4.120292373954726e-07, 4.157544992722251e-07
	.float 4.118170693345746e-07, 1.170283534542489e-24, 1.170283534542489e-24, 4.1761725810829375e-07
	.float 4.2134251998504624e-07, 4.1740503320397693e-07, 1.1767459816856727e-24, 1.1767459816856727e-24
	.float 4.232052788211149e-07, 4.269305406978674e-07, 4.2299299707337923e-07, 1.1832084288288563e-24
	.float 1.1832084288288563e-24, 4.287932995339361e-07, 4.3251856141068856e-07, 4.2858096094278153e-07
	.float 1.18967087597204e-24, 1.18967087597204e-24, 4.3438132024675724e-07, 4.381065821235097e-07
	.float 4.3416892481218383e-07, 1.1961333231152237e-24, 1.1961333231152237e-24, 4.399693409595784e-07
	.float 4.436946028363309e-07, 4.3975688868158613e-07, 1.2025957702584074e-24, 1.2025957702584074e-24
	.float 4.4555736167239957e-07, 4.4928262354915205e-07, 4.4534485255098843e-07, 1.209058217401591e-24
	.float 1.209058217401591e-24, 4.5114538238522073e-07, 4.548706442619732e-07, 4.5093281642039074e-07
	.float 1.2155206645447748e-24, 1.2155206645447748e-24, 4.567334030980419e-07, 4.604586649747944e-07
	.float 4.5652078028979304e-07, 1.2219831116879584e-24, 1.2219831116879584e-24, 4.6232142381086305e-07
	.float 4.6604668568761554e-07, 4.6210874415919534e-07, 1.2284455588311421e-24, 1.2284455588311421e-24
	.float 4.679094445236842e-07, 4.716347064004367e-07, 4.6769670802859764e-07, 1.2349080059743258e-24
	.float 1.2349080059743258e-24, 4.734974652365054e-07, 4.776082960233907e-07, 4.7328467189799994e-07
	.float 1.2413704531175095e-24, 1.2413704531175095e-24, 4.813338136955281e-07, 4.88784337449033e-07
	.float 4.809081133316795e-07, 1.2478329002606932e-24, 1.2478329002606932e-24, 4.925098551211704e-07
	.float 4.999603788746754e-07, 4.920840410704841e-07, 1.2542953474038768e-24, 1.2542953474038768e-24
	.float 5.036858965468127e-07, 5.111364203003177e-07, 5.032599688092887e-07, 1.2607577945470605e-24
	.float 1.2607577945470605e-24, 5.14861937972455e-07, 5.2231246172596e-07, 5.144358965480933e-07
	.float 1.2672202416902442e-24, 1.2672202416902442e-24, 5.260379793980974e-07, 5.334885031516023e-07
	.float 5.256118242868979e-07, 1.2736826888334279e-24, 1.2736826888334279e-24, 5.372140208237397e-07
	.float 5.446645445772447e-07, 5.367877520257025e-07, 1.2801451359766116e-24, 1.2801451359766116e-24
	.float 5.48390062249382e-07, 5.55840586002887e-07, 5.479636797645071e-07, 1.2866075831197953e-24
	.float 1.2866075831197953e-24, 5.595661036750244e-07, 5.670166274285293e-07, 5.591396075033117e-07
	.float 1.293070030262979e-24, 1.293070030262979e-24, 5.707421451006667e-07, 5.781926688541716e-07
	.float 5.703155352421163e-07, 1.2995324774061626e-24, 1.2995324774061626e-24, 5.81918186526309e-07
	.float 5.89368710279814e-07, 5.814914629809209e-07, 1.3059949245493463e-24, 1.3059949245493463e-24
	.float 5.930942279519513e-07, 6.005447517054563e-07, 5.926673907197255e-07, 1.31245737169253e-24
	.float 1.31245737169253e-24, 6.042702693775936e-07, 6.117207931310986e-07, 6.038433184585301e-07
	.float 1.3189198188357137e-24, 1.3189198188357137e-24, 6.15446310803236e-07, 6.228968345567409e-07
	.float 6.150192461973347e-07, 1.3253822659788973e-24, 1.3253822659788973e-24, 6.266223522288783e-07
	.float 6.340728759823833e-07, 6.261951739361393e-07, 1.331844713122081e-24, 1.331844713122081e-24
	.float 6.377983936545206e-07, 6.452489174080256e-07, 6.373711016749439e-07, 1.3383071602652647e-24
	.float 1.3383071602652647e-24, 6.48974435080163e-07, 6.564249588336679e-07, 6.485470294137485e-07
	.float 1.3447696074084484e-24, 1.3447696074084484e-24, 6.601504765058053e-07, 6.676010002593102e-07
	.float 6.597229571525531e-07, 1.351232054551632e-24, 1.351232054551632e-24, 6.713265179314476e-07
	.float 6.787770416849526e-07, 6.708988848913577e-07, 1.3576945016948157e-24, 1.3576945016948157e-24
	.float 6.825025593570899e-07, 6.899530831105949e-07, 6.820748126301623e-07, 1.3641569488379994e-24
	.float 1.3641569488379994e-24, 6.936786007827322e-07, 7.011291245362372e-07, 6.932507403689669e-07
	.float 1.3706193959811831e-24, 1.3706193959811831e-24, 7.048546422083746e-07, 7.123051659618795e-07
	.float 7.044266681077715e-07, 1.3770818431243668e-24, 1.3770818431243668e-24, 7.160306836340169e-07
	.float 7.234812073875219e-07, 7.156025958465762e-07, 1.3835442902675505e-24, 1.3835442902675505e-24
	.float 7.272067250596592e-07, 7.346572488131642e-07, 7.267785235853808e-07, 1.3900067374107342e-24
	.float 1.3900067374107342e-24, 7.383827664853015e-07, 7.458332902388065e-07, 7.379544513241854e-07
	.float 1.3964691845539178e-24, 1.3964691845539178e-24, 7.495588079109439e-07, 7.570093316644488e-07
	.float 7.4913037906299e-07, 1.4029316316971015e-24, 1.4029316316971015e-24, 7.607348493365862e-07
	.float 7.681853730900912e-07, 7.603063068017946e-07, 1.4093940788402852e-24, 1.4093940788402852e-24
	.float 7.719108907622285e-07, 7.793614145157335e-07, 7.714822345405992e-07, 1.4158565259834689e-24
	.float 1.4158565259834689e-24, 7.830869321878708e-07, 7.905374559413758e-07, 7.826581622794038e-07
	.float 1.4223189731266526e-24, 1.4223189731266526e-24, 7.942629736135132e-07, 8.017134973670181e-07
	.float 7.938340900182084e-07, 1.4287814202698362e-24, 1.4287814202698362e-24, 8.054390150391555e-07
	.float 8.128895387926605e-07, 8.05010017757013e-07, 1.43524386741302e-24, 1.43524386741302e-24
	.float 8.166150564647978e-07, 8.240655802183028e-07, 8.161859454958176e-07, 1.4417063145562036e-24
	.float 1.4417063145562036e-24, 8.277910978904401e-07, 8.352416216439451e-07, 8.273618732346222e-07
	.float 1.4481687616993873e-24, 1.4481687616993873e-24, 8.389671393160825e-07, 8.464176630695874e-07
	.float 8.385378009734268e-07, 1.454631208842571e-24, 1.454631208842571e-24, 8.501431807417248e-07
	.float 8.575937044952298e-07, 8.497137287122314e-07, 1.4610936559857546e-24, 1.4610936559857546e-24
	.float 8.613192221673671e-07, 8.687697459208721e-07, 8.60889656451036e-07, 1.4675561031289383e-24
	.float 1.4675561031289383e-24, 8.724952635930094e-07, 8.799457873465144e-07, 8.720655841898406e-07
	.float 1.474018550272122e-24, 1.474018550272122e-24, 8.836713050186518e-07, 8.911218287721567e-07
	.float 8.832415119286452e-07, 1.4804809974153057e-24, 1.4804809974153057e-24, 8.948473464442941e-07
	.float 9.022978701977991e-07, 8.944174396674498e-07, 1.4869434445584894e-24, 1.4869434445584894e-24
	.float 9.060233878699364e-07, 9.134739116234414e-07, 9.055933674062544e-07, 1.493405891701673e-24
	.float 1.493405891701673e-24, 9.171994292955787e-07, 9.246499530490837e-07, 9.16769295145059e-07
	.float 1.4998683388448567e-24, 1.4998683388448567e-24, 9.283754707212211e-07, 9.35825994474726e-07
	.float 9.279452228838636e-07, 1.5063307859880404e-24, 1.5063307859880404e-24, 9.395515121468634e-07
	.float 9.470020359003684e-07, 9.391211506226682e-07, 1.5127932331312241e-24, 1.5127932331312241e-24
	.float 9.507275535725057e-07, 9.626818382457714e-07, 9.502970783614728e-07, 1.5192556802744078e-24
	.float 1.5192556802744078e-24, 9.70132873590046e-07, 9.85033921097056e-07, 9.692716957943048e-07
	.float 1.5257181274175915e-24, 1.5257181274175915e-24, 9.924849564413307e-07, 1.0073860039483407e-06
	.float 9.91623551271914e-07, 1.5321805745607751e-24, 1.5321805745607751e-24, 1.0148370392926154e-06
	.float 1.0297380867996253e-06, 1.0139754067495232e-06, 1.5386430217039588e-24, 1.5386430217039588e-24
	.float 1.0371891221439e-06, 1.05209016965091e-06, 1.0363272622271325e-06, 1.5451054688471425e-24
	.float 1.5451054688471425e-24, 1.0595412049951847e-06, 1.0744422525021946e-06, 1.0586791177047417e-06
	.float 1.5515679159903262e-24, 1.5515679159903262e-24, 1.0818932878464693e-06, 1.0967943353534793e-06
	.float 1.0810309731823509e-06, 1.5580303631335099e-24, 1.5580303631335099e-24, 1.104245370697754e-06
	.float 1.119146418204764e-06, 1.10338282865996e-06, 1.5644928102766935e-24, 1.5644928102766935e-24
	.float 1.1265974535490386e-06, 1.1414985010560486e-06, 1.1257346841375693e-06, 1.5709552574198772e-24
	.float 1.5709552574198772e-24, 1.1489495364003233e-06, 1.1638505839073332e-06, 1.1480865396151785e-06
	.float 1.577417704563061e-24, 1.577417704563061e-24, 1.171301619251608e-06, 1.1862026667586179e-06
	.float 1.1704383950927877e-06, 1.5838801517062446e-24, 1.5838801517062446e-24, 1.1936537021028926e-06
	.float 1.2085547496099025e-06, 1.1927902505703969e-06, 1.5903425988494283e-24, 1.5903425988494283e-24
	.float 1.2160057849541772e-06, 1.2309068324611872e-06, 1.215142106048006e-06, 1.596805045992612e-24
	.float 1.596805045992612e-24, 1.2383578678054619e-06, 1.2532589153124718e-06, 1.2374939615256153e-06
	.float 1.6032674931357956e-24, 1.6032674931357956e-24, 1.2607099506567465e-06, 1.2756109981637564e-06
	.float 1.2598458170032245e-06, 1.6097299402789793e-24, 1.6097299402789793e-24, 1.2830620335080312e-06
	.float 1.297963081015041e-06, 1.2821976724808337e-06, 1.616192387422163e-24, 1.616192387422163e-24
	.float 1.3054141163593158e-06, 1.3203151638663257e-06, 1.304549527958443e-06, 1.6226548345653467e-24
	.float 1.6226548345653467e-24, 1.3277661992106005e-06, 1.3426672467176104e-06, 1.3269013834360521e-06
	.float 1.6291172817085304e-24, 1.6291172817085304e-24, 1.3501182820618851e-06, 1.365019329568895e-06
	.float 1.3492532389136613e-06, 1.635579728851714e-24, 1.635579728851714e-24, 1.3724703649131698e-06
	.float 1.3873714124201797e-06, 1.3716050943912705e-06, 1.6420421759948977e-24, 1.6420421759948977e-24
	.float 1.3948224477644544e-06, 1.4097234952714643e-06, 1.3939569498688797e-06, 1.6485046231380814e-24
	.float 1.6485046231380814e-24, 1.417174530615739e-06, 1.432075578122749e-06, 1.416308805346489e-06
	.float 1.655572915456475e-24, 1.655572915456475e-24, 1.4395266134670237e-06, 1.4544276609740336e-06
	.float 1.4386606608240982e-06, 1.6684978097428422e-24, 1.6684978097428422e-24, 1.4618786963183084e-06
	.float 1.4767797438253183e-06, 1.4610125163017074e-06, 1.6814227040292095e-24, 1.6814227040292095e-24
	.float 1.484230779169593e-06, 1.499131826676603e-06, 1.4833643717793166e-06, 1.694347598315577e-24
	.float 1.694347598315577e-24, 1.5065828620208777e-06, 1.5214839095278876e-06, 1.5057162272569258e-06
	.float 1.7072724926019443e-24, 1.7072724926019443e-24, 1.5289349448721623e-06, 1.5438359923791722e-06
	.float 1.528068082734535e-06, 1.7201973868883116e-24, 1.7201973868883116e-24, 1.551287027723447e-06
	.float 1.5661880752304569e-06, 1.5504199382121442e-06, 1.733122281174679e-24, 1.733122281174679e-24
	.float 1.5736391105747316e-06, 1.5885401580817415e-06, 1.5727717936897534e-06, 1.7460471754610464e-24
	.float 1.7460471754610464e-24, 1.5959911934260163e-06, 1.6108922409330262e-06, 1.5951236491673626e-06
	.float 1.7589720697474137e-24, 1.7589720697474137e-24, 1.618343276277301e-06, 1.6332443237843108e-06
	.float 1.6174755046449718e-06, 1.771896964033781e-24, 1.771896964033781e-24, 1.6406953591285856e-06
	.float 1.6555964066355955e-06, 1.639827360122581e-06, 1.7848218583201485e-24, 1.7848218583201485e-24
	.float 1.6630474419798702e-06, 1.6779484894868801e-06, 1.6621792156001902e-06, 1.7977467526065158e-24
	.float 1.7977467526065158e-24, 1.6853995248311548e-06, 1.7003005723381648e-06, 1.6845310710777994e-06
	.float 1.810671646892883e-24, 1.810671646892883e-24, 1.7077516076824395e-06, 1.7226526551894494e-06
	.float 1.7068829265554086e-06, 1.8235965411792505e-24, 1.8235965411792505e-24, 1.7301036905337241e-06
	.float 1.745004738040734e-06, 1.7292347820330178e-06, 1.836521435465618e-24, 1.836521435465618e-24
	.float 1.7524557733850088e-06, 1.7673568208920187e-06, 1.751586637510627e-06, 1.8494463297519853e-24
	.float 1.8494463297519853e-24, 1.7748078562362934e-06, 1.7897089037433034e-06, 1.7739384929882362e-06
	.float 1.8623712240383526e-24, 1.8623712240383526e-24, 1.797159939087578e-06, 1.812060986594588e-06
	.float 1.7962903484658455e-06, 1.87529611832472e-24, 1.87529611832472e-24, 1.8195120219388627e-06
	.float 1.8344130694458727e-06, 1.8186422039434547e-06, 1.8882210126110874e-24, 1.8882210126110874e-24
	.float 1.8418641047901474e-06, 1.8567651522971573e-06, 1.8409940594210639e-06, 1.9011459068974547e-24
	.float 1.9011459068974547e-24, 1.864216187641432e-06, 1.879117235148442e-06, 1.863345914898673e-06
	.float 1.914070801183822e-24, 1.914070801183822e-24, 1.8865682704927167e-06, 1.9014693179997266e-06
	.float 1.8856977703762823e-06, 1.9269956954701894e-24, 1.9269956954701894e-24, 1.9104920738755027e-06
	.float 1.9402941688895226e-06, 1.908750618895283e-06, 1.9399205897565568e-24, 1.9399205897565568e-24
	.float 1.955196239578072e-06, 1.984998334592092e-06, 1.9534543298505014e-06, 1.952845484042924e-24
	.float 1.952845484042924e-24, 1.9999004052806413e-06, 2.029702500294661e-06, 1.99815804080572e-06
	.float 1.9657703783292915e-24, 1.9657703783292915e-24, 2.0446045709832106e-06, 2.0744066659972304e-06
	.float 2.042861751760938e-06, 1.978695272615659e-24, 1.978695272615659e-24, 2.08930873668578e-06
	.float 2.1191108316997997e-06, 2.0875654627161566e-06, 1.9916201669020263e-24, 1.9916201669020263e-24
	.float 2.134012902388349e-06, 2.163814997402369e-06, 2.132269173671375e-06, 2.0045450611883936e-24
	.float 2.0045450611883936e-24, 2.1787170680909185e-06, 2.2085191631049383e-06, 2.1769728846265934e-06
	.float 2.017469955474761e-24, 2.017469955474761e-24, 2.2234212337934878e-06, 2.2532233288075076e-06
	.float 2.221676595581812e-06, 2.0303948497611283e-24, 2.0303948497611283e-24, 2.268125399496057e-06
	.float 2.297927494510077e-06, 2.2663803065370303e-06, 2.0433197440474957e-24, 2.0433197440474957e-24
	.float 2.3128295651986264e-06, 2.3426316602126462e-06, 2.3110840174922487e-06, 2.056244638333863e-24
	.float 2.056244638333863e-24, 2.3575337309011957e-06, 2.3873358259152155e-06, 2.355787728447467e-06
	.float 2.0691695326202304e-24, 2.0691695326202304e-24
.global lbl_8046FA40
lbl_8046FA40:
	.incbin "baserom.dol", 0x46BB40, 0x24C0
.global lbl_80471F00
lbl_80471F00:
	.float 1.3592595103950726e-43, 1.401298464324817e-44, 0.0, 0.0
	.float -6.531508194156545e-39, 1.3592595103950726e-42, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 1.401298464324817e-45
	.float 4.3076862923096227e-35, 9.670391180641329e-32, 2.28814247792306e-28, 6.502424795094045e-33
	.float 1.5488485094570132e-29, 1.7682435761204166e-34, 3.977020884877145e-31, 9.53126936851699e-28
	.float 8.813575993189253e-33, 2.0221722748269118e-29, 1.7832901333996823e-34, 4.038651583493017e-31
	.float 9.657489039282297e-28, 8.909873959776553e-33, 2.041894098383991e-29, 1.798336690678948e-34
	.float 4.100282282108889e-31, 9.783708710047603e-28, 9.006171926363854e-33, 2.06161592194107e-29
	.float 1.8133832479582137e-34, 4.1619129807247615e-31, 9.90992838081291e-28, 9.102469892951154e-33
	.float 2.081337745498149e-29, 2.22746605630349e-34, 5.240450206502525e-31, 1.211876010066113e-27
	.float 1.0161747525411457e-32, 2.2982778046260192e-29, 2.0619539262315677e-34, 4.901481364115228e-31
	.float 1.1424564429996585e-27, 1.0258045491998758e-32, 2.3179996281830983e-29, 2.0770007130995738e-34
	.float 4.932296713423164e-31, 1.148768389502896e-27, 1.078768430822891e-32, 2.4264696577470334e-29
	.float 2.2575591708620215e-34, 5.302080905118397e-31, 1.2244991327006103e-27, 1.088398154013224e-32
	.float 2.43633071998885e-29, 2.287652285420553e-34, 5.3637116037342695e-31, 1.237121099777141e-27
	.float 1.0980279506719541e-32, 2.456052543545929e-29, 2.4381178582132096e-34, 5.671865096813631e-31
	.float 1.300230935159794e-27, 1.1461769339656042e-32, 2.584968425955411e-29, 2.468210972771741e-34
	.float 5.733495795429503e-31, 1.3128529022363247e-27, 1.1558067306243343e-32, 2.644133595700095e-29
	.float 1.6478711178862912e-34, 3.714139911027613e-31, 8.52151200239454e-28, 8.04319226049085e-33
	.float 1.864397686370279e-29, 1.662917675165557e-34, 3.7449552603355493e-31, 8.647731673159847e-28
	.float 8.13949022707815e-33, 1.884119509927358e-29, 1.6779642324448226e-34, 3.7757706096434854e-31
	.float 8.773952306890125e-28, 8.283937176959101e-33, 1.9137022452629767e-29, 1.7005340683637211e-34
	.float 3.8219936336053895e-31, 8.963280850073112e-28, 8.380235143546401e-33, 1.9334240688200558e-29
	.float 1.7155806256429868e-34, 3.8528089829133256e-31, 9.089500520838419e-28, 8.476533110133702e-33
	.float 1.953145892377135e-29, 1.7306271829222525e-34, 3.8836243322212617e-31, 9.215731747183391e-28
	.float 9.150618876244804e-33, 2.0911986572766886e-29, 1.8284299200318495e-34, 4.223543679340634e-31
	.float 1.0099246331381202e-27, 8.669129043308302e-33, 1.992589539491293e-29, 1.7607202974807838e-34
	.float 3.946205535569209e-31, 9.46819131097842e-28, 1.0354343458586058e-32, 2.3377214517401774e-29
	.float 2.1221401553486304e-34, 5.024742761346972e-31, 1.1677003771527197e-27, 1.0450641425173358e-32
	.float 2.3574432752972566e-29, 2.1522332699071617e-34, 5.086373459962845e-31, 1.1803223442292503e-27
	.float 1.0546939391760659e-32, 2.3771650988543357e-29, 2.182326384465693e-34, 5.148004158578717e-31
	.float 1.192944311305781e-27, 1.0643237358347959e-32, 2.3968869224114148e-29, 2.2124194990242244e-34
	.float 5.209634857194589e-31, 1.2055670487542894e-27, 1.112472719128446e-32, 2.4954960401968103e-29
	.float 2.347838744126356e-34, 5.486973471163754e-31, 1.2686761137649647e-27, 1.1221025157871761e-32
	.float 2.5152178637538894e-29, 2.3779318586848873e-34, 5.5486041697796265e-31, 1.2749871935997273e-27
	.float 1.1317323124459061e-32, 2.545524477914699e-29, 2.4080249732434186e-34, 5.610234398197758e-31
	.float 1.2939163886511317e-27, 9.583959725887655e-33, 2.1799468632835446e-29, 1.896139427788545e-34
	.float 4.500882293309799e-31, 1.0667246405404747e-27, 9.680257692474956e-33, 2.1996686868406237e-29
	.float 1.9111859850678108e-34, 4.562512991925671e-31, 1.0793466076170053e-27, 9.776555659062256e-33
	.float 2.2193905103977028e-29, 1.926535140306917e-34, 4.624143220343803e-31, 1.091967708025061e-27
	.float 9.439512776006705e-33, 2.150364127947926e-29, 1.8509996411563779e-34, 4.315989727264442e-31
	.float 1.0225477557726175e-27, 9.343214809419405e-33, 2.1306423043908468e-29, 1.858523034590381e-34
	.float 4.346805076572378e-31, 1.0351699154421426e-27, 9.535810742594005e-33, 2.170085951505005e-29
	.float 2.513350644609538e-34, 5.825941843353311e-31, 1.3317859491476179e-27, 1.1702514990808263e-32
	.float 2.703299066371332e-29, 2.5434437591680693e-34, 5.887572541969183e-31, 1.3444079162241485e-27
	.float 1.1798812957395563e-32, 2.7427427134854903e-29, 1.956628025276708e-34, 4.685773918959675e-31
	.float 1.098279461935304e-27, 9.921001874259237e-33, 2.2391124844180588e-29, 1.9867211398352393e-34
	.float 4.7474046175755475e-31, 1.1109014290118347e-27, 1.0017299840846538e-32, 2.258834307975138e-29
	.float 2.0168142543937707e-34, 4.80903531619142e-31, 1.1235233960883653e-27, 1.0113597807433838e-32
	.float 2.278556131532217e-29, 1.7456737402015181e-34, 3.914439681529198e-31, 9.341956232773558e-28
	.float 9.487661759300355e-33, 2.1602250397264655e-29, 2.6186765455643977e-34, 6.041649288508864e-31
	.float 1.3759624487294862e-27, 1.1846961940689213e-32, 2.7624645370425694e-29, 2.5885834310058663e-34
	.float 5.980018589892992e-31, 1.3633408668389444e-27, 1.1943259907276513e-32, 2.8019081841567276e-29
	.float 2.7540955610777887e-34, 6.318987432280289e-31, 1.4327611079808796e-27, 1.2184004823744764e-32
	.float 2.900517301942123e-29, 2.693909331960726e-34, 6.195726035048544e-31, 1.4075177516068016e-27
	.float 1.2280302790332064e-32, 2.9399609490562813e-29, 4.4581518651022794e-35, 1.0096328032178732e-31
	.float 2.4143094263561386e-28, 2.1672352410530427e-33, 4.9813775522310134e-30, 4.4769600617013615e-35
	.float 1.0173366405448573e-31, 2.430086885201802e-28, 2.1792724868764553e-33, 5.006029831677362e-30
	.float 4.4957682583004436e-35, 1.0250404778718413e-31, 2.445864344047465e-28, 2.1913097326998678e-33
	.float 5.030682111123711e-30, 4.5145764548995257e-35, 1.0327443151988253e-31, 2.4616418028931284e-28
	.float 2.2033469785232803e-33, 5.05533439057006e-30, 4.326494488908705e-35, 9.708910367276249e-32
	.float 2.303868418142711e-28, 2.1431607494062176e-33, 4.9320729933383156e-30, 4.364110882106869e-35
	.float 9.785948740546089e-32, 2.3354580025730363e-28, 4.7197093682293196e-33, 1.0801030406767877e-29
	.float 2.10704901193598e-33, 4.858116154999269e-30, 1.1056674447577701e-26, 0.0
.global lbl_80472300
lbl_80472300:
	.incbin "baserom.dol", 0x46E400, 0xC8
.global lbl_804723C8
lbl_804723C8:
	.incbin "baserom.dol", 0x46E4C8, 0x888
.global lbl_80472C50
lbl_80472C50:
	.incbin "baserom.dol", 0x46ED50, 0x4C
.global lbl_80472C9C
lbl_80472C9C:
	.incbin "baserom.dol", 0x46ED9C, 0x10C
.global lbl_80472DA8
lbl_80472DA8:
	.4byte 0x80472CA8, 0x80472CB8, 0x80472CC8, 0x80472CD8
	.4byte 0x80472CE8, 0x80472CF8, 0x80472D08, 0x80472D18
	.4byte 0x80472D28, 0x80472D38, 0x80472D48, 0x80472D58
	.4byte 0x80472D68, 0x80472D78, 0x80472D88, 0x80472D98
.global lbl_80472DE8
lbl_80472DE8:
	.4byte 0x8039BF30, 0x8039C100, 0x8039C3C8, 0x8039C47C
	.4byte 0x8039C570, 0x8039C68C, 0x8039C68C, 0x8039C880
	.4byte 0x8039C994, 0x8039CB54, 0x8039CBA8, 0x8039CCF4
	.4byte 0x8039CD38, 0x8039CD70, 0x8039CE68, 0x8039CFFC
	.4byte 0x8039D080, 0x8039D1B4, 0x8039D2F8, 0x8039D304
.global lbl_80472E38
lbl_80472E38:
	.4byte 0x8039F840, 0x8039F950, 0x8039FFB0, 0x803A00D4
	.4byte 0x803A01F8, 0x803A031C, 0x803A0440, 0x803A0564
	.4byte 0x803A0688, 0x8039F950
.global lbl_80472E60
lbl_80472E60:
	.4byte 0x803A09D4, 0x803A0A48, 0x803A0F70, 0x803A0FF8
	.4byte 0x803A1080, 0x803A1108, 0x803A1190, 0x803A1218
	.4byte 0x803A12A0, 0x803A0A48
.global lbl_80472E88
lbl_80472E88:
	.4byte 0x803A1678, 0x803A175C, 0x803A1954, 0x803A1D24
	.4byte 0x803A20F4, 0x803A23D0, 0x803A2600, 0x803A2860
	.4byte 0x803A2A14, 0x803A175C
.global lbl_80472EB0
lbl_80472EB0:
	.float 0.0, 0.0, -5.343554618428253e-39, -5.298645805243571e-39
	.float 0.0, 0.0, -5.3460545348886085e-39, -5.298645805243571e-39
	.float 0.0, 0.0, -5.346082560857895e-39, -5.346076955664038e-39
	.float -5.3460713504701804e-39, -5.346060140082466e-39, -5.346065745276323e-39, -5.2985561221418545e-39
.global lbl_80472EF0
lbl_80472EF0:
	.float 0.0, 0.0, -5.3461274024087534e-39, -5.346587028305052e-39
.global lbl_80472F00
lbl_80472F00:
	.float 0.0, 0.0, -5.346082560857895e-39, -5.348929999337403e-39
	.float -5.3460713504701804e-39, -5.346060140082466e-39, -5.352960133720801e-39, -5.3509422639321735e-39
	.float -5.348481583828819e-39, -5.3484143215025315e-39, -5.348492794216534e-39, -5.3485096097981056e-39
	.float -5.348515214991963e-39, -5.3542213023386935e-39, -5.3484311370841034e-39, -5.349938934231717e-39
	.float -5.354210091950979e-39, -5.3541988815632643e-39, -5.347674435913368e-39, -5.349927723844002e-39
	.float -5.298657015631286e-39, -5.349266310968841e-39, -5.3539018062888275e-39, -5.3525341389876465e-39
	.float -5.3520689078974906e-39, -5.343834878121118e-39
.global lbl_80472F68
lbl_80472F68:
	.float 0.0, 0.0, -5.346082560857895e-39, -5.348784264297113e-39
	.float -5.3500061965580045e-39, -5.346060140082466e-39, -5.350151931598294e-39, -5.350465822454303e-39
	.float -5.3489916564698333e-39, -5.3492775213565556e-39, -5.354288564664981e-39, -5.349339178488986e-39
	.float -5.348436742277961e-39, -5.350297666638584e-39, -5.354226907532551e-39, -5.351121630135607e-39
	.float -5.352080118285205e-39, -5.3529489233330866e-39, -5.2986682260190005e-39, -5.352248274100924e-39
	.float -5.3511664716864654e-39
.global lbl_80472FBC
lbl_80472FBC:
	.float 0.0, 0.0, -5.346082560857895e-39, -5.348784264297113e-39
	.float -5.3500061965580045e-39, -5.346060140082466e-39, -5.350151931598294e-39, -5.34852082018582e-39
	.float -5.3489916564698333e-39, -5.3492775213565556e-39, -5.354288564664981e-39, -5.349339178488986e-39
	.float -5.348436742277961e-39, -5.350297666638584e-39, -5.354226907532551e-39
.global lbl_80472FF8
lbl_80472FF8:
	.float 0.0, 0.0, -5.346082560857895e-39, -5.348929999337403e-39
	.float -5.3460713504701804e-39, -5.346060140082466e-39, -5.346065745276323e-39, -5.35103194703389e-39
	.float -5.348481583828819e-39, -5.3484143215025315e-39, -5.348492794216534e-39, -5.3485096097981056e-39
	.float -5.348515214991963e-39, -5.3542213023386935e-39, -5.3484311370841034e-39, -5.349938934231717e-39
	.float -5.354210091950979e-39, -5.3541988815632643e-39, -5.347674435913368e-39, -5.349927723844002e-39
	.float -5.298657015631286e-39, -5.349266310968841e-39, -5.348403111114817e-39, 0.0
.global lbl_80473058
lbl_80473058:
	.incbin "baserom.dol", 0x46F158, 0x10
.global lbl_80473068
lbl_80473068:
	.4byte 0x803A9DB4, 0x803A9DC0, 0x803A9E50, 0x803A9E50
	.4byte 0x803A9DCC, 0x803A9DEC, 0x803A9E50, 0x803A9E50
	.4byte 0x803A9E50, 0x803A9E20
.global lbl_80473090
lbl_80473090:
	.incbin "baserom.dol", 0x46F190, 0x18
.global lbl_804730A8
lbl_804730A8:
	.4byte 0x803AB578, 0x803AB59C, 0x803AB5B8, 0x803AB5D0
	.4byte 0x803AC41C, 0x803AC428, 0x803AC434, 0x803AC450
	.4byte 0x803AC46C, 0x803AC4E0, 0x803AC57C, 0x803AC588
	.4byte 0x803AC5A4, 0x803AC5C0, 0x803AC5D4, 0x803AC5CC
.global lbl_804730E8
lbl_804730E8:
	.float -2.880196694728272e-28, -2.6670624443491207e-37, -2.3852119974674557e-37, 66955.015625
	.float -1.541200981591828e-05, 0.0
.global lbl_80473100
lbl_80473100:
	.4byte 0x803AE360, 0x803AE014, 0x803AE084, 0x803AE360
	.4byte 0x803AE360, 0x803AE360, 0x803AE360, 0x803AE360
	.4byte 0x803AE360, 0x803AE1D4, 0x803AE084, 0x803AE084
	.4byte 0x803AE084, 0x803AE084, 0x803AE084, 0x803AE084
	.4byte 0x803AE084, 0x803AE084, 0x803AE084, 0x803AE084
	.4byte 0x803AE110, 0x803AE180, 0x803AE360, 0x803AE180
	.4byte 0x803AE360, 0x803AE360, 0x803AE360, 0x803AE360
	.4byte 0x803AE360, 0x803AE360, 0x803AE360, 0x803AE1D4
	.4byte 0x803AE1D4, 0x803AE1D4, 0x803AE084, 0x803AE084
	.4byte 0x803AE290, 0x803AE084, 0x803AE084, 0x803AE084
	.4byte 0x803AE084, 0x803AE084, 0x803AE084, 0x803AE290
	.4byte 0x803AE084, 0x803AE084, 0x803AE084, 0x803AE084
	.4byte 0x803AE180, 0x803AE360, 0x803AE360, 0x803AE360
	.4byte 0x803AE290, 0x803AE290, 0x803AE290, 0x803AE290
	.4byte 0x803AE360, 0x803AE360, 0x803AE360, 0x803AE360
	.4byte 0x803AE360
.global lbl_804731F4
lbl_804731F4:
	.4byte 0x803AF0C0, 0x803AE3F4, 0x803AE414, 0x803AE424
	.4byte 0x803AE47C, 0x803AE490, 0x803AE4A4, 0x803AE4C4
	.4byte 0x803AE508, 0x803AE528, 0x803AE54C, 0x803AE56C
	.4byte 0x803AE58C, 0x803AE5AC, 0x803AE5CC, 0x803AE604
	.4byte 0x803AE624, 0x803AE634, 0x803AE660, 0x803AE690
	.4byte 0x803AE438, 0x803AE6B4, 0x803AE6DC, 0x803AE700
	.4byte 0x803AE728, 0x803AE74C, 0x803AE788, 0x803AE7C8
	.4byte 0x803AE7FC, 0x803AE82C, 0x803AE868, 0x803AE8A8
	.4byte 0x803AE8DC, 0x803AE910, 0x803AE944, 0x803AE974
	.4byte 0x803AE9B0, 0x803AE9E4, 0x803AEA14, 0x803AEA44
	.4byte 0x803AEA74, 0x803AEAA4, 0x803AEAD4, 0x803AEB10
	.4byte 0x803AEB44, 0x803AEB74, 0x803AEBA4, 0x803AEBD4
	.4byte 0x803AEC0C, 0x803AEC44, 0x803AEC8C, 0x803AECE0
	.4byte 0x803AED30, 0x803AED74, 0x803AEDB8, 0x803AEDFC
	.4byte 0x803AEE40, 0x803AEEA8, 0x803AEF10, 0x803AEF84
	.4byte 0x803AF004
.global lbl_804732E8
lbl_804732E8:
	.float 6.293205058871624e-38, 1.9668060241722317e-36, 2.1313741570901313e-36, 2.632322069392904e-38
	.float 1.990316090554881e-36, 1.867173871514553e-38, 4.850495848323813e-36, 5.10910532296953e-36
	.float 4.8975159810891116e-36, 2.225414422620728e-36, 2.632322069392904e-38, 1.8212559833057109e-38
	.float 1.7477870258599322e-38, 1.7661542652213768e-38, 1.7845215045828215e-38, 1.8028887439442662e-38
	.float 0.0, 0.0
.global lbl_80473330
lbl_80473330:
	.4byte 0x803B3080, 0x803B3134, 0x803B3424, 0x803B343C
	.4byte 0x803B356C, 0x803B365C, 0x803B36AC, 0x803B36C4
	.4byte 0x803B3714, 0x803B37D4, 0x803B3834, 0x803B3840
	.4byte 0x803B3874, 0x803B38F0, 0x803B38F8, 0x803B3924
	.4byte 0x803B399C, 0x803B3FE4, 0x803B40A4, 0x803B4164
	.4byte 0x803B4224, 0x803B42EC, 0x803B4388, 0x803B4424
	.4byte 0x803B44F0, 0x803B459C, 0x803B4644, 0x803B46F0
	.4byte 0x803B479C, 0x803B47EC, 0x803B4838, 0x803B4970
	.4byte 0x803B49F4, 0x803B4A8C, 0x803B4AB4, 0x803B4AE0
	.4byte 0x803B4B0C, 0x803B4B9C, 0x803B4C04, 0x803B4C98
	.4byte 0x803B4CEC, 0x803B4D58, 0x803B4DAC, 0x803B4E44
	.4byte 0x803B4EFC, 0x803B5070, 0x803B50FC, 0x803B51B0
	.4byte 0x803B5278, 0x803B52A4, 0x803B52E8, 0x803B5348
	.4byte 0x803B53A8, 0x803B5408, 0x803B5468, 0x803B54C4
	.4byte 0x803B5514, 0x803B5540, 0x803B6B7C, 0x803B6BBC
	.4byte 0x803B6D2C, 0x803B6DC4, 0x803B6E04, 0x803B6E50
	.4byte 0x803B6EB4, 0x803B6F10, 0x803B6F80, 0x803B6FE0
	.4byte 0x803B7040, 0x803B70A0, 0x803B71C8, 0x803B7254
	.4byte 0x803B72EC, 0x803B73D0, 0x803B7428
.global lbl_8047345C
lbl_8047345C:
	.4byte 0x803B6AE8, 0x803B6B18, 0x803B7488, 0x803B74B4
	.4byte 0x803B76F0, 0x803B7710, 0x803B78F0
.global lbl_80473478
lbl_80473478:
	.4byte 0x803B79F8, 0x803B7A0C, 0x803B7A2C, 0x803B7A6C
	.4byte 0x803B7AAC, 0x803B7B5C, 0x803B7D20
.global lbl_80473494
lbl_80473494:
	.float -6.568476913930731e-37, -4.0318179033732137e-38, -2.505357309928877e-37, -2.902157502981755e-37
	.float 6.162975822039155e-33
.global lbl_804734A8
lbl_804734A8:
	.4byte 0x803B87DC, 0x803B8888, 0x803B88AC, 0x803B88F0
	.4byte 0x803B8914, 0x803B8940, 0x803B8988, 0x803B8A6C
.global lbl_804734C8
lbl_804734C8:
	.ascii "ServerQueSet:ServerQue Overflow!\n"
	.byte 0x00
.global lbl_804734EA
lbl_804734EA:
	.ascii "ServerQueSet:index == 0\n"
	.byte 0x00
.global lbl_80473503
lbl_80473503:
	.ascii "ServerQueSet:ServerQue NotFound code=%d!\n"
	.byte 0x00
.global lbl_8047352D
lbl_8047352D:
	.incbin "baserom.dol", 0x46F62D, 0x1F
.global lbl_8047354C
lbl_8047354C:
	.4byte 0x803BAE08, 0x803BAE10, 0x803BAE18, 0x803BAE20
	.4byte 0x803BAE28, 0x803BAE30, 0x803BAE38, 0x803BAE40
	.4byte 0x803BAE48, 0x803BAE50, 0x803BAE58, 0x803BAE60
	.4byte 0x803BAE68, 0x803BAE70, 0x803BAE78, 0x803BAE80
.global lbl_8047358C
lbl_8047358C:
	.4byte 0x803BACDC, 0x803BACE4, 0x803BACEC, 0x803BACF4
	.4byte 0x803BACFC, 0x803BAD04, 0x803BAD0C, 0x803BAD0C
	.4byte 0x803BAD0C, 0x803BAD0C, 0x803BAD20, 0x803BAD2C
	.4byte 0x803BAD38, 0x803BAD44, 0x803BAD50, 0x803BAD5C
	.4byte 0x803BAD68, 0x803BAD74, 0x803BAD80, 0x803BAD80
	.4byte 0x803BAD80, 0x803BAD80, 0x803BAD80, 0x803BAD80
	.4byte 0x803BAD80, 0x803BAD80, 0x803BAD90, 0x803BAD98
	.4byte 0x803BAD98, 0x803BAE94, 0x803BAEA0, 0x803BAEAC
	.4byte 0x803BAEAC, 0x803BAEAC, 0x803BAEAC, 0x803BAEB8
	.4byte 0x803BAEB8, 0x803BAEB8, 0x803BAEB8, 0x803BAEC4
	.4byte 0x803BAEC4, 0x803BAEC4, 0x803BAEC4, 0x803BAEE8
	.4byte 0x803BAEF0, 0x803BAEF8, 0x803BAF1C, 0x803BAF2C
	.4byte 0x803BAF34, 0x803BAF3C, 0x803BAF60, 0x803BAF68
	.4byte 0x803BAF70, 0x803BAF78, 0x803BAF80, 0x803BAF88
	.4byte 0x803BAF90, 0x803BAF98, 0x803BAFA0, 0x803BAFAC
	.4byte 0x803BAFB4, 0x803BAFBC, 0x803BAFC8, 0x803BAFD4
	.4byte 0x803BAFE0, 0x803BAFEC, 0x803BAFF8, 0x803BB004
	.4byte 0x803BB010, 0x803BB01C, 0x803BB028, 0x803BB034
	.4byte 0x803BB040, 0x803BB04C, 0x803BB058, 0x803BB064
	.4byte 0x803BB070, 0x803BB07C, 0x803BB088, 0x803BB094
	.4byte 0x803BB0A0, 0x803BB0AC, 0x803BB0B8, 0x803BB0C4
	.4byte 0x803BB0D0, 0x803BB0DC, 0x803BB0E8, 0x803BB0F4
	.4byte 0x803BB0FC, 0x803BB104, 0x803BB10C, 0x803BB114
	.4byte 0x803BB11C, 0x803BB124, 0x803BB12C, 0x803BB134
	.4byte 0x803BB13C, 0x803BB148, 0x803BB160, 0x803BB16C
	.4byte 0x803BB154
.global lbl_80473720
lbl_80473720:
	.incbin "baserom.dol", 0x46F820, 0x10
.global lbl_80473730
lbl_80473730:
	.4byte 0x803BB1C4, 0x803BB1D0, 0x803BB1DC, 0x803BB1E8
	.4byte 0x803BB1F4, 0x803BB200, 0x803BB20C, 0x803BB20C
	.4byte 0x803BB20C, 0x803BB20C, 0x803BB224, 0x803BB238
	.4byte 0x803BB24C, 0x803BB260, 0x803BB274, 0x803BB288
	.4byte 0x803BB29C, 0x803BB2B0, 0x803BB2C4, 0x803BB2C4
	.4byte 0x803BB2C4, 0x803BB2C4, 0x803BB2C4, 0x803BB2C4
	.4byte 0x803BB2C4, 0x803BB2C4, 0x803BB2D4, 0x803BB2E0
	.4byte 0x803BB2EC, 0x803BB2F8, 0x803BB30C, 0x803BB320
	.4byte 0x803BB320, 0x803BB320, 0x803BB320, 0x803BB330
	.4byte 0x803BB330, 0x803BB330, 0x803BB330, 0x803BB340
	.4byte 0x803BB340, 0x803BB340, 0x803BB340, 0x803BB354
	.4byte 0x803BB360, 0x803BB36C, 0x803BB710, 0x803BB390
	.4byte 0x803BB39C, 0x803BB3A8, 0x803BB3CC, 0x803BB3D8
	.4byte 0x803BB3E4, 0x803BB3F0, 0x803BB3FC, 0x803BB408
	.4byte 0x803BB414, 0x803BB420, 0x803BB42C, 0x803BB440
	.4byte 0x803BB44C, 0x803BB458, 0x803BB46C, 0x803BB480
	.4byte 0x803BB494, 0x803BB4A8, 0x803BB4BC, 0x803BB4D0
	.4byte 0x803BB4E4, 0x803BB4F8, 0x803BB50C, 0x803BB520
	.4byte 0x803BB534, 0x803BB548, 0x803BB55C, 0x803BB570
	.4byte 0x803BB584, 0x803BB598, 0x803BB5AC, 0x803BB5C0
	.4byte 0x803BB5D4, 0x803BB5E8, 0x803BB5FC, 0x803BB610
	.4byte 0x803BB624, 0x803BB638, 0x803BB64C, 0x803BB660
	.4byte 0x803BB66C, 0x803BB678, 0x803BB684, 0x803BB690
	.4byte 0x803BB69C, 0x803BB6A8, 0x803BB6B4, 0x803BB6C0
	.4byte 0x803BB6CC, 0x803BB6E0, 0x803BB6FC, 0x803BB710
	.4byte 0x803BB6F4
.global lbl_804738C4
lbl_804738C4:
	.4byte 0x803BBB54, 0x803BB784, 0x803BB794, 0x803BB7A4
	.4byte 0x803BB7B4, 0x803BB7C4, 0x803BBB54, 0x803BBB54
	.4byte 0x803BBB54, 0x803BBB54, 0x803BB7D4, 0x803BB7EC
	.4byte 0x803BB804, 0x803BB81C, 0x803BB834, 0x803BB84C
	.4byte 0x803BBB54, 0x803BBB54, 0x803BB864, 0x803BB864
	.4byte 0x803BB864, 0x803BB864, 0x803BB864, 0x803BB864
	.4byte 0x803BB864, 0x803BB864, 0x803BBB54, 0x803BBB54
	.4byte 0x803BBB54, 0x803BBB54, 0x803BBB54, 0x803BB8A4
	.4byte 0x803BB8A4, 0x803BB8A4, 0x803BB8A4, 0x803BB8E8
	.4byte 0x803BB8E8, 0x803BB8E8, 0x803BB8E8, 0x803BBB54
	.4byte 0x803BBB54, 0x803BBB54, 0x803BBB54, 0x803BB8FC
	.4byte 0x803BB90C, 0x803BBB54, 0x803BBB54, 0x803BB930
	.4byte 0x803BB954, 0x803BBB54, 0x803BB964, 0x803BB974
	.4byte 0x803BBB54, 0x803BBB54, 0x803BBB54, 0x803BBB54
	.4byte 0x803BBB54, 0x803BBB54, 0x803BBB54, 0x803BBB54
	.4byte 0x803BBB54, 0x803BB984, 0x803BB99C, 0x803BB9B4
	.4byte 0x803BB9CC, 0x803BB9E4, 0x803BB9FC, 0x803BBA14
	.4byte 0x803BBA2C, 0x803BBA44, 0x803BBA5C, 0x803BBA74
	.4byte 0x803BBB54, 0x803BBB54, 0x803BBB54, 0x803BBB54
	.4byte 0x803BBB54, 0x803BBB54, 0x803BBA8C, 0x803BBAA4
	.4byte 0x803BBABC, 0x803BBB54, 0x803BBB54, 0x803BBB54
	.4byte 0x803BBB54, 0x803BBB54, 0x803BBB54, 0x803BBAD4
	.4byte 0x803BBAE4, 0x803BBAF4, 0x803BBB04, 0x803BBB54
	.4byte 0x803BBB54, 0x803BBB54, 0x803BBB54, 0x803BBB14
	.4byte 0x803BBB24, 0x803BBB3C
.global lbl_80473A4C
lbl_80473A4C:
	.4byte 0x803BCFA0, 0x803BCFA8, 0x803BCFB8, 0x803BCFB0
	.4byte 0x803BCFC8, 0x803BCF60, 0x803BCF70, 0x803BCF78
	.4byte 0x803BCF68, 0x803BCFC0, 0x803BCF88, 0x803BCF80
	.4byte 0x803BCF90, 0x803BCFD0, 0x803BCFD8, 0x803BCF98
.global lbl_80473A8C
lbl_80473A8C:
	.4byte 0x803BF3D4, 0x803BF430, 0x803BF4A4, 0x803BF500
	.4byte 0x803BF574, 0x803BF5F0, 0x803BF624, 0x803BF660
	.4byte 0x803BF6A0, 0x803BF6EC
.global lbl_80473AB4
lbl_80473AB4:
	.float 4.1326617868389635e-39, 4.3163355817518745e-39, 9.459298528907423e-39, 2.3234827542181896e-38
	.float 3.5265682514134935e-38, 5.473646683701083e-38
.global lbl_80473ACC
lbl_80473ACC:
	.4byte 0x803C0BF8, 0x803C0CA8, 0x803C0E60, 0x803C0FA4
	.4byte 0x803C1034, 0x803C11A8, 0x803C1374, 0x803C15E0
	.4byte 0x803C1798, 0x803C18A8, 0x803C193C, 0x803C19D0
	.4byte 0x803C1A08, 0x803C1A60, 0x803C1AC0, 0x803C1B1C
.global lbl_80473B0C
lbl_80473B0C:
	.4byte 0x803C3160, 0x803C2A28, 0x803C3160, 0x803C3160
	.4byte 0x803C2A74, 0x803C2A8C, 0x803C2AA4, 0x803C2ABC
	.4byte 0x803C2AD4, 0x803C2AEC, 0x803C2B74, 0x803C2B8C
	.4byte 0x803C2A48, 0x803C2C38, 0x803C2C84, 0x803C2CD0
	.4byte 0x803C2D1C, 0x803C2D68, 0x803C3160, 0x803C3160
	.4byte 0x803C3160, 0x803C3160, 0x803C3160, 0x803C3160
	.4byte 0x803C3160, 0x803C3160, 0x803C3160, 0x803C3160
	.4byte 0x803C3160, 0x803C3160, 0x803C3160, 0x803C3160
	.4byte 0x803C3160, 0x803C3160, 0x803C3160, 0x803C2DB4
	.4byte 0x803C2E10, 0x803C2E6C, 0x803C2EC8, 0x803C2F24
	.4byte 0x803C2F80, 0x803C2FD0, 0x803C3160, 0x803C30D8
	.4byte 0x803C311C, 0x803C3160, 0x803C3160, 0x803C3160
	.4byte 0x803C3074, 0x803C3160, 0x803C3160, 0x803C3160
	.4byte 0x803C3160, 0x803C30B8
.global lbl_80473BE4
lbl_80473BE4:
	.4byte 0x803C3BDC, 0x803C33F0, 0x803C3BDC, 0x803C3BDC
	.4byte 0x803C3444, 0x803C3460, 0x803C347C, 0x803C3498
	.4byte 0x803C34B4, 0x803C34D0, 0x803C355C, 0x803C3578
	.4byte 0x803C3414, 0x803C374C, 0x803C37A4, 0x803C37FC
	.4byte 0x803C3854, 0x803C38AC, 0x803C3BDC, 0x803C3BDC
	.4byte 0x803C3BDC, 0x803C3BDC, 0x803C3BDC, 0x803C3BDC
	.4byte 0x803C3BDC, 0x803C3BDC, 0x803C3BDC, 0x803C3BDC
	.4byte 0x803C3BDC, 0x803C3BDC, 0x803C3BDC, 0x803C3BDC
	.4byte 0x803C3BDC, 0x803C3BDC, 0x803C3BDC, 0x803C3904
	.4byte 0x803C3964, 0x803C39C4, 0x803C3A24, 0x803C3A84
	.4byte 0x803C3AE4, 0x803C3B38, 0x803C3BDC, 0x803C36BC
	.4byte 0x803C3704, 0x803C3BDC, 0x803C3BDC, 0x803C3BDC
	.4byte 0x803C3650, 0x803C3BDC, 0x803C3BDC, 0x803C3BDC
	.4byte 0x803C3BDC, 0x803C3698
.global lbl_80473CBC
lbl_80473CBC:
	.4byte 0x803C4D3C, 0x803C45E8, 0x803C461C, 0x803C4650
	.4byte 0x803C4684, 0x803C46B8, 0x803C46EC, 0x803C4564
	.4byte 0x803C47C0, 0x803C47F4, 0x803C45A0, 0x803C48D4
	.4byte 0x803C4948, 0x803C49BC, 0x803C4A30, 0x803C4AA4
	.4byte 0x803C4B18, 0x803C4B58, 0x803C4B98, 0x803C4BD8
	.4byte 0x803C4C18, 0x803C4CEC, 0x803C4C58, 0x803C4D20
.global lbl_80473D1C
lbl_80473D1C:
	.4byte 0x803C57A0, 0x803C4ED4, 0x803C4F08, 0x803C4F3C
	.4byte 0x803C4F70, 0x803C4FA4, 0x803C4FD8, 0x803C4E78
	.4byte 0x803C50B0, 0x803C50E4, 0x803C4E98, 0x803C523C
	.4byte 0x803C52A8, 0x803C5318, 0x803C5388, 0x803C53F8
	.4byte 0x803C5580, 0x803C55C0, 0x803C5600, 0x803C5640
	.4byte 0x803C5680, 0x803C5754, 0x803C56C0, 0x803C5788
	.4byte 0x803C5468, 0x803C54CC, 0x803C5508, 0x803C5520
	.4byte 0x803C5538, 0x803C5550, 0x803C5568
.global lbl_80473D98
lbl_80473D98:
	.ascii "damage_value Under 10!\n"
	.byte 0x00
.global lbl_80473DB0
lbl_80473DB0:
	.float -1.4675616991109847e-27, -2.6376827086422094e-37, -2.8874591152336365e-37, -2.946233832774751e-37
	.float 804908.3125, -2.68951729935697e-37
.global lbl_80473DC8
lbl_80473DC8:
	.4byte 0x803C8C7C, 0x803C8C94, 0x803C8CB0, 0x803C8CBC
	.4byte 0x803C8CC4, 0x803C8CCC, 0x803C8CD4, 0x803C8CE4
	.4byte 0x803C8CF4, 0x803C8D04, 0x803C8D0C, 0x803C8D14
	.4byte 0x803C8D20, 0x803C8D30, 0x803C8D40, 0x803C8D50
	.4byte 0x803C8D60, 0x803C8D70
.global lbl_80473E10
lbl_80473E10:
	.4byte 0x803C8DE8, 0x803C8E00, 0x803C8E20, 0x803C8E2C
	.4byte 0x803C8E48, 0x803C8E48, 0x803C8E48, 0x803C8E48
	.4byte 0x803C8E48, 0x803C8E34, 0x803C8E48, 0x803C8E3C
.global lbl_80473E40
lbl_80473E40:
	.incbin "baserom.dol", 0x46FF40, 0x20
.global lbl_80473E60
lbl_80473E60:
	.4byte 0x803C966C, 0x803C9768, 0x803C97DC, 0x803C969C
	.4byte 0x803C9704, 0x803C966C, 0x803C9850
.global lbl_80473E7C
lbl_80473E7C:
	.4byte 0x803C9ADC, 0x803C9C20, 0x803C9CB0, 0x803C9B24
	.4byte 0x803C9BA4, 0x803C9ADC, 0x803C9D40
.global lbl_80473E98
lbl_80473E98:
	.4byte 0x803CA37C, 0x803CA37C, 0x803CA37C, 0x803CA3C8
	.4byte 0x803CA424, 0x803CA37C, 0x803CA37C, 0x803CA37C
	.4byte 0x803CA37C, 0x803CA490, 0x803CA4D8, 0x803CA520
	.4byte 0x803CA560
.global lbl_80473ECC
lbl_80473ECC:
	.4byte 0x803CA620, 0x803CA620, 0x803CA620, 0x803CA660
	.4byte 0x803CA6B0, 0x803CA620, 0x803CA620, 0x803CA620
	.4byte 0x803CA620, 0x803CA700, 0x803CA74C, 0x803CA798
	.4byte 0x803CA7DC
.global lbl_80473F00
lbl_80473F00:
	.float -4.91876067486766e-26, -2.947167882279131e-37, -4.323921081523028e-32, -2.68951729935697e-37
.global lbl_80473F10
lbl_80473F10:
	.4byte 0x803CBC1C, 0x803CBC30, 0x803CBC44, 0x803CBC58
	.4byte 0x803CBC6C, 0x803CBC80, 0x803CBC94
.global lbl_80473F2C
lbl_80473F2C:
	.4byte 0x803CBD98, 0x803CBDA8, 0x803CBDB8, 0x803CBDC8
	.4byte 0x803CBDD8, 0x803CBDE8, 0x803CBDF8
.global lbl_80473F48
lbl_80473F48:
	.incbin "baserom.dol", 0x470048, 0x18
.global lbl_80473F60
lbl_80473F60:
	.4byte 0x803CC848, 0x803CC850, 0x803CC860, 0x803CC870
	.4byte 0x803CC880, 0x803CC898, 0x803CC8A8, 0x803CC8B8
	.4byte 0x803CC8C8, 0x803CC8D8, 0x803CC8E8, 0x803CC900
	.4byte 0x803CC91C, 0x803CC92C
.global lbl_80473F98
lbl_80473F98:
	.4byte 0x803CD13C, 0x803CD144, 0x803CD150, 0x803CD15C
	.4byte 0x803CD168, 0x803CD17C, 0x803CD188, 0x803CD194
	.4byte 0x803CD1A0, 0x803CD1AC, 0x803CD1BC, 0x803CD1D4
	.4byte 0x803CD1EC, 0x803CD1F8
.global lbl_80473FD0
lbl_80473FD0:
	.4byte 0x803CD5EC, 0x803CD5F8, 0x803CD60C, 0x803CD620
	.4byte 0x803CD634, 0x803CD650, 0x803CD664, 0x803CD678
	.4byte 0x803CD68C, 0x803CD6A0, 0x803CD6B0, 0x803CD6BC
	.4byte 0x803CD6DC, 0x803CD6F0
.global lbl_80474008
lbl_80474008:
	.4byte 0x803CD7EC, 0x803CD7F8, 0x803CD80C, 0x803CD820
	.4byte 0x803CD834, 0x803CD850, 0x803CD864, 0x803CD878
	.4byte 0x803CD88C, 0x803CD8A0, 0x803CD8B0, 0x803CD8BC
	.4byte 0x803CD8DC, 0x803CD8F0
.global lbl_80474040
lbl_80474040:
	.float 1.440534821325912e-42, 1.551837649007363e-36, 1.5988574230402545e-36, 4.093311938563139e-34
	.float 1.078642079873857e-31, 2.8400581480160544e-29, 7.052000130695993e-30, 9.994031500556537e-38
	.float 9.336757780223533e-15, 1.7754213404198153e-30, 6.903306301927146e-30, 2.369931174025625e-38
	.float 1.0479501574727572e-31, 2.6906353965226937e-35, 4.033125709446076e-34, 6.259158012764392e-36
	.float 8.370678442537372e-21, 9.426144748283696e-21, 6.973159082860467e-27, 8.370678442537372e-21
	.float 4.094720695074203e-34, 7.038122550018717e-33, 6.973159082860467e-27, 8.370674403569537e-21
	.float 6.617444900424222e-24
.global lbl_804740A4
lbl_804740A4:
	.4byte 0x803CEA98, 0x803CEAB0, 0x803CEAC8, 0x803CEAE0
	.4byte 0x803CEAF8, 0x803CEB10, 0x803CEB28
.global lbl_804740C0
lbl_804740C0:
	.4byte 0x803CEC44, 0x803CEC58, 0x803CEC6C, 0x803CEC80
	.4byte 0x803CEC94, 0x803CECA8, 0x803CECBC
.global lbl_804740DC
lbl_804740DC:
	.4byte 0x803D38E0, 0x803D3900, 0x803D3920, 0x803D3940
	.4byte 0x803D3960, 0x803D3980, 0x803D39A0
.global lbl_804740F8
lbl_804740F8:
	.4byte 0x803D3A68, 0x803D3A80, 0x803D3A98, 0x803D3AB0
	.4byte 0x803D3AC8, 0x803D3AE0, 0x803D3AF8
.global lbl_80474114
lbl_80474114:
	.4byte 0x803D6EC0, 0x803D6EC8, 0x803D6ED0, 0x803D6ED8
	.4byte 0x803D6EE0, 0x803D6EE8, 0x803D6EF0, 0x803D6EF8
	.4byte 0x803D6F00, 0x803D6F08, 0x803D6F10, 0x803D6F18
	.4byte 0x803D6F30, 0x803D6F48, 0x803D6F60, 0x803D6F68
	.4byte 0x803D6F70, 0x803D6F78, 0x803D6F80, 0x803D6F88
	.4byte 0x803D6F90, 0x803D6F98, 0x803D6FAC, 0x803D6FB4
	.4byte 0x803D6FBC, 0x803D6FC4, 0x803D6FCC, 0x803D6FD4
	.4byte 0x803D6FDC, 0x803D6FE4, 0x803D6FEC, 0x803D6FF4
	.4byte 0x803D6FFC, 0x803D7004, 0x803D700C, 0x803D7014
	.4byte 0x803D701C, 0x803D7024, 0x803D702C, 0x803D7034
	.4byte 0x803D703C, 0x803D7044, 0x803D7058, 0x803D706C
	.4byte 0x803D7074, 0x803D707C, 0x803D7090, 0x803D70A4
	.4byte 0x803D70B8, 0x803D70CC, 0x803D70E0, 0x803D70E8
	.4byte 0x803D70F0, 0x803D70F8, 0x803D710C, 0x803D7114
	.4byte 0x803D711C, 0x803D7124, 0x803D712C, 0x803D7134
	.4byte 0x803D713C, 0x803D7144, 0x803D714C, 0x803D7154
	.4byte 0x803D715C, 0x803D7164, 0x803D7178, 0x803D718C
	.4byte 0x803D71A0
.global lbl_80474228
lbl_80474228:
	.4byte 0x803D72EC, 0x803D7780, 0x803D77A0, 0x803D77B4
	.4byte 0x803D77FC, 0x803D781C, 0x803D7874, 0x803D79C8
	.4byte 0x803D7FEC, 0x803D7FEC, 0x803D7FEC, 0x803D7FEC
	.4byte 0x803D7FEC, 0x803D7FEC, 0x803D7FEC, 0x803D79EC
	.4byte 0x803D7AC8, 0x803D7B70, 0x803D7B20, 0x803D7B70
	.4byte 0x803D7B90, 0x803D7BC0, 0x803D7C38, 0x803D7C6C
	.4byte 0x803D7DE4, 0x803D7B70, 0x803D7E28, 0x803D7B70
	.4byte 0x803D7E90, 0x803D7B70, 0x803D7ED4, 0x803D7CC8
	.4byte 0x803D7B70, 0x803D7D0C, 0x803D7D3C, 0x803D7DC8
	.4byte 0x803D7F7C, 0x803D7F98, 0x803D7FD0
.global lbl_804742C4
lbl_804742C4:
	.4byte 0x803D9024, 0x803D8578, 0x803D8588, 0x803D8598
	.4byte 0x803D85AC, 0x803D85C0, 0x803D85D4, 0x803D85D4
	.4byte 0x803D85E8, 0x803D85F8, 0x803D861C, 0x803D863C
	.4byte 0x803D8660, 0x803D8680, 0x803D86A0, 0x803D86D4
	.4byte 0x803D871C, 0x803D8744, 0x803D8764, 0x803D8788
	.4byte 0x803D87A0, 0x803D87C8, 0x803D87F0, 0x803D8814
	.4byte 0x803D8838, 0x803D885C, 0x803D8880, 0x803D88A4
	.4byte 0x803D88C8, 0x803D88E8, 0x803D8908, 0x803D892C
	.4byte 0x803D8960, 0x803D8998, 0x803D89CC, 0x803D89FC
	.4byte 0x803D8A2C, 0x803D8A64, 0x803D8A98, 0x803D8ACC
	.4byte 0x803D8B00, 0x803D8B34, 0x803D8B68, 0x803D8B9C
	.4byte 0x803D8BD0, 0x803D8C00, 0x803D8C30, 0x803D8C60
	.4byte 0x803D8C80, 0x803D8CC0, 0x803D8CF8, 0x803D8D30
	.4byte 0x803D8D64, 0x803D8DAC, 0x803D8DF8, 0x803D8E40
	.4byte 0x803D8E84, 0x803D8ED0, 0x803D8F1C, 0x803D8F68
	.4byte 0x803D8FB4
.global lbl_804743B8
lbl_804743B8:
	.4byte 0x803D9320, 0x803D932C, 0x803D9338, 0x803D9344
	.4byte 0x803D9350, 0x803D935C, 0x803D9368, 0x803D9374
	.4byte 0x803D9380, 0x803D938C, 0x803D9398, 0x803D93A4
	.4byte 0x803D93B0, 0x803D93BC, 0x803D93C8, 0x803D93D4
	.4byte 0x803D93E0, 0x803D93EC, 0x803D93F8, 0x803D9404
	.4byte 0x803D9410, 0x803D941C, 0x803D9428, 0x803D9434
	.4byte 0x803D9440, 0x803D944C, 0x803D9458, 0x803D9464
	.4byte 0x803D9470, 0x803D947C, 0x803D9488, 0x803D9494
	.4byte 0x803D94A0, 0x803D94AC, 0x803D94B8, 0x803D94C4
	.4byte 0x803D94D0, 0x803D94DC, 0x803D94E8, 0x803D94F4
	.4byte 0x803D94FC, 0x803D9504, 0x803D9510, 0x803D951C
.global lbl_80474468
lbl_80474468:
	.float -5.654446695723357e-39, -5.6544579061110716e-39, -5.654469116498786e-39, -5.654480326886501e-39
	.float -5.6544971424680726e-39, -5.6545139580496445e-39, -5.6545307736312164e-39, -5.654541984018931e-39
	.float -5.6545531944066456e-39, -5.65456440479436e-39, -5.654575615182075e-39, -5.6545868255697894e-39
	.float -5.654598035957504e-39, -5.654614851539076e-39, -5.654631667120648e-39, 0.0
.global lbl_804744A8
lbl_804744A8:
	.incbin "baserom.dol", 0x4705A8, 0x21
.global lbl_804744C9
lbl_804744C9:
	.ascii "checksum Crash!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804744DC
lbl_804744DC:
	.4byte 0x803DDA70, 0x803DDA78, 0x803DDA80, 0x803DDA88
	.4byte 0x803DDA90, 0x803DDA98, 0x803DDAA0, 0x803DDAA8
	.4byte 0x803DDAB0, 0x803DDAB8, 0x803DDAC0, 0x803DDAC8
.global lbl_8047450C
lbl_8047450C:
	.4byte 0x803DB02C, 0x803DB034, 0x803DB040, 0x803DB04C
	.4byte 0x803DB058, 0x803DB0CC, 0x803DB0E8, 0x803DB0F0
	.4byte 0x803DB0F8, 0x803DB100, 0x803DB108, 0x803DB110
	.4byte 0x803DB118, 0x803DB120, 0x803DB128, 0x803DB130
	.4byte 0x803DB138, 0x803DB140, 0x803DB148, 0x803DB150
	.4byte 0x803DB158, 0x803DB160, 0x803DB168, 0x803DB170
	.4byte 0x803DB178, 0x803DB180, 0x803DB180, 0x803DB180
	.4byte 0x803DB180, 0x803DB180, 0x803DB180, 0x803DB180
	.4byte 0x803DB180, 0x803DB180, 0x803DB180, 0x803DB180
	.4byte 0x803DB180, 0x803DB180, 0x803DB180, 0x803DB180
	.4byte 0x803DB180, 0x803DB180, 0x803DB180, 0x803DB180
	.4byte 0x803DB180, 0x803DB180, 0x803DB180, 0x803DB180
	.4byte 0x803DB180, 0x803DB180, 0x803DB180, 0x803DB180
	.4byte 0x803DB180, 0x803DB180, 0x803DB1A4, 0x803DB1A4
	.4byte 0x803DB1A4, 0x803DB1A4, 0x803DB1B4, 0x803DB1B4
	.4byte 0x803DB1B4, 0x803DB1B4, 0x803DB1C0, 0x803DB1C0
	.4byte 0x803DB1C0, 0x803DB1C0, 0x803DB1CC, 0x803DB1CC
	.4byte 0x803DB1CC, 0x803DB1CC, 0x803DB1EC, 0x803DB1F8
	.4byte 0x803DB204, 0x803DB210, 0x803DB21C, 0x803DB228
	.4byte 0x803DB234, 0x803DB250, 0x803DB25C, 0x803DB25C
	.4byte 0x803DB25C, 0x803DB25C, 0x803DB25C, 0x803DB25C
	.4byte 0x803DB25C, 0x803DB25C, 0x803DB25C, 0x803DB25C
	.4byte 0x803DB25C, 0x803DB25C, 0x803DB25C, 0x803DB25C
	.4byte 0x803DB25C, 0x803DB25C, 0x803DB25C, 0x803DB25C
	.4byte 0x803DB25C, 0x803DB25C, 0x803DB25C, 0x803DB25C
	.4byte 0x803DB25C, 0x803DB25C, 0x803DB25C, 0x803DB25C
	.4byte 0x803DB25C, 0x803DB25C, 0x803DB25C, 0x803DB25C
	.4byte 0x803DB25C, 0x803DB25C, 0x803DB280, 0x803DB28C
	.4byte 0x803DB298, 0x803DB2A4, 0x803DB2AC, 0x803DB024
	.4byte 0x803DB2B4, 0x803DB024, 0x803DB314, 0x803DB30C
	.4byte 0x803DB358, 0x803DB360, 0x803DB368, 0x803DB368
	.4byte 0x803DB368, 0x803DB368, 0x803DB368, 0x803DB368
	.4byte 0x803DB368, 0x803DB368, 0x803DB368, 0x803DB368
	.4byte 0x803DB368, 0x803DB368, 0x803DB368, 0x803DB368
	.4byte 0x803DB368, 0x803DB368, 0x803DB368, 0x803DB368
	.4byte 0x803DB368, 0x803DB368, 0x803DB368, 0x803DB398
	.4byte 0x803DB3D0, 0x803DB3DC, 0x803DB3E4, 0x803DB3EC
	.4byte 0x803DB3F4, 0x803DB3FC, 0x803DB404, 0x803DB40C
	.4byte 0x803DB414, 0x803DB41C, 0x803DB424, 0x803DB42C
	.4byte 0x803DB438, 0x803DB444, 0x803DB44C, 0x803DB024
	.4byte 0x803DB0B8, 0x803DB024, 0x803DB024, 0x803DB024
	.4byte 0x803DB024, 0x803DB024, 0x803DB024, 0x803DB024
	.4byte 0x803DB024, 0x803DB024, 0x803DB024, 0x803DB060
	.4byte 0x803DB070, 0x803DB08C, 0x803DB454, 0x803DB478
	.4byte 0x803DB4A8, 0x803DB4A8, 0x803DB4F8
.global lbl_804747D8
lbl_804747D8:
	.4byte 0x803DB5BC, 0x803DB5C8, 0x803DB5D4, 0x803DB5E0
	.4byte 0x803DB5EC, 0x803DB5F8, 0x803DB604, 0x803DB610
	.4byte 0x803DB61C, 0x803DB628, 0x803DB644, 0x803DB644
.global lbl_80474808
lbl_80474808:
	.incbin "baserom.dol", 0x470908, 0x1C
.global lbl_80474824
lbl_80474824:
	.4byte 0x803DDB88, 0x803DDB94, 0x803DDBBC, 0x803DDBE4
	.4byte 0x803DDBF8, 0x803DDC04, 0x803DDC10, 0x803DDC1C
	.4byte 0x803DDC28, 0x803DDC34, 0x803DDC40, 0x803DDC4C
	.4byte 0x803DDC58, 0x803DDC64, 0x803DDC70, 0x803DDC7C
	.4byte 0x803DDC88, 0x803DDC94, 0x803DDCA0, 0x803DDCAC
	.4byte 0x803DDCB8, 0x803DDCC4, 0x803DDCD0, 0x803DDCDC
	.4byte 0x803DDCE8, 0x803DDCF4, 0x803DDCF4, 0x803DDCF4
	.4byte 0x803DDCF4, 0x803DDCF4, 0x803DDCF4, 0x803DDCF4
	.4byte 0x803DDCF4, 0x803DDCF4, 0x803DDCF4, 0x803DDCF4
	.4byte 0x803DDCF4, 0x803DDCF4, 0x803DDCF4, 0x803DDCF4
	.4byte 0x803DDCF4, 0x803DDCF4, 0x803DDCF4, 0x803DDCF4
	.4byte 0x803DDCF4, 0x803DDCF4, 0x803DDCF4, 0x803DDCF4
	.4byte 0x803DDCF4, 0x803DDCF4, 0x803DDCF4, 0x803DDCF4
	.4byte 0x803DDCF4, 0x803DDCF4, 0x803DDD38, 0x803DDD38
	.4byte 0x803DDD38, 0x803DDD38, 0x803DDD4C, 0x803DDD4C
	.4byte 0x803DDD4C, 0x803DDD4C, 0x803DDD5C, 0x803DDD5C
	.4byte 0x803DDD5C, 0x803DDD5C, 0x803DE0E4, 0x803DE0E4
	.4byte 0x803DE0E4, 0x803DE0E4, 0x803DDD6C, 0x803DDD80
	.4byte 0x803DDD94, 0x803DDDA8, 0x803DDDBC, 0x803DDDD0
	.4byte 0x803DDDE4, 0x803DDDF8, 0x803DDE0C, 0x803DDE0C
	.4byte 0x803DDE0C, 0x803DDE0C, 0x803DDE0C, 0x803DDE0C
	.4byte 0x803DDE0C, 0x803DDE0C, 0x803DDE0C, 0x803DDE0C
	.4byte 0x803DDE0C, 0x803DDE0C, 0x803DDE0C, 0x803DDE0C
	.4byte 0x803DDE0C, 0x803DDE0C, 0x803DDE0C, 0x803DDE0C
	.4byte 0x803DDE0C, 0x803DDE0C, 0x803DDE0C, 0x803DDE0C
	.4byte 0x803DDE0C, 0x803DDE0C, 0x803DDE0C, 0x803DDE0C
	.4byte 0x803DDE0C, 0x803DDE0C, 0x803DDE0C, 0x803DDE0C
	.4byte 0x803DDE0C, 0x803DDE0C, 0x803DDE50, 0x803DDE64
	.4byte 0x803DDE78, 0x803DDE8C, 0x803DDE98, 0x803DE0E4
	.4byte 0x803DDECC, 0x803DDEA4, 0x803DDF24, 0x803DDEEC
	.4byte 0x803DDF38, 0x803DDF44, 0x803DDF50, 0x803DDF50
	.4byte 0x803DDF50, 0x803DDF50, 0x803DDF50, 0x803DDF50
	.4byte 0x803DDF50, 0x803DDF50, 0x803DDF50, 0x803DDF50
	.4byte 0x803DDF50, 0x803DDF50, 0x803DDF50, 0x803DDF50
	.4byte 0x803DDF50, 0x803DDF50, 0x803DDF50, 0x803DDF50
	.4byte 0x803DDF50, 0x803DDF50, 0x803DDF50, 0x803DDFB0
	.4byte 0x803DDFD0, 0x803DDFE0, 0x803DDFEC, 0x803DDFF8
	.4byte 0x803DE004, 0x803DE010, 0x803DE01C, 0x803DE028
	.4byte 0x803DE034, 0x803DE040, 0x803DE04C, 0x803DE058
	.4byte 0x803DE06C, 0x803DE080, 0x803DE08C, 0x803DE0E4
	.4byte 0x803DE0E4, 0x803DE0E4, 0x803DE0E4, 0x803DE0E4
	.4byte 0x803DE0E4, 0x803DE0E4, 0x803DE0E4, 0x803DE0E4
	.4byte 0x803DE0E4, 0x803DE0E4, 0x803DE0E4, 0x803DE0E4
	.4byte 0x803DE0E4, 0x803DE0E4, 0x803DE098, 0x803DE0E4
	.4byte 0x803DE0E4, 0x803DE0E4, 0x803DE0C0
.global lbl_80474AF0
lbl_80474AF0:
	.incbin "baserom.dol", 0x470BF0, 0x1B
.global lbl_80474B0B
lbl_80474B0B:
	.incbin "baserom.dol", 0x470C0B, 0xD
.global lbl_80474B18
lbl_80474B18:
	.4byte 0x803DB7A0, 0x803DB7A8, 0x803DB7B0, 0x803DB7B8
	.4byte 0x803DB7C0, 0x803DB7C8, 0x803DB7D0, 0x803DB7D8
	.4byte 0x803DB7E0, 0x803DB7E8, 0x803DB7F0, 0x803DB7FC
	.4byte 0x803DB808, 0x803DB814, 0x803DB820, 0x803DB82C
	.4byte 0x803DB838, 0x803DB840, 0x803DB848, 0x803DB850
	.4byte 0x803DB858, 0x803DB860, 0x803DB868, 0x803DB870
	.4byte 0x803DB878, 0x803DB880, 0x803DB888, 0x803DB890
	.4byte 0x803DB89C, 0x803DB8A8, 0x803DB8B0, 0x803DB8B8
	.4byte 0x803DB8C0
.global lbl_80474B9C
lbl_80474B9C:
	.ascii "PokeGrowDataGet:TableIndexOver!"
	.byte 0x00
.global lbl_80474BBC
lbl_80474BBC:
	.ascii "PokeGrowParaGet:TableIndexOver!"
	.byte 0x00
.global lbl_80474BDC
lbl_80474BDC:
	.ascii "PokeGrowParaGet:Level Over!"
	.byte 0x00
.global lbl_80474BF8
lbl_80474BF8:
	.4byte 0x803DCC98, 0x803DCCA0, 0x803DCCA8, 0x803DCCB0
	.4byte 0x803DCCB8, 0x803DCCC0, 0x803DCCC8, 0x803DCCD0
	.4byte 0x803DCCD8, 0x803DCCE0, 0x803DCCE8, 0x803DCCF0
	.4byte 0x803DCCF8, 0x803DCD00, 0x803DCD08, 0x803DCD10
.global lbl_80474C38
lbl_80474C38:
	.ascii "PokeParaAdrsGet:Index Over!"
	.byte 0x00
.global lbl_80474C54
lbl_80474C54:
	.float -5.677315886661138e-39, -5.6774167801505694e-39, -5.677517673640001e-39, -5.677618567129432e-39
	.float -5.6777194606188635e-39, -5.677820354108295e-39, -5.677921247597726e-39, -5.678022141087158e-39
	.float -5.678123034576589e-39, -5.6782239280660205e-39, -5.678324821555452e-39, -5.678425715044883e-39
	.float -5.6785266085343146e-39, -5.678627502023746e-39, -5.6787283955131774e-39, -5.678829289002609e-39
	.float -5.67893018249204e-39, -5.6790310759814715e-39, -5.679131969470903e-39, -5.679232862960334e-39
	.float -5.679333756449766e-39, -5.679434649939197e-39, -5.6795355434286285e-39, -5.67963643691806e-39
	.float -5.677315886661138e-39, -5.6774167801505694e-39, -5.677517673640001e-39, -5.677618567129432e-39
	.float -5.6777194606188635e-39, -5.677820354108295e-39, -5.677921247597726e-39, -5.678022141087158e-39
	.float 0.0
.global lbl_80474CD8
lbl_80474CD8:
	.4byte 0x803DEAE4, 0x803DEAEC, 0x803DEAF4, 0x803DEAFC
	.4byte 0x803DEB04, 0x803DEB0C, 0x803DEB14, 0x803DEB1C
	.4byte 0x803DEB24, 0x803DEB30, 0x803DEB38, 0x803DEB40
.global lbl_80474D08
lbl_80474D08:
	.ascii "STRBUF overflow : dstsize=%d,  srclen=%d"
	.byte 0x00
.global lbl_80474D31
lbl_80474D31:
	.ascii "STRBUF overflow: bufsize=%d, keta=%d"
	.byte 0x00
.global lbl_80474D56
lbl_80474D56:
	.ascii "STRBUF overflow: busize=%d"
	.byte 0x00
.global lbl_80474D71
lbl_80474D71:
	.ascii "STRBUF overflow: bufsize=%d, strlen=%d"
	.byte 0x00
.global lbl_80474D98
lbl_80474D98:
	.ascii "STRBUF overflow: strlen=%d, arysize=%d"
	.byte 0x00
.global lbl_80474DBF
lbl_80474DBF:
	.ascii "STRBUF overflow: bufsize=%d, src_len=%d, dst_len=%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80474DF8
lbl_80474DF8:
	.ascii "bufID=%d, wordmax=%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80474E10
lbl_80474E10:
	.float -5.6932290320220106e-39, -5.693257057991297e-39, -5.693184190471152e-39, -5.693195400858867e-39
	.float -5.6932066112465814e-39, -5.693217821634296e-39, -5.69331310992987e-39, -5.693268268379012e-39
	.float -5.693279478766726e-39, -5.693290689154441e-39, -5.6933018995421555e-39, 0.0
.global lbl_80474E40
lbl_80474E40:
	.incbin "baserom.dol", 0x470F40, 0x21
.global lbl_80474E61
lbl_80474E61:
	.ascii "PokeParaAdrsGet:Index Over!"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80474E80
lbl_80474E80:
	.4byte 0x803E05DC, 0x803E0624, 0x803E066C, 0x803E06B4
	.4byte 0x803E06FC, 0x803E0744, 0x803E078C, 0x803E07D4
	.4byte 0x803E081C, 0x803E0864, 0x803E08AC, 0x803E08F4
	.4byte 0x803E093C, 0x803E0984, 0x803E09CC, 0x803E0A14
	.4byte 0x803E0A5C, 0x803E0AA4, 0x803E0AEC, 0x803E0B34
	.4byte 0x803E0B7C, 0x803E0BC4, 0x803E0C0C, 0x803E0C54
	.4byte 0x803E05DC, 0x803E0624, 0x803E066C, 0x803E06B4
	.4byte 0x803E06FC, 0x803E0744, 0x803E078C, 0x803E07D4
