	.section .bss, "wa"  # 0x80474F00 - 0x80643050

# Continuation of bss_2.s after OSError.c's __OSErrorTable (0x80503D40).
	.balign 32

.global lbl_80503D40
lbl_80503D40:
	.skip 0xC2C4
.global lbl_80510004
lbl_80510004:
	.skip 0x449C
.global lbl_805144A0
lbl_805144A0:
	.skip 0x2C8
.global lbl_80514768
lbl_80514768:
	.skip 0x18
