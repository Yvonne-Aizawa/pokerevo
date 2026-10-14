	.section .bss, "wa"  # 0x80474F00 - 0x80643050

# Continuation of bss_805152A0.s after OSPlayRecord.c's statics (0x805154A0).
	.balign 32

.global StateFlags
StateFlags:
	.skip 0x20
.global lbl_805154C0
lbl_805154C0:
	.skip 0xC0
