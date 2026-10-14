	.include "macros.inc"

	.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

# Continuation of sdata_8063DAA8.s after OSPlayRecord.c's state (0x8063DAB8).
	.balign 8

.global lbl_8063DAB8
lbl_8063DAB8:
	.8byte 0x80433F2800000000
