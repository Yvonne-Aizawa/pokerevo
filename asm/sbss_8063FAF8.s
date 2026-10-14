	.section .sbss, "wa"  # 0x80474F00 - 0x80643050

# Continuation of sbss_2.s after OSThread.c's statics (0x8063FAF8).
	.balign 8

.global __OSIpcBufferHi
__OSIpcBufferHi:
	.skip 0x8
