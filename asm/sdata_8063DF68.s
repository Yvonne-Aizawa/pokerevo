	.include "macros.inc"

	.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

# Continuation of sdata_8063DEA8.s after NWC24Manage.c's version pointer (0x8063DF68).
	.balign 8

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
