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
