	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

# Continuation of data_804269E0.s after OSMemory.c's ShutdownFunctionInfo (0x80427D18).
	.balign 8

.global lbl_80427D18
lbl_80427D18:
	.ascii "OSReset.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80427D24
lbl_80427D24:
	.ascii "OSReturnToMenu(): Falied to boot system menu.\n"
	.byte 0x00
	.byte 0x00
.global lbl_80427D54
lbl_80427D54:
	.ascii "__OSReturnToMenu(): Falied to boot system menu.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80427D88
lbl_80427D88:
	.ascii "OSResetSystem() is obsoleted. It doesn't work any longer.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
