	.section .bss, "wa"  # 0x80474F00 - 0x80643050

# Continuation of bss_2.s after OSError.c's __OSErrorTable (0x80503D40).
	.balign 32

.global lbl_80503D40
lbl_80503D40:
	.skip 0xC2C4
.global lbl_80510004
lbl_80510004:
	.skip 0x449C
