	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

# Continuation of data_80446528.s after NWC24SecretFList.c's path string (0x80446548).
	.balign 8

.global lbl_80446548
lbl_80446548:
	.ascii "/dev/net/kd/time"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044655C
lbl_8044655C:
	.ascii "NWC24iSetRtcCounter"
	.byte 0x00
	.ascii "/shared2/wc24/nwc24dl.bin"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
