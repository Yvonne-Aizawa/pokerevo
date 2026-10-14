	.include "macros.inc"

	.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

# Continuation of sdata_2.s after OSThread.c's statics (0x8063DAA8).
	.balign 8

.global __OSIpcBufferLo
__OSIpcBufferLo:
	.4byte 0xFFFFFFFF
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
