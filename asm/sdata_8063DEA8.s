	.include "macros.inc"

	.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

# Continuation of sdata_8063DBD0.s after arc.c's file name (0x8063DEA8).
	.balign 8

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
