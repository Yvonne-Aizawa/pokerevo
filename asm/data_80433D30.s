	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

# Continuation of data_80433C68.s after OSStateTM.c's strings (0x80433D30).
	.balign 4

.global lbl_80433D30
lbl_80433D30:
	.ascii "/title/00000001/00000002/data/play_rec.dat"
	.byte 0x00
	.byte 0x00
.global lbl_80433D5C
lbl_80433D5C:
	.4byte 0x80273888, 0x80273894, 0x80273910, 0x80273954
	.4byte 0x8027397C, 0x80273988, 0x80273A10
