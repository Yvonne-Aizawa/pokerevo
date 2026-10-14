	.section .sbss, "wa"  # 0x80474F00 - 0x80643050

# Continuation of sbss_2.s after OSInterrupt.c's variables (0x8063FAD0).
	.balign 8

.global SaveStart
SaveStart:
	.skip 0x4
.global SaveEnd
SaveEnd:
	.skip 0x4
