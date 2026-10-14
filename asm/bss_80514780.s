	.section .bss, "wa"  # 0x80474F00 - 0x80643050

# Continuation of bss_80503D40.s after OSFatal.c's statics (0x80514780).
	.balign 32

.global lbl_80514780
lbl_80514780:
	.skip 0x58
