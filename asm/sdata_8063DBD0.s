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
.global lbl_8063DEA0
lbl_8063DEA0:
	.ascii "arc.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DEA8
lbl_8063DEA8:
	.8byte 0x80445AA800000000
.global lbl_8063DEB0
lbl_8063DEB0:
	.4byte 0x80445C40
.global lbl_8063DEB4
lbl_8063DEB4:
	.4byte 0xFFFFFFFF
.global lbl_8063DEB8
lbl_8063DEB8:
	.8byte 0x0000000100000000
.global lbl_8063DEC0
lbl_8063DEC0:
	.8byte 0x80445DC000000000
.global lbl_8063DEC8
lbl_8063DEC8:
	.4byte 0x80445E00
.global lbl_8063DECC
lbl_8063DECC:
	.2byte 0x0000, 0x0001
.global lbl_8063DED0
lbl_8063DED0:
	.ascii "halt\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DED8
lbl_8063DED8:
	.ascii "http://"
	.byte 0x00
.global lbl_8063DEE0
lbl_8063DEE0:
	.ascii ":"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DEE4
lbl_8063DEE4:
	.ascii "Host: "
	.byte 0x00
	.byte 0x00
.global lbl_8063DEEC
lbl_8063DEEC:
	.ascii "\r\n"
	.byte 0x00
	.byte 0x00
.global lbl_8063DEF0
lbl_8063DEF0:
	.ascii "HTTP/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DEF8
lbl_8063DEF8:
	.ascii ": "
	.byte 0x00
	.byte 0x00
.global lbl_8063DEFC
lbl_8063DEFC:
	.ascii "\"\r\n"
	.byte 0x00
.global lbl_8063DF00
lbl_8063DF00:
	.ascii "--\r\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF08
lbl_8063DF08:
	.ascii "="
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF0C
lbl_8063DF0C:
	.ascii "&"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF10
lbl_8063DF10:
	.ascii "GET "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF18
lbl_8063DF18:
	.ascii "POST "
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF20
lbl_8063DF20:
	.ascii "HEAD "
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF28
lbl_8063DF28:
	.ascii "/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF30
lbl_8063DF30:
	.ascii "chunked"
	.byte 0x00
.global lbl_8063DF38
lbl_8063DF38:
	.ascii ":"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF40
lbl_8063DF40:
	.ascii "w"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF44
lbl_8063DF44:
	.ascii "r"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF48
lbl_8063DF48:
	.ascii "@24"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF50
lbl_8063DF50:
	.4byte 0x80446308
.global lbl_8063DF54
lbl_8063DF54:
	.4byte 0x8044631C
.global lbl_8063DF58
lbl_8063DF58:
	.8byte 0x8044633800000000
.global lbl_8063DF60
lbl_8063DF60:
	.8byte 0x8044637000000000
.global lbl_8063DF68
lbl_8063DF68:
	.ascii "%s%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF70
lbl_8063DF70:
	.8byte 0x8044650800000000
.global lbl_8063DF78
lbl_8063DF78:
	.8byte 0x8044652800000000
.global lbl_8063DF80
lbl_8063DF80:
	.8byte 0x8044657000000000
.global lbl_8063DF88
lbl_8063DF88:
	.ascii "\xff\xff\xff\xff"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DF90
lbl_8063DF90:
	.ascii "..\\"
	.byte 0x00
.global lbl_8063DF94
lbl_8063DF94:
	.ascii "../"
	.byte 0x00
.global lbl_8063DF98
lbl_8063DF98:
	.ascii ".."
	.byte 0x00
	.byte 0x00
.global lbl_8063DF9C
lbl_8063DF9C:
	.ascii ".\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063DFA0
lbl_8063DFA0:
	.ascii "."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFA4
lbl_8063DFA4:
	.ascii ":"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFA8
lbl_8063DFA8:
	.ascii "\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFAC
lbl_8063DFAC:
	.ascii "/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFB0
lbl_8063DFB0:
	.skip 0x8
.global lbl_8063DFB8
lbl_8063DFB8:
	.ascii ":"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFBC
lbl_8063DFBC:
	.skip 0x4
.global lbl_8063DFC0
lbl_8063DFC0:
	.ascii "."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFC4
lbl_8063DFC4:
	.ascii ".."
	.byte 0x00
	.byte 0x00
.global lbl_8063DFC8
lbl_8063DFC8:
	.ascii "*."
	.byte 0x00
	.byte 0x00
.global lbl_8063DFCC
lbl_8063DFCC:
	.ascii "\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFD0
lbl_8063DFD0:
	.ascii "/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFD4
lbl_8063DFD4:
	.ascii "*"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFD8
lbl_8063DFD8:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFDC
lbl_8063DFDC:
	.byte 0x01
.global lbl_8063DFDD
lbl_8063DFDD:
	.2byte 0x0200
	.byte 0x00
.global lbl_8063DFE0
lbl_8063DFE0:
	.ascii " "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DFE8
lbl_8063DFE8:
	.8byte 0x8044668800000000
.global lbl_8063DFF0
lbl_8063DFF0:
	.ascii "RVLDWC"
	.byte 0x00
	.byte 0x00
.global lbl_8063DFF8
lbl_8063DFF8:
	.ascii "clear"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E000
lbl_8063E000:
	.ascii "%s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "dwctest"
	.byte 0x00
	.ascii "d4q9GZ"
	.byte 0x00
	.byte 0x00
.global lbl_8063E018
lbl_8063E018:
	.ascii "accept"
	.byte 0x00
	.byte 0x00
.global lbl_8063E020
lbl_8063E020:
	.ascii "reject"
	.byte 0x00
	.byte 0x00
.global lbl_8063E028
lbl_8063E028:
	.ascii "SCM"
	.byte 0x00
.global lbl_8063E02C
lbl_8063E02C:
	.ascii "SCN"
	.byte 0x00
.global lbl_8063E030
lbl_8063E030:
	.skip 0x8
.global lbl_8063E038
lbl_8063E038:
	.skip 0x8
.global lbl_8063E040
lbl_8063E040:
	.ascii "SCM"
	.byte 0x00
.global lbl_8063E044
lbl_8063E044:
	.ascii "SCN"
	.byte 0x00
.global lbl_8063E048
lbl_8063E048:
	.skip 0x4
.global lbl_8063E04C
lbl_8063E04C:
	.ascii "GP_BM"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E054
lbl_8063E054:
	.ascii "ERROR\n"
	.byte 0x00
	.byte 0x00
.global lbl_8063E05C
lbl_8063E05C:
	.ascii "GPCM"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E064
lbl_8063E064:
	.ascii "MAT"
	.byte 0x00
.global lbl_8063E068
lbl_8063E068:
	.ascii "%u"
	.byte 0x00
	.byte 0x00
.global lbl_8063E06C
lbl_8063E06C:
	.ascii "SCM"
	.byte 0x00
.global lbl_8063E070
lbl_8063E070:
	.ascii "SCN"
	.byte 0x00
.global lbl_8063E074
lbl_8063E074:
	.ascii "VER"
	.byte 0x00
.global lbl_8063E078
lbl_8063E078:
	.skip 0x8
.global lbl_8063E080
lbl_8063E080:
	.ascii "dwc_pid"
	.byte 0x00
.global lbl_8063E088
lbl_8063E088:
	.ascii " and ()"
	.byte 0x00
.global lbl_8063E090
lbl_8063E090:
	.ascii "FME"
	.byte 0x00
.global lbl_8063E094
lbl_8063E094:
	.ascii "MDF"
	.byte 0x00
.global lbl_8063E098
lbl_8063E098:
	.ascii "%s = %u"
	.byte 0x00
.global lbl_8063E0A0
lbl_8063E0A0:
	.ascii "Retry\n"
	.byte 0x00
	.byte 0x00
.global lbl_8063E0A8
lbl_8063E0A8:
	.ascii "/%u"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E0B0
lbl_8063E0B0:
	.ascii "%s%dv%s"
	.byte 0x00
.global lbl_8063E0B8
lbl_8063E0B8:
	.ascii "GPCM"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E0C0
lbl_8063E0C0:
	.ascii "MAT"
	.byte 0x00
.global lbl_8063E0C4
lbl_8063E0C4:
	.ascii "SBCM"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E0CC
lbl_8063E0CC:
	.ascii "NONE"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E0D4
lbl_8063E0D4:
	.ascii "%s\n"
	.byte 0x00
.global lbl_8063E0D8
lbl_8063E0D8:
	.ascii "DT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E0E0
lbl_8063E0E0:
	.ascii "%012llu"
	.byte 0x00
.global lbl_8063E0E8
lbl_8063E0E8:
	.4byte lbl_80449D18
.global lbl_8063E0EC
lbl_8063E0EC:
	.ascii "//"
	.byte 0x00
	.byte 0x00
.global lbl_8063E0F0
lbl_8063E0F0:
	.ascii "/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E0F4
lbl_8063E0F4:
	.ascii "Host"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E0FC
lbl_8063E0FC:
	.ascii "action"
	.byte 0x00
	.byte 0x00
.global lbl_8063E104
lbl_8063E104:
	.ascii "login"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E10C
lbl_8063E10C:
	.ascii "gsbrcd"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E118
lbl_8063E118:
	.ascii "%013llu"
	.byte 0x00
.global lbl_8063E120
lbl_8063E120:
	.ascii "userid"
	.byte 0x00
	.byte 0x00
.global lbl_8063E128
lbl_8063E128:
	.ascii "svcloc"
	.byte 0x00
	.byte 0x00
.global lbl_8063E130
lbl_8063E130:
	.ascii "svc"
	.byte 0x00
.global lbl_8063E134
lbl_8063E134:
	.ascii "001000"
	.byte 0x00
	.byte 0x00
.global lbl_8063E13C
lbl_8063E13C:
	.ascii "sdkver"
	.byte 0x00
	.byte 0x00
.global lbl_8063E144
lbl_8063E144:
	.ascii "gamecd"
	.byte 0x00
	.byte 0x00
.global lbl_8063E14C
lbl_8063E14C:
	.ascii "02"
	.byte 0x00
	.byte 0x00
.global lbl_8063E150
lbl_8063E150:
	.ascii "%c%c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E158
lbl_8063E158:
	.ascii "00"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E160
lbl_8063E160:
	.ascii "makercd"
	.byte 0x00
.global lbl_8063E168
lbl_8063E168:
	.ascii "1"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E16C
lbl_8063E16C:
	.ascii "unitcd"
	.byte 0x00
	.byte 0x00
.global lbl_8063E174
lbl_8063E174:
	.ascii "macadr"
	.byte 0x00
	.byte 0x00
.global lbl_8063E17C
lbl_8063E17C:
	.ascii "%02d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E184
lbl_8063E184:
	.ascii "lang"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E190
lbl_8063E190:
	.ascii "devtime"
	.byte 0x00
.global lbl_8063E198
lbl_8063E198:
	.ascii "%s%09d"
	.byte 0x00
	.byte 0x00
.global lbl_8063E1A0
lbl_8063E1A0:
	.ascii "csnum"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E1A8
lbl_8063E1A8:
	.ascii "%016lld"
	.byte 0x00
.global lbl_8063E1B0
lbl_8063E1B0:
	.ascii "cfc"
	.byte 0x00
.global lbl_8063E1B4
lbl_8063E1B4:
	.ascii "region"
	.byte 0x00
	.byte 0x00
.global lbl_8063E1BC
lbl_8063E1BC:
	.ascii "&\r\n"
	.byte 0x00
.global lbl_8063E1C0
lbl_8063E1C0:
	.ascii "retry="
	.byte 0x00
	.byte 0x00
.global lbl_8063E1C8
lbl_8063E1C8:
	.ascii "token="
	.byte 0x00
	.byte 0x00
.global lbl_8063E1D0
lbl_8063E1D0:
	.ascii "userid="
	.byte 0x00
.global lbl_8063E1D8
lbl_8063E1D8:
	.ascii "%llu"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E1E0
lbl_8063E1E0:
	.ascii "%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E1E8
lbl_8063E1E8:
	.ascii "clear"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E1F0
lbl_8063E1F0:
	.8byte 0x0000000100000000
.global lbl_8063E1F8
lbl_8063E1F8:
	.8byte 0xFEFD090000000000
.global lbl_8063E200
lbl_8063E200:
	.skip 0x8
.global lbl_8063E208
lbl_8063E208:
	.ascii "\\final\\"
	.byte 0x00
.global lbl_8063E210
lbl_8063E210:
	.ascii "CM"
	.byte 0x00
	.byte 0x00
.global lbl_8063E214
lbl_8063E214:
	.ascii "\\id\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E21C
lbl_8063E21C:
	.ascii "\\bm\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E224
lbl_8063E224:
	.ascii "\\ka\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E22C
lbl_8063E22C:
	.ascii "\\lt\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E238
lbl_8063E238:
	.ascii "\\final\\"
	.byte 0x00
.global lbl_8063E240
lbl_8063E240:
	.ascii "\\bm\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E248
lbl_8063E248:
	.ascii "\\f\\"
	.byte 0x00
.global lbl_8063E24C
lbl_8063E24C:
	.ascii "\\date\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E254
lbl_8063E254:
	.ascii "\\msg\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E25C
lbl_8063E25C:
	.ascii "|s|"
	.byte 0x00
.global lbl_8063E260
lbl_8063E260:
	.ascii "|ss|"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E268
lbl_8063E268:
	.ascii "|ls|"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E270
lbl_8063E270:
	.ascii "|ip|"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E278
lbl_8063E278:
	.ascii "|p|"
	.byte 0x00
.global lbl_8063E27C
lbl_8063E27C:
	.ascii "|l|"
	.byte 0x00
.global lbl_8063E280
lbl_8063E280:
	.ascii "1"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E284
lbl_8063E284:
	.ascii "\\t\\"
	.byte 0x00
.global lbl_8063E288
lbl_8063E288:
	.ascii "\\final\\"
	.byte 0x00
.global lbl_8063E290
lbl_8063E290:
	.ascii "\\sig\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E298
lbl_8063E298:
	.ascii "%d"
	.byte 0x00
	.byte 0x00
.global lbl_8063E29C
lbl_8063E29C:
	.ascii "PT"
	.byte 0x00
	.byte 0x00
.global lbl_8063E2A0
lbl_8063E2A0:
	.ascii "\\msg\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E2A8
lbl_8063E2A8:
	.ascii "\\m\\"
	.byte 0x00
.global lbl_8063E2AC
lbl_8063E2AC:
	.ascii "\\len\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E2B8
lbl_8063E2B8:
	.ascii "%d@"
	.byte 0x00
.global lbl_8063E2BC
lbl_8063E2BC:
	.skip 0x4
.global lbl_8063E2C0
lbl_8063E2C0:
	.ascii "%s%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E2C8
lbl_8063E2C8:
	.ascii "%s%s@%s"
	.byte 0x00
.global lbl_8063E2D0
lbl_8063E2D0:
	.ascii "\\login\\"
	.byte 0x00
.global lbl_8063E2D8
lbl_8063E2D8:
	.ascii "\\user\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E2E0
lbl_8063E2E0:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E2E4
lbl_8063E2E4:
	.ascii "\\port\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E2EC
lbl_8063E2EC:
	.ascii "\\id\\1"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E2F8
lbl_8063E2F8:
	.ascii "\\final\\"
	.byte 0x00
.global lbl_8063E300
lbl_8063E300:
	.ascii "\\email\\"
	.byte 0x00
.global lbl_8063E308
lbl_8063E308:
	.ascii "\\nick\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E310
lbl_8063E310:
	.ascii "\\pid\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E318
lbl_8063E318:
	.ascii "\\lc\\1"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E320
lbl_8063E320:
	.ascii "\\nur\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E328
lbl_8063E328:
	.ascii "\\lc\\2"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E330
lbl_8063E330:
	.ascii "\\lt\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E338
lbl_8063E338:
	.ascii "\\proof\\"
	.byte 0x00
.global lbl_8063E340
lbl_8063E340:
	.ascii "CM"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E348
lbl_8063E348:
	.ascii "\\pi\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E350
lbl_8063E350:
	.ascii "\\nick\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E358
lbl_8063E358:
	.ascii "\\email\\"
	.byte 0x00
.global lbl_8063E360
lbl_8063E360:
	.ascii "\\lon\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E368
lbl_8063E368:
	.ascii "\\lat\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E370
lbl_8063E370:
	.ascii "\\loc\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E378
lbl_8063E378:
	.ascii "\\sex\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E380
lbl_8063E380:
	.ascii "\\pmask\\"
	.byte 0x00
.global lbl_8063E388
lbl_8063E388:
	.ascii "\\aim\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E390
lbl_8063E390:
	.ascii "\\pic\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E398
lbl_8063E398:
	.ascii "\\occ\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3A0
lbl_8063E3A0:
	.ascii "\\ind\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3A8
lbl_8063E3A8:
	.ascii "\\inc\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3B0
lbl_8063E3B0:
	.ascii "\\mar\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3B8
lbl_8063E3B8:
	.ascii "\\chc\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3C0
lbl_8063E3C0:
	.ascii "\\i1\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3C8
lbl_8063E3C8:
	.ascii "\\o1\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3D0
lbl_8063E3D0:
	.ascii "\\conn\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E3D8
lbl_8063E3D8:
	.ascii "\\sig\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3E0
lbl_8063E3E0:
	.ascii "\\final\\"
	.byte 0x00
.global lbl_8063E3E8
lbl_8063E3E8:
	.ascii "%d"
	.byte 0x00
	.byte 0x00
.global lbl_8063E3EC
lbl_8063E3EC:
	.ascii "0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3F0
lbl_8063E3F0:
	.ascii "1"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3F4
lbl_8063E3F4:
	.ascii "2"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E3F8
lbl_8063E3F8:
	.ascii "\\id\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E400
lbl_8063E400:
	.ascii "\\auth\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E408
lbl_8063E408:
	.ascii "\\pid\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E410
lbl_8063E410:
	.ascii "\\nick\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E418
lbl_8063E418:
	.ascii "\\sig\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E420
lbl_8063E420:
	.ascii "\\final\\"
	.byte 0x00
.global lbl_8063E428
lbl_8063E428:
	.ascii "PR"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E430
lbl_8063E430:
	.ascii "\\anack\\"
	.byte 0x00
.global lbl_8063E438
lbl_8063E438:
	.ascii "\\aack\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E440
lbl_8063E440:
	.ascii "%s%d%d"
	.byte 0x00
	.byte 0x00
.global lbl_8063E448
lbl_8063E448:
	.ascii "1"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E44C
lbl_8063E44C:
	.ascii "\\m\\"
	.byte 0x00
.global lbl_8063E450
lbl_8063E450:
	.ascii "\\len\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E458
lbl_8063E458:
	.ascii "\\msg\\\n"
	.byte 0x00
	.byte 0x00
.global lbl_8063E460
lbl_8063E460:
	.skip 0x8
.global lbl_8063E468
lbl_8063E468:
	.ascii "\\npr\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E470
lbl_8063E470:
	.ascii "\\dpr\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E478
lbl_8063E478:
	.ascii "SM"
	.byte 0x00
	.byte 0x00
.global lbl_8063E47C
lbl_8063E47C:
	.ascii "\\nick\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E488
lbl_8063E488:
	.ascii "\\email\\"
	.byte 0x00
.global lbl_8063E490
lbl_8063E490:
	.ascii "\\skip\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E498
lbl_8063E498:
	.ascii "\\valid\\"
	.byte 0x00
.global lbl_8063E4A0
lbl_8063E4A0:
	.ascii "\\nicks\\"
	.byte 0x00
.global lbl_8063E4A8
lbl_8063E4A8:
	.ascii "\\check\\"
	.byte 0x00
.global lbl_8063E4B0
lbl_8063E4B0:
	.ascii "\\cdkey\\"
	.byte 0x00
.global lbl_8063E4B8
lbl_8063E4B8:
	.ascii "\\final\\"
	.byte 0x00
.global lbl_8063E4C0
lbl_8063E4C0:
	.ascii "bsrdone"
	.byte 0x00
.global lbl_8063E4C8
lbl_8063E4C8:
	.ascii "more"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E4D0
lbl_8063E4D0:
	.ascii "0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E4D4
lbl_8063E4D4:
	.ascii "bsr"
	.byte 0x00
.global lbl_8063E4D8
lbl_8063E4D8:
	.ascii "nick"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E4E0
lbl_8063E4E0:
	.ascii "email"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E4E8
lbl_8063E4E8:
	.ascii "vr"
	.byte 0x00
	.byte 0x00
.global lbl_8063E4EC
lbl_8063E4EC:
	.ascii "nr"
	.byte 0x00
	.byte 0x00
.global lbl_8063E4F0
lbl_8063E4F0:
	.ascii "ndone"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E4F8
lbl_8063E4F8:
	.ascii "psrdone"
	.byte 0x00
.global lbl_8063E500
lbl_8063E500:
	.ascii "psr"
	.byte 0x00
.global lbl_8063E504
lbl_8063E504:
	.ascii "status"
	.byte 0x00
	.byte 0x00
.global lbl_8063E50C
lbl_8063E50C:
	.ascii "cur"
	.byte 0x00
.global lbl_8063E510
lbl_8063E510:
	.ascii "\\pid\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E518
lbl_8063E518:
	.ascii "nur"
	.byte 0x00
.global lbl_8063E51C
lbl_8063E51C:
	.ascii "others"
	.byte 0x00
	.byte 0x00
.global lbl_8063E524
lbl_8063E524:
	.ascii "odone"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E52C
lbl_8063E52C:
	.ascii "o"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E530
lbl_8063E530:
	.ascii "first"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E538
lbl_8063E538:
	.ascii "last"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E540
lbl_8063E540:
	.ascii "us"
	.byte 0x00
	.byte 0x00
.global lbl_8063E544
lbl_8063E544:
	.ascii "usdone"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E550
lbl_8063E550:
	.skip 0x4
.global lbl_8063E554
lbl_8063E554:
	.ascii "\\xfer\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E560
lbl_8063E560:
	.ascii "\\rn\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E568
lbl_8063E568:
	.ascii "\\error\\"
	.byte 0x00
.global lbl_8063E570
lbl_8063E570:
	.ascii "\\err\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E578
lbl_8063E578:
	.ascii "\\fatal\\"
	.byte 0x00
.global lbl_8063E580
lbl_8063E580:
	.2byte 0xFEFE, 0x0000
.global lbl_8063E584
lbl_8063E584:
	.ascii "time"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E590
lbl_8063E590:
	.ascii "%s:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E598
lbl_8063E598:
	.ascii "%s"
	.byte 0x00
	.byte 0x00
.global lbl_8063E59C
lbl_8063E59C:
	.ascii ":%d"
	.byte 0x00
.global lbl_8063E5A0
lbl_8063E5A0:
	.skip 0x8
.global lbl_8063E5A8
lbl_8063E5A8:
	.4byte lbl_8044B608
.global lbl_8063E5AC
lbl_8063E5AC:
	.ascii "%d"
	.byte 0x00
	.byte 0x00
.global lbl_8063E5B0
lbl_8063E5B0:
	.ascii "unknown"
	.byte 0x00
.global lbl_8063E5B8
lbl_8063E5B8:
	.skip 0x4
.global lbl_8063E5BC
lbl_8063E5BC:
	.ascii "%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E5C4
lbl_8063E5C4:
	.ascii "natneg"
	.byte 0x00
	.byte 0x00
.global lbl_8063E5CC
lbl_8063E5CC:
	.ascii "1"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E5D0
lbl_8063E5D0:
	.ascii "0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "gamever"
	.byte 0x00
	.ascii "mapname"
	.byte 0x00
	.ascii "groupid"
	.byte 0x00
	.ascii "player_"
	.byte 0x00
	.ascii "score_"
	.byte 0x00
	.byte 0x00
	.ascii "skill_"
	.byte 0x00
	.byte 0x00
	.ascii "ping_"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "team_"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "deaths_"
	.byte 0x00
	.ascii "pid_"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "team_t"
	.byte 0x00
	.byte 0x00
	.ascii "score_t"
	.byte 0x00
.global lbl_8063E640
lbl_8063E640:
	.ascii ": "
	.byte 0x00
	.byte 0x00
.global lbl_8063E644
lbl_8063E644:
	.ascii "\r\n"
	.byte 0x00
	.byte 0x00
.global lbl_8063E648
lbl_8063E648:
	.ascii "%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E650
lbl_8063E650:
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "}"
.global lbl_8063E654
lbl_8063E654:
	.2byte 0x0000, 0x00FA
.global lbl_8063E658
lbl_8063E658:
	.ascii "A"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E65C
lbl_8063E65C:
	.ascii "BB"
	.byte 0x00
	.byte 0x00
.global lbl_8063E660
lbl_8063E660:
	.ascii "CCC"
	.byte 0x00
.global lbl_8063E664
lbl_8063E664:
	.ascii "DDDD"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E66C
lbl_8063E66C:
	.2byte 0x1700, 0x0000
.global lbl_8063E670
lbl_8063E670:
	.ascii "CLNT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E678
lbl_8063E678:
	.skip 0x8
.global lbl_8063E680
lbl_8063E680:
	.ascii "cid:id0"
	.byte 0x00
.global lbl_8063E688
lbl_8063E688:
	.ascii "%s="
	.byte 0x00
.global lbl_8063E68C
lbl_8063E68C:
	.ascii "&%s="
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E694
lbl_8063E694:
	.ascii "\r\n"
	.byte 0x00
	.byte 0x00
.global lbl_8063E698
lbl_8063E698:
	.ascii "http://"
	.byte 0x00
.global lbl_8063E6A0
lbl_8063E6A0:
	.ascii ":/"
	.byte 0x00
	.byte 0x00
.global lbl_8063E6A4
lbl_8063E6A4:
	.ascii "/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E6A8
lbl_8063E6A8:
	.ascii "POST "
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E6B0
lbl_8063E6B0:
	.ascii "HEAD "
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E6B8
lbl_8063E6B8:
	.ascii "GET "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E6C0
lbl_8063E6C0:
	.ascii "Host"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E6C8
lbl_8063E6C8:
	.ascii "Host: "
	.byte 0x00
	.byte 0x00
.global lbl_8063E6D0
lbl_8063E6D0:
	.ascii "\r\n"
	.byte 0x00
	.byte 0x00
.global lbl_8063E6D4
lbl_8063E6D4:
	.ascii "close"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E6DC
lbl_8063E6DC:
	.ascii "%d"
	.byte 0x00
	.byte 0x00
.global lbl_8063E6E0
lbl_8063E6E0:
	.ascii "%x"
	.byte 0x00
	.byte 0x00
.global lbl_8063E6E4
lbl_8063E6E4:
	.ascii "\n\n"
	.byte 0x00
	.byte 0x00
.global lbl_8063E6E8
lbl_8063E6E8:
	.ascii "\r\n\r\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E6F0
lbl_8063E6F0:
	.4byte 0xFFFFFFFF
.global lbl_8063E6F4
lbl_8063E6F4:
	.4byte lbl_8044C308
.global lbl_8063E6F8
lbl_8063E6F8:
	.ascii "\\"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E6FC
lbl_8063E6FC:
	.skip 0x4
.global lbl_8063E700
lbl_8063E700:
	.ascii "getpdr"
	.byte 0x00
	.byte 0x00
.global lbl_8063E708
lbl_8063E708:
	.ascii "lid"
	.byte 0x00
.global lbl_8063E70C
lbl_8063E70C:
	.ascii "pid"
	.byte 0x00
.global lbl_8063E710
lbl_8063E710:
	.ascii "mod"
	.byte 0x00
.global lbl_8063E714
lbl_8063E714:
	.ascii "length"
	.byte 0x00
	.byte 0x00
.global lbl_8063E71C
lbl_8063E71C:
	.ascii "\\data\\"
	.byte 0x00
	.byte 0x00
.global lbl_8063E724
lbl_8063E724:
	.ascii "pauthr"
	.byte 0x00
	.byte 0x00
.global lbl_8063E72C
lbl_8063E72C:
	.ascii "errmsg"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E738
lbl_8063E738:
	.ascii "getpidr"
	.byte 0x00
.global lbl_8063E740
lbl_8063E740:
	.ascii "setpdr"
	.byte 0x00
	.byte 0x00
.global lbl_8063E748
lbl_8063E748:
	.ascii "%s_t%d"
	.byte 0x00
	.byte 0x00
.global lbl_8063E750
lbl_8063E750:
	.ascii "%s_%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E758
lbl_8063E758:
	.ascii "%s:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E760
lbl_8063E760:
	.ascii "%s"
	.byte 0x00
	.byte 0x00
.global lbl_8063E764
lbl_8063E764:
	.ascii ":%d"
	.byte 0x00
.global lbl_8063E768
lbl_8063E768:
	.8byte 0xFDFC1E666AB20000
.global lbl_8063E770
lbl_8063E770:
	.4byte 0xFFFFFFFF
.global lbl_8063E774
lbl_8063E774:
	.4byte 0xFFFFFFFF
.global lbl_8063E778
lbl_8063E778:
	.2byte 0x0000, 0x0006
.global lbl_8063E77C
lbl_8063E77C:
	.ascii "%s.%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E788
lbl_8063E788:
	.ascii "\\final\\"
	.byte 0x00
.global lbl_8063E790
lbl_8063E790:
	.ascii "%d"
	.byte 0x00
	.byte 0x00
.global lbl_8063E794
lbl_8063E794:
	.ascii "ping"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "queryid"
	.byte 0x00
	.ascii "final"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E7B0
lbl_8063E7B0:
	.skip 0x4
.global lbl_8063E7B4
lbl_8063E7B4:
	.ascii "%s%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E7C0
lbl_8063E7C0:
	.ascii "\\%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E7C8
lbl_8063E7C8:
	.skip 0x4
.global lbl_8063E7CC
lbl_8063E7CC:
	.4byte 0x8044C610
.global lbl_8063E7D0
lbl_8063E7D0:
	.ascii "\xff\xff\xff\xff"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E7D8
lbl_8063E7D8:
	.ascii "\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E7E0
lbl_8063E7E0:
	.ascii "T"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E7E4
lbl_8063E7E4:
	.ascii "G"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E7E8
lbl_8063E7E8:
	.skip 0x8
.global lbl_8063E7F0
lbl_8063E7F0:
	.8byte 0x8044CED800000000
.global lbl_8063E7F8
lbl_8063E7F8:
	.8byte 0x1234567800000000
.global lbl_8063E800
lbl_8063E800:
	.ascii "."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E804
lbl_8063E804:
	.ascii ".."
	.byte 0x00
	.byte 0x00
.global lbl_8063E808
lbl_8063E808:
	.4byte lbl_80472300
.global lbl_8063E80C
lbl_8063E80C:
	.float -9.165870834373199e-39, 936713344.0, 2.749132320535772e+20
.global lbl_8063E818
lbl_8063E818:
	.float -9.174962458809739e-39, 936680384.0, 4.056481920730334e+31
.global lbl_8063E824
lbl_8063E824:
	.float -9.17497927439131e-39, 936694912.0, 7.55143423964082e+28
.global lbl_8063E830
lbl_8063E830:
	.2byte 0x8063, 0xE828, 0x766F, 0x6C5F, 0x3030, 0x0000, 0x766F, 0x6C5F
	.2byte 0x3031, 0x0000, 0x766F, 0x6C5F, 0x3032, 0x0000, 0x766F, 0x6C5F
	.2byte 0x3033, 0x0000, 0x766F, 0x6C5F, 0x3034, 0x0000, 0x766F, 0x6C5F
	.2byte 0x3035, 0x0000, 0x766F, 0x6C5F, 0x3036, 0x0000, 0x766F, 0x6C5F
	.2byte 0x3037, 0x0000, 0x766F, 0x6C5F, 0x3038, 0x0000, 0x766F, 0x6C5F
	.2byte 0x3039, 0x0000, 0x0000, 0x0000, 0x706C, 0x7972, 0x5F30, 0x3000
	.2byte 0x706C, 0x7972, 0x5F30, 0x3100, 0x706C, 0x7972, 0x5F30, 0x3200
	.2byte 0x706C, 0x7972, 0x5F30, 0x3300, 0x425F, 0x4274, 0x6E41, 0x0000
	.2byte 0x425F, 0x4274, 0x6E42, 0x0000
.global lbl_8063E8B8
lbl_8063E8B8:
	.ascii "arc"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063E8C0
lbl_8063E8C0:
	.ascii "back_01"
	.byte 0x00
.global lbl_8063E8C8
lbl_8063E8C8:
	.ascii "back_00"
	.byte 0x00
.global lbl_8063E8D0
lbl_8063E8D0:
	.ascii "back_02"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
