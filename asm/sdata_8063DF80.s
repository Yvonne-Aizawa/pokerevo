	.include "macros.inc"

	.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

# Continuation of sdata_8063DF78.s after NWC24SecretFList.c's path pointer (0x8063DF80).
	.balign 8

.global lbl_8063DF80
lbl_8063DF80:
	.8byte 0x8044657000000000
