	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

# Continuation of data_2b.s after OSNandbootInfo.c's path (0x80433F28).
	.balign 8

.global lbl_80433F28
lbl_80433F28:
	.ascii "<< RVL_SDK - EXI \trelease build: Nov 30 2006 03:26:56 (0x4199_60831) >>"
	.byte 0x00
