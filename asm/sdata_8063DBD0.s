	.include "macros.inc"

	.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

# Continuation of sdata_8063DBC8.s after TPL.c's file name (0x8063DBD0).
	.balign 8

.global lbl_8063DBD0
lbl_8063DBD0:
	.8byte 0x8043BEF000000000
.global lbl_8063DBD8
lbl_8063DBD8:
	.4byte 0x8043BF38
.global lbl_8063DBDC
lbl_8063DBDC:
	.2byte 0x3F80, 0x0000
.global lbl_8063DBE0
lbl_8063DBE0:
	.skip 0x4
.global lbl_8063DBE4
lbl_8063DBE4:
	.2byte 0xBF80, 0x0000
.global lbl_8063DBE8
lbl_8063DBE8:
	.2byte 0x3F80, 0x0000
.global lbl_8063DBEC
lbl_8063DBEC:
	.skip 0x4
.global lbl_8063DBF0
lbl_8063DBF0:
	.2byte 0x3E4C, 0xCCCD
.global lbl_8063DBF4
lbl_8063DBF4:
	.2byte 0x3D4C, 0xCCCD
.global lbl_8063DBF8
lbl_8063DBF8:
	.2byte 0x3D8F, 0x5C29
.global lbl_8063DBFC
lbl_8063DBFC:
	.2byte 0x3D75, 0xC28F
.global lbl_8063DC00
lbl_8063DC00:
	.byte 0x00
	.ascii "d"
	.byte 0x00
	.byte 0x00
.global lbl_8063DC04
lbl_8063DC04:
	.2byte 0x3D4C, 0xCCCD
.global lbl_8063DC08
lbl_8063DC08:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_8063DC0C
lbl_8063DC0C:
	.2byte 0x3D23, 0xD70A
.global lbl_8063DC10
lbl_8063DC10:
	.ascii "?fff"
.global lbl_8063DC14
lbl_8063DC14:
	.ascii "?fff"
.global lbl_8063DC18
lbl_8063DC18:
	.ascii "?fff"
.global lbl_8063DC1C
lbl_8063DC1C:
	.ascii "?333"
.global lbl_8063DC20
lbl_8063DC20:
	.2byte 0x3DCC, 0xCCCD
.global lbl_8063DC24
lbl_8063DC24:
	.2byte 0x0000, 0x000F
.global lbl_8063DC28
lbl_8063DC28:
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "G"
.global lbl_8063DC2C
lbl_8063DC2C:
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<"
.global lbl_8063DC30
lbl_8063DC30:
	.2byte 0x0000, 0x0134
.global lbl_8063DC34
lbl_8063DC34:
	.2byte 0x0000, 0x001E
.global lbl_8063DC38
lbl_8063DC38:
	.2byte 0x0000, 0x00B4
.global lbl_8063DC3C
lbl_8063DC3C:
	.2byte 0x4059, 0x999A
.global lbl_8063DC40
lbl_8063DC40:
	.8byte 0x4006666600000000
.global lbl_8063DC48
lbl_8063DC48:
	.2byte 0x0000, 0x0001
.global lbl_8063DC4C
lbl_8063DC4C:
	.4byte 0xFFFFFFFF
.global lbl_8063DC50
lbl_8063DC50:
	.4byte 0xFFFFFFFF
.global lbl_8063DC54
lbl_8063DC54:
	.2byte 0x0000, 0x0001
.global lbl_8063DC58
lbl_8063DC58:
	.ascii "/dev/fs"
	.byte 0x00
.global lbl_8063DC60
lbl_8063DC60:
	.4byte lbl_8043BFB8
.global lbl_8063DC64
lbl_8063DC64:
	.2byte 0x0006
.global lbl_8063DC66
lbl_8063DC66:
	.2byte 0x0004
.global lbl_8063DC68
lbl_8063DC68:
	.2byte 0x001E
.global lbl_8063DC6A
lbl_8063DC6A:
	.2byte 0x001E
.global lbl_8063DC6C
lbl_8063DC6C:
	.ascii "2.0"
	.byte 0x00
.global lbl_8063DC70
lbl_8063DC70:
	.4byte 0xFFFFFFFF
.global lbl_8063DC74
lbl_8063DC74:
	.ascii "USB: "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DC80
lbl_8063DC80:
	.ascii "WUD.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DC88
lbl_8063DC88:
	.2byte 0x0000, 0x0001
.global lbl_8063DC8C
lbl_8063DC8C:
	.4byte 0xFFFFFFFF
.global lbl_8063DC90
lbl_8063DC90:
	.ascii "%02x "
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DC98
lbl_8063DC98:
	.ascii "\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DC9C
lbl_8063DC9C:
	.ascii "oh0"
	.byte 0x00
.global lbl_8063DCA0
lbl_8063DCA0:
	.ascii "oh1"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DCA8
lbl_8063DCA8:
	.4byte 0x803FDACC
.global lbl_8063DCAC
lbl_8063DCAC:
	.4byte 0x803FDAD8
.global lbl_8063DCB0
lbl_8063DCB0:
	.4byte 0x80643020
.global lbl_8063DCB4
lbl_8063DCB4:
	.4byte 0x803FDAEC
.global lbl_8063DCB8
lbl_8063DCB8:
	.float -5.864277127771355e-39, 0.0, 1.0932021560440228e-19, 2.4096061374460536e-38
.global lbl_8063DCC8
lbl_8063DCC8:
	.8byte 0x803FDB5000000000
.global lbl_8063DCD0
lbl_8063DCD0:
	.8byte 0x80642A4800000000
.global lbl_8063DCD8
lbl_8063DCD8:
	.ascii "%s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DCE0
lbl_8063DCE0:
	.8byte 0x0A5C210100000000
.global lbl_8063DCE8
lbl_8063DCE8:
	.2byte 0x0100, 0x0000
.global lbl_8063DCEC
lbl_8063DCEC:
	.2byte 0x0000, 0x0001
.global lbl_8063DCF0
lbl_8063DCF0:
	.skip 0x8
.global lbl_8063DCF8
lbl_8063DCF8:
	.2byte 0x001F, 0x0000
.global lbl_8063DCFC
lbl_8063DCFC:
	.ascii "TRUE"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DD04
lbl_8063DD04:
	.ascii "FALSE"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DD10
lbl_8063DD10:
	.ascii "*******"
	.byte 0x00
.global lbl_8063DD18
lbl_8063DD18:
	.ascii "TRUE"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DD20
lbl_8063DD20:
	.ascii "FALSE"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DD28
lbl_8063DD28:
	.ascii "Bad UA"
	.byte 0x00
	.byte 0x00
.global lbl_8063DD30
lbl_8063DD30:
	.ascii "Bad DM"
	.byte 0x00
	.byte 0x00
.global lbl_8063DD38
lbl_8063DD38:
	.ascii "%s/%08x"
	.byte 0x00
.global lbl_8063DD40
lbl_8063DD40:
	.4byte lbl_80445660
.global lbl_8063DD44
lbl_8063DD44:
	.ascii "/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DD48
lbl_8063DD48:
	.skip 0x4
.global lbl_8063DD4C
lbl_8063DD4C:
	.ascii "."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DD50
lbl_8063DD50:
	.ascii ".."
	.byte 0x00
	.byte 0x00
.global lbl_8063DD54
lbl_8063DD54:
	.ascii "/%s"
	.byte 0x00
.global lbl_8063DD58
lbl_8063DD58:
	.ascii "%s/%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DD60
lbl_8063DD60:
	.ascii "/dev/es"
	.byte 0x00
.global lbl_8063DD68
lbl_8063DD68:
	.skip 0x4
.global lbl_8063DD6C
lbl_8063DD6C:
	.byte 0x00
	.ascii " "
	.byte 0x00
	.byte 0x00
	.ascii "/meta"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/ticket"
	.byte 0x00
.global lbl_8063DD80
lbl_8063DD80:
	.2byte 0x8044, 0x5868, 0x4950, 0x4C2E, 0x4342, 0x0000, 0x4950, 0x4C2E
	.2byte 0x4152, 0x0000, 0x0000, 0x0000, 0x4950, 0x4C2E, 0x4152, 0x4E00
	.2byte 0x4950, 0x4C2E, 0x4344, 0x0000, 0x4950, 0x4C2E, 0x4344, 0x3200
	.2byte 0x4950, 0x4C2E, 0x4448, 0x0000, 0x4950, 0x4C2E, 0x4536, 0x3000
	.2byte 0x4950, 0x4C2E, 0x4652, 0x4300, 0x4950, 0x4C2E, 0x4944, 0x4C00
	.2byte 0x4950, 0x4C2E, 0x494E, 0x4300, 0x4950, 0x4C2E, 0x4C4E, 0x4700
	.2byte 0x4950, 0x4C2E, 0x4E49, 0x4B00, 0x4950, 0x4C2E, 0x5043, 0x0000
	.2byte 0x4950, 0x4C2E, 0x5047, 0x5300, 0x4950, 0x4C2E, 0x5353, 0x5600
	.2byte 0x4950, 0x4C2E, 0x534E, 0x4400, 0x4950, 0x4C2E, 0x5550, 0x5400
	.2byte 0x4E45, 0x542E, 0x434E, 0x4600, 0x4445, 0x562E, 0x4254, 0x4D00
	.2byte 0x4445, 0x562E, 0x5649, 0x4D00, 0x4445, 0x562E, 0x4354, 0x4300
	.2byte 0x4445, 0x562E, 0x4453, 0x4D00, 0x4254, 0x2E44, 0x494E, 0x4600
	.2byte 0x4254, 0x2E53, 0x454E, 0x5300, 0x4254, 0x2E53, 0x504B, 0x5600
	.2byte 0x4254, 0x2E4D, 0x4F54, 0x0000, 0x4254, 0x2E42, 0x4152, 0x0000
	.2byte 0x4456, 0x442E, 0x434E, 0x4600, 0x5757, 0x572E, 0x5253, 0x5400
.global lbl_8063DE70
lbl_8063DE70:
	.ascii "SCv0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DE78
lbl_8063DE78:
	.ascii "SCed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DE80
lbl_8063DE80:
	.ascii "AREA"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DE88
lbl_8063DE88:
	.ascii "CODE"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DE90
lbl_8063DE90:
	.ascii "SERNO"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DE98
lbl_8063DE98:
	.ascii "%u"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
