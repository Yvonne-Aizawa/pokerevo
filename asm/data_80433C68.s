	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

# Continuation of .data after OSUtf.c's tables (0x80433C68).
	.balign 4

.global lbl_80433C68
lbl_80433C68:
	.ascii "/dev/stm/immediate"
	.byte 0x00
	.byte 0x00
.global lbl_80433C7C
lbl_80433C7C:
	.ascii "/dev/stm/eventhook"
	.byte 0x00
	.byte 0x00
.global lbl_80433C90
lbl_80433C90:
	.ascii "OSStateTM.c"
	.byte 0x00
.global lbl_80433C9C
lbl_80433C9C:
	.ascii "Error: The firmware doesn't support shutdown feature.\n"
	.byte 0x00
	.byte 0x00
.global lbl_80433CD4
lbl_80433CD4:
	.ascii "Error: The firmware doesn't support reboot feature.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80433D0C
lbl_80433D0C:
	.ascii "Error on STM state event handler\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80433D30
lbl_80433D30:
	.ascii "/title/00000001/00000002/data/play_rec.dat"
	.byte 0x00
	.byte 0x00
.global lbl_80433D5C
lbl_80433D5C:
	.4byte 0x80273888, 0x80273894, 0x80273910, 0x80273954
	.4byte 0x8027397C, 0x80273988, 0x80273A10
