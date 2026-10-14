	.include "macros.inc"

	.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

# Continuation of sdata_8063DA80.s after OSFatal.c's small data (0x8063DA98).
	.balign 8

.global lbl_8063DA98
lbl_8063DA98:
	.ascii "\xff\xff"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
