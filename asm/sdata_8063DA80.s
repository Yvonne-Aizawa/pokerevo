	.include "macros.inc"

	.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

# Continuation of sdata_2.s after OSError.c's small data (0x8063DA80).
	.balign 8

.global lbl_8063DA80
lbl_8063DA80:
	.ascii "/dev/es"
	.byte 0x00
.global lbl_8063DA88
lbl_8063DA88:
	.ascii "%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
