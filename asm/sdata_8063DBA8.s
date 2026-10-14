	.include "macros.inc"

	.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

# Continuation of sdata_8063DAB8.s after ai.c's __AIVersion (0x8063DBA8).
	.balign 8

.global lbl_8063DBA8
lbl_8063DBA8:
	.8byte 0x804372E000000000
.global lbl_8063DBB0
lbl_8063DBB0:
	.2byte 0x0010
.global lbl_8063DBB2
lbl_8063DBB2:
	.2byte 0x0037
.global lbl_8063DBB4
lbl_8063DBB4:
	.ascii " "
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DBB8
lbl_8063DBB8:
	.4byte 0x80296494
.global lbl_8063DBBC
lbl_8063DBBC:
	.4byte 0x802964A0
