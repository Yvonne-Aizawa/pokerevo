.include "macros.inc"

.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

	.global lbl_8063D2C0
lbl_8063D2C0:
	.asciz "input"

	.balign 4, 0
	.global lbl_8063D2C8
lbl_8063D2C8:
	.asciz "main"

	.balign 4, 0
	.global lbl_8063D2D0
lbl_8063D2D0:
	.4byte lbl_80405D88

	.balign 8, 0
	.global lbl_8063D2D8
lbl_8063D2D8:
	.2byte 0x4364

	.balign 4, 0
	.global lbl_8063D2DC
lbl_8063D2DC:
	.2byte 0x43CC

	.balign 4, 0
	.global lbl_8063D2E0
lbl_8063D2E0:
	.asciz "main"

	.balign 4, 0
	.global lbl_8063D2E8
lbl_8063D2E8:
	.4byte lbl_80405EE4, lbl_80405EF8

	.balign 4, 0
	.global lbl_8063D2F0
lbl_8063D2F0:
	.4byte lbl_80405F04

	.balign 8, 0
	.global lbl_8063D2F8
lbl_8063D2F8:
	.4byte lbl_80405F44, lbl_80405F54

	.balign 4, 0
	.global lbl_8063D300
lbl_8063D300:
	.4byte lbl_80405F84, lbl_80405F90

	.balign 4, 0
	.global lbl_8063D308
lbl_8063D308:
	.4byte lbl_80405F9C

	.balign 8, 0
	.global lbl_8063D310
lbl_8063D310:
	.4byte lbl_80405FB0

	.balign 8, 0
	.global lbl_8063D318
lbl_8063D318:
	.2byte 0x3F80, 0x0000

	.global lbl_8063D31C
lbl_8063D31C:
	.2byte 0x3F80, 0x0000

	.global lbl_8063D320
lbl_8063D320:
	.2byte 0x3F80, 0x0000

.global lbl_8063D324
lbl_8063D324:
	.2byte 0x3F80, 0x0000
.global lbl_8063D328
lbl_8063D328:
	.8byte 0x0100000000000000
.global lbl_8063D330
lbl_8063D330:
	.ascii "male"
	.byte 0x00
.global lbl_8063D335
lbl_8063D335:
	.ascii "female"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063D340
lbl_8063D340:
	.ascii "TCOD"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063D348
lbl_8063D348:
	.ascii "TCOD"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063D350
lbl_8063D350:
	.ascii "MTBL"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063D358
lbl_8063D358:
	.ascii "%d"
	.byte 0x00
	.byte 0x00
.global lbl_8063D35C
lbl_8063D35C:
	.ascii "%08x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063D364
lbl_8063D364:
	.ascii "%.3f"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063D36C
lbl_8063D36C:
	.ascii "%s"
	.byte 0x00
	.byte 0x00
.global lbl_8063D370
lbl_8063D370:
	.float 1.968911145233676e-16, 0.0, -5.931623531966806e-39, -5.931640347548378e-39
	.float -5.93165716312995e-39, 0.0
.global lbl_8063D388
lbl_8063D388:
	.8byte 0x0000000100000000
.global lbl_8063D390
lbl_8063D390:
	.ascii "script/"
	.byte 0x00
.global lbl_8063D398
lbl_8063D398:
	.ascii "noname"
	.byte 0x00
	.byte 0x00
.global lbl_8063D3A0
lbl_8063D3A0:
	.ascii "tx_"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063D3A8
lbl_8063D3A8:
	.float 4.158400123307431e+21, 4.456584141427369e+30, -5.936841967447951e-39, -5.936875598611095e-39
	.float -5.936954071325097e-39, -5.936987702488241e-39, -5.937066175202243e-39, -5.937105411559244e-39
	.float -5.937178279079389e-39, -5.93721751543639e-39, -5.937290382956535e-39, -5.937324014119679e-39
	.float -5.937402486833681e-39, 0.0, -5.937559432261686e-39, -5.937604273812544e-39
	.float -5.937660325751117e-39, -5.937699562108118e-39, -5.937755614046691e-39, -5.937794850403692e-39
	.float -5.937850902342265e-39, -5.937895743893124e-39, -5.937951795831697e-39, -5.937996637382555e-39
	.float -5.938052689321128e-39, -5.938097530871986e-39, -5.93815358281056e-39, -5.938198424361418e-39
	.float -5.938254476299991e-39, -5.938293712656992e-39, -5.938349764595565e-39, -5.93840021134028e-39
	.float -5.938456263278854e-39, -5.938501104829712e-39, -5.938557156768285e-39, -5.938596393125286e-39
	.float -5.938652445063859e-39, 0.0, -5.938747733359433e-39, -5.938786969716434e-39
.global lbl_8063D448
lbl_8063D448:
	.8byte 0x0000000100000000
.global lbl_8063D450
lbl_8063D450:
	.float 1.8020201119068698e+31, 3.0228464763972034e+29, -5.93904480863387e-39, 0.0
	.float -5.939112070960158e-39, 0.0, -5.939196148868017e-39, 0.0
	.float -5.939246595612733e-39, -5.939280226775877e-39, -5.93931385793902e-39, -5.939347489102164e-39
	.float -5.939386725459165e-39, 0.0
.global lbl_8063D488
lbl_8063D488:
	.4byte lbl_80475338
.global lbl_8063D48C
lbl_8063D48C:
	.byte 0x01
.global lbl_8063D48D
lbl_8063D48D:
	.byte 0x01
.global lbl_8063D48E
lbl_8063D48E:
	.byte 0x01, 0x00
	.4byte 0x8040AED8, 0x8040AEF0, 0x8040AF34, 0x8040AF4C
.global lbl_8063D4A0
lbl_8063D4A0:
	.8byte 0x8047561800000000
.global lbl_8063D4A8
lbl_8063D4A8:
	.byte 0x01
.global lbl_8063D4A9
lbl_8063D4A9:
	.byte 0x01
.global lbl_8063D4AA
lbl_8063D4AA:
	.byte 0x01
.global lbl_8063D4AB
lbl_8063D4AB:
	.byte 0x01
.global lbl_8063D4AC
lbl_8063D4AC:
	.byte 0x01
.global lbl_8063D4AD
lbl_8063D4AD:
	.byte 0x01
.global lbl_8063D4AE
lbl_8063D4AE:
	.2byte 0xFF00
.global lbl_8063D4B0
lbl_8063D4B0:
	.8byte 0x8063EBB800000000
.global lbl_8063D4B8
lbl_8063D4B8:
	.2byte 0x0100, 0x0000
.global lbl_8063D4BC
lbl_8063D4BC:
	.4byte 0xFFFFFFFF
.global lbl_8063D4C0
lbl_8063D4C0:
	.4byte 0xFFFFFFFF
.global lbl_8063D4C4
lbl_8063D4C4:
	.4byte 0xFFFFFFFF
.global lbl_8063D4C8
lbl_8063D4C8:
	.4byte 0xFFFFFFFF
.global lbl_8063D4CC
lbl_8063D4CC:
	.4byte 0xFFFFFFFF
.global lbl_8063D4D0
lbl_8063D4D0:
	.4byte lbl_80479F10
.global lbl_8063D4D4
lbl_8063D4D4:
	.4byte 0xFFFFFFFF
.global lbl_8063D4D8
lbl_8063D4D8:
	.4byte 0xFFFFFFFF, 0xFFFFFFFF
.global lbl_8063D4E0
lbl_8063D4E0:
	.4byte 0xFFFFFFFF
.global lbl_8063D4E4
lbl_8063D4E4:
	.2byte 0x0100, 0x0000
.global lbl_8063D4E8
lbl_8063D4E8:
	.8byte 0x2EEB2EEC2EED2EEE
.global lbl_8063D4F0
lbl_8063D4F0:
	.byte 0x03
.global lbl_8063D4F1
lbl_8063D4F1:
	.2byte 0x0100, 0x0000, 0x0000
	.byte 0x00
.global lbl_8063D4F8
lbl_8063D4F8:
	.4byte 0x8047BDE0
.global lbl_8063D4FC
lbl_8063D4FC:
	.ascii "\xff\r"
	.byte 0x00
	.byte 0x00
.global lbl_8063D500
lbl_8063D500:
	.4byte 0x8047C1F8
.global lbl_8063D504
lbl_8063D504:
	.8byte 0x0102040810204080
.global lbl_8063D50C
lbl_8063D50C:
	.2byte 0x0102, 0x0408, 0x1020, 0x4080, 0x0000, 0x0000
.global lbl_8063D518
lbl_8063D518:
	.2byte 0x0102, 0x0304, 0x0506
.global lbl_8063D51E
lbl_8063D51E:
	.2byte 0x0002
.global lbl_8063D520
lbl_8063D520:
	.2byte 0x0002
.global lbl_8063D522
lbl_8063D522:
	.2byte 0x0002
.global lbl_8063D524
lbl_8063D524:
	.2byte 0x0200, 0x0000
.global lbl_8063D528
lbl_8063D528:
	.ascii "\xff\xff\xff\xff"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063D530
lbl_8063D530:
	.4byte 0x80480550
.global lbl_8063D534
lbl_8063D534:
	.2byte 0x0001, 0x0203, 0x0400, 0x0000, 0x0000, 0x0000
.global lbl_8063D540
lbl_8063D540:
	.float -6.616908927766357e-39, -6.035543826081134e-39, -6.035566246856563e-39, -6.035583062438135e-39
	.float 0.0, 0.0
.global lbl_8063D558
lbl_8063D558:
	.8byte 0x8048106000000000
.global lbl_8063D560
lbl_8063D560:
	.4byte 0x80481060
.global lbl_8063D564
lbl_8063D564:
	.2byte 0x0100, 0x0000
.global lbl_8063D568
lbl_8063D568:
	.4byte 0x80482B60
.global lbl_8063D56C
lbl_8063D56C:
	.ascii "23456"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063D578
lbl_8063D578:
	.4byte 0x80485E00
.global lbl_8063D57C
lbl_8063D57C:
	.2byte 0x0204, 0x0603, 0x0500, 0x0000, 0x0000, 0x0000
.global lbl_8063D588
lbl_8063D588:
	.8byte 0x804872A000000000
.global lbl_8063D590
lbl_8063D590:
	.float -6.653589316368523e-39, 0.0, -6.052925532232619e-39, -6.052953558201906e-39
.global lbl_8063D5A0
lbl_8063D5A0:
	.8byte 0x804875B000000000
.global lbl_8063D5A8
lbl_8063D5A8:
	.ascii "EURO"
.global lbl_8063D5AC
lbl_8063D5AC:
	.2byte 0x0003, 0x0004, 0x0005, 0x0000, 0x0000, 0x0000
.global lbl_8063D5B8
lbl_8063D5B8:
	.2byte 0x0100, 0x0000
.global lbl_8063D5BC
lbl_8063D5BC:
	.2byte 0x0000, 0x00FA
.global lbl_8063D5C0
lbl_8063D5C0:
	.2byte 0x0000, 0x0004
.global lbl_8063D5C4
lbl_8063D5C4:
	.4byte 0x8041F100
.global lbl_8063D5C8
lbl_8063D5C8:
	.4byte 0x8041F110
.global lbl_8063D5CC
lbl_8063D5CC:
	.4byte 0x8041F124
.global lbl_8063D5D0
lbl_8063D5D0:
	.4byte 0x8041F138
.global lbl_8063D5D4
lbl_8063D5D4:
	.4byte 0x8041F14C
.global lbl_8063D5D8
lbl_8063D5D8:
	.8byte 0x8041F16000000000
.global lbl_8063D5E0
lbl_8063D5E0:
	.byte 0x00
	.ascii "P"
	.byte 0x00
	.ascii "B"
	.byte 0x00
	.ascii "R"
	.byte 0x00
	.byte 0x00
.global lbl_8063D5E8
lbl_8063D5E8:
	.2byte 0x0000, 0x0001
.global lbl_8063D5EC
lbl_8063D5EC:
	.2byte 0x0000, 0x0001
.global lbl_8063D5F0
lbl_8063D5F0:
	.8byte 0x0000000400000000
.global lbl_8063D5F8
lbl_8063D5F8:
	.ascii " US"
	.byte 0x00
.global lbl_8063D5FC
lbl_8063D5FC:
	.ascii " EU"
	.byte 0x00
.global lbl_8063D600
lbl_8063D600:
	.ascii "lang="
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063D608
lbl_8063D608:
	.skip 0x8
.global lbl_8063D610
lbl_8063D610:
	.skip 0x8
.global lbl_8063D618
lbl_8063D618:
	.float 1.1368683772161603e-13, 0.0, -6.058211230040052e-39, -6.058244861203196e-39
.global lbl_8063D628
lbl_8063D628:
	.8byte 0x3060308CFF1F0000
.global lbl_8063D630
lbl_8063D630:
	.2byte 0x004D, 0x008B, 0x005C
.global lbl_8063D636
lbl_8063D636:
	.8byte 0x0030006D00BA012A
.global lbl_8063D63E
lbl_8063D63E:
	.2byte 0x004E, 0x0056, 0x0089
.global lbl_8063D644
lbl_8063D644:
	.2byte 0x0105, 0x0103, 0x0203, 0x0701, 0x0501, 0x0506, 0x0105, 0x0205
	.2byte 0x0601, 0x0502, 0x0303, 0x0306, 0x0104, 0x0203, 0x0601, 0x0307
	.2byte 0x0103, 0x0205, 0x0601, 0x0502, 0x0507, 0x0105, 0x0205, 0x0305
	.2byte 0x0601, 0x0502, 0x0502, 0x0506, 0x0105, 0x0205, 0x0701, 0x0502
	.2byte 0x0506, 0x0105, 0x0205, 0x0305, 0x0701, 0x0502, 0x0503, 0x0507
	.2byte 0x0102, 0x0600
.global lbl_8063D698
lbl_8063D698:
	.8byte 0xFFFFFFFE00000000
.global lbl_8063D6A0
lbl_8063D6A0:
	.skip 0x8
.global lbl_8063D6A8
lbl_8063D6A8:
	.8byte 0x0000000100000000
.global lbl_8063D6B0
lbl_8063D6B0:
	.4byte 0x80641750
.global lbl_8063D6B4
lbl_8063D6B4:
	.4byte 0x80641750
.global lbl_8063D6B8
lbl_8063D6B8:
	.2byte 0x7FFF, 0xFFFF
.global lbl_8063D6BC
lbl_8063D6BC:
	.2byte 0x7F80, 0x0000
.global lbl_8063D6C0
lbl_8063D6C0:
	.8byte 0x7FF0000000000000
.global lbl_8063D6C8
lbl_8063D6C8:
	.8byte 0x8000000000000000
