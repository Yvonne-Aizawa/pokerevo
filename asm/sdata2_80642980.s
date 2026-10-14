	.include "macros.inc"

	.section .sdata2, "wa"  # 0x80640600 - 0x80643020

# Continuation of sdata2_80642660.s after TPL.c's constant (0x80642980).
	.balign 8

.global lbl_80642980
lbl_80642980:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642988
lbl_80642988:
	.2byte 0x3FB5, 0x04F3
.global lbl_8064298C
lbl_8064298C:
	.2byte 0x3FEC, 0x835E
.global lbl_80642990
lbl_80642990:
	.2byte 0x3F8A, 0x8BD4
.global lbl_80642994
lbl_80642994:
	.2byte 0xC027, 0x3D75
.global lbl_80642998
lbl_80642998:
	.8byte 0x4480000000000000
.global lbl_806429A0
lbl_806429A0:
	.skip 0x4
.global lbl_806429A4
lbl_806429A4:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806429A8
lbl_806429A8:
	.2byte 0x3EC4, 0x89D2
.global lbl_806429AC
lbl_806429AC:
	.2byte 0xBF80, 0x0000
.global lbl_806429B0
lbl_806429B0:
	.2byte 0x3F80, 0x0000
.global lbl_806429B4
lbl_806429B4:
	.2byte 0xBF40, 0x0000
.global lbl_806429B8
lbl_806429B8:
	.ascii "?@"
	.byte 0x00
	.byte 0x00
.global lbl_806429BC
lbl_806429BC:
	.2byte 0xBE4C, 0xCCCD
.global lbl_806429C0
lbl_806429C0:
	.2byte 0x3E4C, 0xCCCD
.global lbl_806429C4
lbl_806429C4:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806429C8
lbl_806429C8:
	.8byte 0x4330000080000000
.global lbl_806429D0
lbl_806429D0:
	.ascii ";"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806429D4
lbl_806429D4:
	.2byte 0x3F7F, 0xC000
.global lbl_806429D8
lbl_806429D8:
	.2byte 0x3F3F, 0xC000
.global lbl_806429DC
lbl_806429DC:
	.2byte 0x0001
.global lbl_806429DE
lbl_806429DE:
	.2byte 0x0001
.global lbl_806429E0
lbl_806429E0:
	.2byte 0x0001, 0x0000
.global lbl_806429E4
lbl_806429E4:
	.2byte 0x0001
.global lbl_806429E6
lbl_806429E6:
	.2byte 0x0001
.global lbl_806429E8
lbl_806429E8:
	.2byte 0x0001, 0x0000
.global lbl_806429EC
lbl_806429EC:
	.2byte 0x3C23, 0xD70A
.global lbl_806429F0
lbl_806429F0:
	.8byte 0x3BA3D70A00000000
.global lbl_806429F8
lbl_806429F8:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642A00
lbl_80642A00:
	.skip 0x1
.global lbl_80642A01
lbl_80642A01:
	.skip 0x1
.global lbl_80642A02
lbl_80642A02:
	.byte 0xD0
.global lbl_80642A03
lbl_80642A03:
	.byte 0x07
.global lbl_80642A04
lbl_80642A04:
	.byte 0x40
.global lbl_80642A05
lbl_80642A05:
	.byte 0x0C
.global lbl_80642A06
lbl_80642A06:
	.2byte 0x0E00
.global lbl_80642A08
lbl_80642A08:
	.2byte 0x007F
.global lbl_80642A0A
lbl_80642A0A:
	.2byte 0x007F
.global lbl_80642A0C
lbl_80642A0C:
	.2byte 0x0380
.global lbl_80642A0E
lbl_80642A0E:
	.2byte 0x0380
.global lbl_80642A10
lbl_80642A10:
	.2byte 0x005D
.global lbl_80642A12
lbl_80642A12:
	.2byte 0x02A2
.global lbl_80642A14
lbl_80642A14:
	.2byte 0x02A2
.global lbl_80642A16
lbl_80642A16:
	.2byte 0x005D
.global lbl_80642A18
lbl_80642A18:
	.8byte 0x40490FD800000000
.global lbl_80642A20
lbl_80642A20:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642A28
lbl_80642A28:
	.8byte 0x4330000080000000
.global lbl_80642A30
lbl_80642A30:
	.byte 0x57
.global lbl_80642A31
lbl_80642A31:
	.byte 0x69
.global lbl_80642A32
lbl_80642A32:
	.byte 0x69
.global lbl_80642A33
lbl_80642A33:
	.skip 0x1
.global lbl_80642A34
lbl_80642A34:
	.skip 0x1
.global lbl_80642A35
lbl_80642A35:
	.byte 0x04
.global lbl_80642A36
lbl_80642A36:
	.ascii "H"
	.byte 0x00
.global lbl_80642A38
lbl_80642A38:
	.8byte 0x0304030200000000
.global lbl_80642A40
lbl_80642A40:
	.2byte 0x1300, 0x1100, 0x1200, 0x1000, 0x0004, 0x0201, 0x0000, 0x0000
.global lbl_80642A50
lbl_80642A50:
	.2byte 0x0001
.global lbl_80642A52
lbl_80642A52:
	.2byte 0x8001, 0x0000, 0x0000
.global lbl_80642A58
lbl_80642A58:
	.8byte 0x802C049800000000
.global lbl_80642A60
lbl_80642A60:
	.8byte 0x802C053000000000
.global lbl_80642A68
lbl_80642A68:
	.8byte 0x802C2E80802C27E4
.global lbl_80642A70
lbl_80642A70:
	.2byte 0x9E8B, 0x3300
.global lbl_80642A74
lbl_80642A74:
	.2byte 0x9E8B, 0x0000
.global lbl_80642A78
lbl_80642A78:
	.2byte 0x0000, 0x0100
.global lbl_80642A7C
lbl_80642A7C:
	.2byte 0x4080, 0x0100
.global lbl_80642A80
lbl_80642A80:
	.byte 0xFF
.global lbl_80642A81
lbl_80642A81:
	.byte 0xFF
.global lbl_80642A82
lbl_80642A82:
	.byte 0xFF
.global lbl_80642A83
lbl_80642A83:
	.byte 0xFF
.global lbl_80642A84
lbl_80642A84:
	.byte 0xFF
.global lbl_80642A85
lbl_80642A85:
	.ascii "\xff"
	.byte 0x00
	.byte 0x00
.global lbl_80642A88
lbl_80642A88:
	.ascii "\xff\xff\xff\xff\xff\xff"
	.byte 0x00
	.byte 0x00
.global lbl_80642A90
lbl_80642A90:
	.8byte 0x4330000080000000
.global lbl_80642A98
lbl_80642A98:
	.8byte 0x00FE7F0260010000
.global lbl_80642AA0
lbl_80642AA0:
	.byte 0x01
.global lbl_80642AA1
lbl_80642AA1:
	.2byte 0x0200
	.byte 0x00
.global lbl_80642AA4
lbl_80642AA4:
	.byte 0x01
.global lbl_80642AA5
lbl_80642AA5:
	.2byte 0x0200
	.byte 0x00
.global lbl_80642AA8
lbl_80642AA8:
	.byte 0x01
.global lbl_80642AA9
lbl_80642AA9:
	.2byte 0x0200, 0x0000, 0x0000
	.byte 0x00
.global lbl_80642AB0
lbl_80642AB0:
	.4byte 0x8063E008
.global lbl_80642AB4
lbl_80642AB4:
	.4byte 0x8063E010
.global lbl_80642AB8
lbl_80642AB8:
	.ascii "+/="
	.byte 0x00
.global lbl_80642ABC
lbl_80642ABC:
	.ascii "[]_"
	.byte 0x00
.global lbl_80642AC0
lbl_80642AC0:
	.ascii "-_="
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642AC8
lbl_80642AC8:
	.skip 0x8
.global lbl_80642AD0
lbl_80642AD0:
	.byte 0xFD
.global lbl_80642AD1
lbl_80642AD1:
	.byte 0xFC
.global lbl_80642AD2
lbl_80642AD2:
	.byte 0x1E
.global lbl_80642AD3
lbl_80642AD3:
	.byte 0x66
.global lbl_80642AD4
lbl_80642AD4:
	.byte 0x6A
.global lbl_80642AD5
lbl_80642AD5:
	.2byte 0xB200
	.byte 0x00
.global lbl_80642AD8
lbl_80642AD8:
	.byte 0x25
.global lbl_80642AD9
lbl_80642AD9:
	.byte 0x30
.global lbl_80642ADA
lbl_80642ADA:
	.byte 0x30
.global lbl_80642ADB
lbl_80642ADB:
	.skip 0x5
.global lbl_80642AE0
lbl_80642AE0:
	.8byte 0x4330000080000000
.global lbl_80642AE8
lbl_80642AE8:
	.4byte 0x8063E7A0
.global lbl_80642AEC
lbl_80642AEC:
	.4byte 0x8063E7A8
.global lbl_80642AF0
lbl_80642AF0:
	.skip 0x8
.global lbl_80642AF8
lbl_80642AF8:
	.skip 0x8
.global lbl_80642B00
lbl_80642B00:
	.byte 0xFE
.global lbl_80642B01
lbl_80642B01:
	.byte 0xFD
.global lbl_80642B02
lbl_80642B02:
	.byte 0x02
.global lbl_80642B03
lbl_80642B03:
	.skip 0x1
.global lbl_80642B04
lbl_80642B04:
	.skip 0x1
.global lbl_80642B05
lbl_80642B05:
	.skip 0x1
.global lbl_80642B06
lbl_80642B06:
	.skip 0x1
.global lbl_80642B07
lbl_80642B07:
	.skip 0x1
.global lbl_80642B08
lbl_80642B08:
	.8byte 0x4330000080000000
.global lbl_80642B10
lbl_80642B10:
	.skip 0x4
.global lbl_80642B14
lbl_80642B14:
	.2byte 0x3F80, 0x0000
.global lbl_80642B18
lbl_80642B18:
	.8byte 0x4330000080000000
.global lbl_80642B20
lbl_80642B20:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642B28
lbl_80642B28:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642B30
lbl_80642B30:
	.2byte 0x7F7F, 0xFFFF
.global lbl_80642B34
lbl_80642B34:
	.skip 0x4
.global lbl_80642B38
lbl_80642B38:
	.8byte 0x4330000080000000
.global lbl_80642B40
lbl_80642B40:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642B48
lbl_80642B48:
	.skip 0x4
.global lbl_80642B4C
lbl_80642B4C:
	.2byte 0x3F80, 0x0000
.global lbl_80642B50
lbl_80642B50:
	.8byte 0x4330000080000000
.global lbl_80642B58
lbl_80642B58:
	.ascii "G"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642B5C
lbl_80642B5C:
	.2byte 0x46FA, 0x0000
.global lbl_80642B60
lbl_80642B60:
	.2byte 0x46FA, 0x0000
.global lbl_80642B64
lbl_80642B64:
	.2byte 0x3FAA, 0xAAAB
.global lbl_80642B68
lbl_80642B68:
	.8byte 0x3F80000000000000
.global lbl_80642B70
lbl_80642B70:
	.8byte 0x4330000080000000
.global lbl_80642B78
lbl_80642B78:
	.2byte 0x4780, 0x0000
.global lbl_80642B7C
lbl_80642B7C:
	.2byte 0x46FF, 0xFE00
.global lbl_80642B80
lbl_80642B80:
	.2byte 0x42FE, 0x0000
.global lbl_80642B84
lbl_80642B84:
	.ascii "B|"
	.byte 0x00
	.byte 0x00
.global lbl_80642B88
lbl_80642B88:
	.skip 0x8
.global lbl_80642B90
lbl_80642B90:
	.8byte 0x4330000080000000
.global lbl_80642B98
lbl_80642B98:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642BA0
lbl_80642BA0:
	.8byte 0x3F80000000000000
.global lbl_80642BA8
lbl_80642BA8:
	.2byte 0x3F80, 0x0000
.global lbl_80642BAC
lbl_80642BAC:
	.skip 0x4
.global lbl_80642BB0
lbl_80642BB0:
	.skip 0x4
.global lbl_80642BB4
lbl_80642BB4:
	.2byte 0x3F80, 0x0000
.global lbl_80642BB8
lbl_80642BB8:
	.8byte 0x4330000080000000
.global lbl_80642BC0
lbl_80642BC0:
	.skip 0x4
.global lbl_80642BC4
lbl_80642BC4:
	.2byte 0x3F80, 0x0000
.global lbl_80642BC8
lbl_80642BC8:
	.2byte 0x437F, 0x0000
.global lbl_80642BCC
lbl_80642BCC:
	.2byte 0x40C0, 0x0000
.global lbl_80642BD0
lbl_80642BD0:
	.8byte 0x4380000000000000
.global lbl_80642BD8
lbl_80642BD8:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642BE0
lbl_80642BE0:
	.8byte 0x4330000080000000
.global lbl_80642BE8
lbl_80642BE8:
	.2byte 0xC2B4, 0xCCCD
.global lbl_80642BEC
lbl_80642BEC:
	.2byte 0x477F, 0xFF00
.global lbl_80642BF0
lbl_80642BF0:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80642BF4
lbl_80642BF4:
	.skip 0x4
.global lbl_80642BF8
lbl_80642BF8:
	.8byte 0xBD00000000000000
.global lbl_80642C00
lbl_80642C00:
	.8byte 0x4330000080000000
.global lbl_80642C08
lbl_80642C08:
	.2byte 0x41C0, 0x0000
.global lbl_80642C0C
lbl_80642C0C:
	.ascii "<"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642C10
lbl_80642C10:
	.2byte 0x40A0, 0x0000
.global lbl_80642C14
lbl_80642C14:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80642C18
lbl_80642C18:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642C20
lbl_80642C20:
	.8byte 0x42C8000000000000
.global lbl_80642C28
lbl_80642C28:
	.2byte 0x3DCC, 0xCCCD
.global lbl_80642C2C
lbl_80642C2C:
	.skip 0x4
.global lbl_80642C30
lbl_80642C30:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80642C34
lbl_80642C34:
	.2byte 0x3F80, 0x0000
.global lbl_80642C38
lbl_80642C38:
	.2byte 0x3DCC, 0xCCCD
.global lbl_80642C3C
lbl_80642C3C:
	.skip 0x4
.global lbl_80642C40
lbl_80642C40:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80642C44
lbl_80642C44:
	.2byte 0x3F80, 0x0000
.global lbl_80642C48
lbl_80642C48:
	.2byte 0x3DCC, 0xCCCD
.global lbl_80642C4C
lbl_80642C4C:
	.skip 0x4
.global lbl_80642C50
lbl_80642C50:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80642C54
lbl_80642C54:
	.2byte 0x3F80, 0x0000
.global lbl_80642C58
lbl_80642C58:
	.skip 0x4
.global lbl_80642C5C
lbl_80642C5C:
	.2byte 0x40C8, 0x0000
.global lbl_80642C60
lbl_80642C60:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642C68
lbl_80642C68:
	.8byte 0x4330000080000000
.global lbl_80642C70
lbl_80642C70:
	.2byte 0x4080, 0x0000
.global lbl_80642C74
lbl_80642C74:
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642C78
lbl_80642C78:
	.8byte 0x42FE000000000000
.global lbl_80642C80
lbl_80642C80:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642C88
lbl_80642C88:
	.ascii "<"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642C8C
lbl_80642C8C:
	.2byte 0x3EC8, 0x0000
.global lbl_80642C90
lbl_80642C90:
	.ascii "="
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642C98
lbl_80642C98:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642CA0
lbl_80642CA0:
	.8byte 0x4330000080000000
.global lbl_80642CA8
lbl_80642CA8:
	.2byte 0x3F80, 0x0000
.global lbl_80642CAC
lbl_80642CAC:
	.skip 0x4
.global lbl_80642CB0
lbl_80642CB0:
	.8byte 0x4330000080000000
.global lbl_80642CB8
lbl_80642CB8:
	.ascii "Gj`"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642CC0
lbl_80642CC0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642CC8
lbl_80642CC8:
	.2byte 0x3F80, 0x0000
.global lbl_80642CCC
lbl_80642CCC:
	.skip 0x4
.global lbl_80642CD0
lbl_80642CD0:
	.2byte 0x42FE, 0x0000
.global lbl_80642CD4
lbl_80642CD4:
	.ascii "<"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642CD8
lbl_80642CD8:
	.ascii "B|"
	.byte 0x00
	.byte 0x00
.global lbl_80642CDC
lbl_80642CDC:
	.2byte 0xBF80, 0x0000
.global lbl_80642CE0
lbl_80642CE0:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642CE4
lbl_80642CE4:
	.2byte 0x3C80, 0x0000
.global lbl_80642CE8
lbl_80642CE8:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642CF0
lbl_80642CF0:
	.8byte 0x4330000080000000
.global lbl_80642CF8
lbl_80642CF8:
	.8byte 0x3F80000000000000
.global lbl_80642D00
lbl_80642D00:
	.2byte 0x3F49, 0x0FDB
.global lbl_80642D04
lbl_80642D04:
	.2byte 0x3F06, 0x0A92
.global lbl_80642D08
lbl_80642D08:
	.2byte 0x4006, 0x0A92
.global lbl_80642D0C
lbl_80642D0C:
	.skip 0x4
.global lbl_80642D10
lbl_80642D10:
	.ascii "?fff"
.global lbl_80642D14
lbl_80642D14:
	.2byte 0x3F80, 0x0000
.global lbl_80642D18
lbl_80642D18:
	.2byte 0x3B80, 0x0000
.global lbl_80642D1C
lbl_80642D1C:
	.2byte 0xC049, 0x0FDB
.global lbl_80642D20
lbl_80642D20:
	.2byte 0xBF00, 0x0000
.global lbl_80642D24
lbl_80642D24:
	.2byte 0x4049, 0x0FDB
.global lbl_80642D28
lbl_80642D28:
	.2byte 0xBFC9, 0x0FDB
.global lbl_80642D2C
lbl_80642D2C:
	.2byte 0xBF80, 0x0000
.global lbl_80642D30
lbl_80642D30:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642D34
lbl_80642D34:
	.2byte 0x3FC9, 0x0FDB
.global lbl_80642D38
lbl_80642D38:
	.2byte 0xC000, 0x0000
.global lbl_80642D3C
lbl_80642D3C:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642D40
lbl_80642D40:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642D48
lbl_80642D48:
	.8byte 0x4330000080000000
.global lbl_80642D50
lbl_80642D50:
	.8byte 0x42FE000000000000
.global lbl_80642D58
lbl_80642D58:
	.8byte 0x4330000080000000
.global lbl_80642D60
lbl_80642D60:
	.2byte 0x3F80, 0x0000
.global lbl_80642D64
lbl_80642D64:
	.skip 0x4
.global lbl_80642D68
lbl_80642D68:
	.2byte 0x3F80, 0x0000
.global lbl_80642D6C
lbl_80642D6C:
	.skip 0x4
.global lbl_80642D70
lbl_80642D70:
	.2byte 0x3F80, 0x0000
.global lbl_80642D74
lbl_80642D74:
	.skip 0x4
.global lbl_80642D78
lbl_80642D78:
	.2byte 0xBDF5, 0xC28F
.global lbl_80642D7C
lbl_80642D7C:
	.2byte 0x3F61, 0x47AE
.global lbl_80642D80
lbl_80642D80:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642D84
lbl_80642D84:
	.2byte 0x3F8F, 0x5C29
.global lbl_80642D88
lbl_80642D88:
	.2byte 0x3F59, 0x999A
.global lbl_80642D8C
lbl_80642D8C:
	.2byte 0x3E19, 0x9998
.global lbl_80642D90
lbl_80642D90:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642D94
lbl_80642D94:
	.2byte 0x3EB3, 0x3334
.global lbl_80642D98
lbl_80642D98:
	.2byte 0xBF80, 0x0000
.global lbl_80642D9C
lbl_80642D9C:
	.2byte 0xC040, 0x0000
.global lbl_80642DA0
lbl_80642DA0:
	.ascii "G"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642DA8
lbl_80642DA8:
	.2byte 0x3F80, 0x0000
.global lbl_80642DAC
lbl_80642DAC:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642DB0
lbl_80642DB0:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642DB4
lbl_80642DB4:
	.2byte 0x40C0, 0x0000
.global lbl_80642DB8
lbl_80642DB8:
	.2byte 0xC2B4, 0xCCCD
.global lbl_80642DBC
lbl_80642DBC:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80642DC0
lbl_80642DC0:
	.2byte 0xBF80, 0x0000
.global lbl_80642DC4
lbl_80642DC4:
	.2byte 0x4380, 0x0000
.global lbl_80642DC8
lbl_80642DC8:
	.skip 0x8
.global lbl_80642DD0
lbl_80642DD0:
	.8byte 0x40DF400000000000
.global lbl_80642DD8
lbl_80642DD8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642DE0
lbl_80642DE0:
	.ascii "@$"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642DE8
lbl_80642DE8:
	.8byte 0x3FF0000000000000
.global lbl_80642DF0
lbl_80642DF0:
	.8byte 0x3F80000000000000
.global lbl_80642DF8
lbl_80642DF8:
	.2byte 0x3F80, 0x0000
.global lbl_80642DFC
lbl_80642DFC:
	.skip 0x4
.global lbl_80642E00
lbl_80642E00:
	.ascii "B|"
	.byte 0x00
	.byte 0x00
.global lbl_80642E04
lbl_80642E04:
	.2byte 0x3C80, 0x0000
.global lbl_80642E08
lbl_80642E08:
	.8byte 0x42FE000000000000
.global lbl_80642E10
lbl_80642E10:
	.8byte 0x4330000080000000
.global lbl_80642E18
lbl_80642E18:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642E20
lbl_80642E20:
	.2byte 0x4780, 0x0000
.global lbl_80642E24
lbl_80642E24:
	.skip 0x4
.global lbl_80642E28
lbl_80642E28:
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642E2C
lbl_80642E2C:
	.2byte 0x4280, 0x0000
.global lbl_80642E30
lbl_80642E30:
	.2byte 0xC280, 0x0000
.global lbl_80642E34
lbl_80642E34:
	.ascii "C"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642E38
lbl_80642E38:
	.8byte 0xC300000000000000
.global lbl_80642E40
lbl_80642E40:
	.skip 0x4
.global lbl_80642E44
lbl_80642E44:
	.2byte 0x3F80, 0x0000
.global lbl_80642E48
lbl_80642E48:
	.2byte 0x3C8E, 0xFA35
.global lbl_80642E4C
lbl_80642E4C:
	.float 0.003921568859368563
.global lbl_80642E50
lbl_80642E50:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642E58
lbl_80642E58:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642E60
lbl_80642E60:
	.skip 0x4
.global lbl_80642E64
lbl_80642E64:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642E68
lbl_80642E68:
	.skip 0x8
.global lbl_80642E70
lbl_80642E70:
	.skip 0x8
.global lbl_80642E78
lbl_80642E78:
	.8byte 0x4330000080000000
.global lbl_80642E80
lbl_80642E80:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642E84
lbl_80642E84:
	.2byte 0x3F80, 0x0000
.global lbl_80642E88
lbl_80642E88:
	.skip 0x8
.global lbl_80642E90
lbl_80642E90:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642E98
lbl_80642E98:
	.8byte 0x4330000080000000
.global lbl_80642EA0
lbl_80642EA0:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642EA4
lbl_80642EA4:
	.2byte 0x3F36, 0x0B61
.global lbl_80642EA8
lbl_80642EA8:
	.skip 0x4
.global lbl_80642EAC
lbl_80642EAC:
	.2byte 0x3F80, 0x0000
.global lbl_80642EB0
lbl_80642EB0:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642EB8
lbl_80642EB8:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642EC0
lbl_80642EC0:
	.8byte 0x3B80000000000000
.global lbl_80642EC8
lbl_80642EC8:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642ED0
lbl_80642ED0:
	.8byte 0x4380000000000000
.global lbl_80642ED8
lbl_80642ED8:
	.skip 0x4
.global lbl_80642EDC
lbl_80642EDC:
	.2byte 0x3F80, 0x0000
.global lbl_80642EE0
lbl_80642EE0:
	.2byte 0xBA83, 0x126F
.global lbl_80642EE4
lbl_80642EE4:
	.2byte 0x3A83, 0x126F
.global lbl_80642EE8
lbl_80642EE8:
	.2byte 0x3F80, 0x0000
.global lbl_80642EEC
lbl_80642EEC:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642EF0
lbl_80642EF0:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_80642EF4
lbl_80642EF4:
	.2byte 0xC000, 0x0000
.global lbl_80642EF8
lbl_80642EF8:
	.skip 0x4
.global lbl_80642EFC
lbl_80642EFC:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642F00
lbl_80642F00:
	.skip 0x4
.global lbl_80642F04
lbl_80642F04:
	.2byte 0x3F80, 0x0000
.global lbl_80642F08
lbl_80642F08:
	.skip 0x8
.global lbl_80642F10
lbl_80642F10:
	.skip 0x8
.global lbl_80642F18
lbl_80642F18:
	.skip 0x8
.global lbl_80642F20
lbl_80642F20:
	.skip 0x8
.global lbl_80642F28
lbl_80642F28:
	.2byte 0xC47A, 0x0000
.global lbl_80642F2C
lbl_80642F2C:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
.global lbl_80642F30
lbl_80642F30:
	.2byte 0x3F99, 0x999A
.global lbl_80642F34
lbl_80642F34:
	.skip 0x4
.global lbl_80642F38
lbl_80642F38:
	.8byte 0x3F80000000000000
.global lbl_80642F40
lbl_80642F40:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642F48
lbl_80642F48:
	.ascii "Ea"
	.byte 0x00
	.byte 0x00
.global lbl_80642F4C
lbl_80642F4C:
	.ascii "E_ "
	.byte 0x00
.global lbl_80642F50
lbl_80642F50:
	.2byte 0xC61C, 0x4000
.global lbl_80642F54
lbl_80642F54:
	.2byte 0x41F0, 0x0000
.global lbl_80642F58
lbl_80642F58:
	.ascii "?fff"
.global lbl_80642F5C
lbl_80642F5C:
	.2byte 0x3DA1, 0x4285
.global lbl_80642F60
lbl_80642F60:
	.ascii "A "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642F68
lbl_80642F68:
	.8byte 0x4330000080000000
.global lbl_80642F70
lbl_80642F70:
	.ascii "@ "
	.byte 0x00
	.byte 0x00
.global lbl_80642F74
lbl_80642F74:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642F78
lbl_80642F78:
	.2byte 0x4110, 0x0000
.global lbl_80642F7C
lbl_80642F7C:
	.ascii "C4"
	.byte 0x00
	.byte 0x00
.global lbl_80642F80
lbl_80642F80:
	.ascii "G"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642F84
lbl_80642F84:
	.ascii "AK33"
.global lbl_80642F88
lbl_80642F88:
	.2byte 0x40A0, 0x0000
.global lbl_80642F8C
lbl_80642F8C:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_80642F90
lbl_80642F90:
	.2byte 0x3FB4, 0x0000
.global lbl_80642F94
lbl_80642F94:
	.2byte 0x4418, 0x0000
.global lbl_80642F98
lbl_80642F98:
	.2byte 0x43E4, 0x0000
.global lbl_80642F9C
lbl_80642F9C:
	.2byte 0xC334, 0x0000
.global lbl_80642FA0
lbl_80642FA0:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642FA8
lbl_80642FA8:
	.8byte 0x3F80000000000000
.global lbl_80642FB0
lbl_80642FB0:
	.skip 0x4
.global lbl_80642FB4
lbl_80642FB4:
	.byte 0xFF
.global lbl_80642FB5
lbl_80642FB5:
	.skip 0x1
.global lbl_80642FB6
lbl_80642FB6:
	.skip 0x1
.global lbl_80642FB7
lbl_80642FB7:
	.byte 0xFF
.global lbl_80642FB8
lbl_80642FB8:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642FC0
lbl_80642FC0:
	.2byte 0x3F80, 0x0000
.global lbl_80642FC4
lbl_80642FC4:
	.2byte 0xC61C, 0x4000
.global lbl_80642FC8
lbl_80642FC8:
	.ascii "A "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642FD0
lbl_80642FD0:
	.2byte 0x0001
.global lbl_80642FD2
lbl_80642FD2:
	.2byte 0x0001, 0x0100
.global lbl_80642FD6
lbl_80642FD6:
	.2byte 0x0203, 0x0405
.global lbl_80642FDA
lbl_80642FDA:
	.2byte 0x0203, 0x0405, 0x0302, 0x0504, 0x0000, 0x0000, 0x0000
.global lbl_80642FE8
lbl_80642FE8:
	.ascii "1iytuxvw"
.global lbl_80642FF0
lbl_80642FF0:
	.8byte 0x1008040302000000
.global lbl_80642FF8
lbl_80642FF8:
	.8byte 0xFFFF7FFF3FFF1FFF
.global lbl_80643000
lbl_80643000:
	.8byte 0xC8503C3228000000
.global lbl_80643008
lbl_80643008:
	.byte 0x0A
.global lbl_80643009
lbl_80643009:
	.2byte 0x0100, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
	.2byte 0x0000, 0x0000, 0x0000
	.byte 0x00
