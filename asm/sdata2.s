.include "macros.inc"

.section .sdata2, "wa"  # 0x80640600 - 0x80643020

.global lbl_80640600
lbl_80640600:
	.skip 0x8
.global lbl_80640608
lbl_80640608:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640610
lbl_80640610:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640614
lbl_80640614:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80640618
lbl_80640618:
	.8byte 0x4080000000000000
.global lbl_80640620
lbl_80640620:
	.2byte 0x3F80, 0x0000
.global lbl_80640624
lbl_80640624:
	.skip 0x4
.global lbl_80640628
lbl_80640628:
	.2byte 0x3F80, 0x0000
.global lbl_8064062C
lbl_8064062C:
	.2byte 0x43C8, 0x0000
.global lbl_80640630
lbl_80640630:
	.skip 0x4
.global lbl_80640634
lbl_80640634:
	.2byte 0x43FA, 0x0000
.global lbl_80640638
lbl_80640638:
	.ascii "Cd"
	.byte 0x00
	.byte 0x00
.global lbl_8064063C
lbl_8064063C:
	.2byte 0xC364, 0x0000
.global lbl_80640640
lbl_80640640:
	.2byte 0xC398, 0x0000
.global lbl_80640644
lbl_80640644:
	.2byte 0x4398, 0x0000
.global lbl_80640648
lbl_80640648:
	.byte 0xFF
.global lbl_80640649
lbl_80640649:
	.byte 0xFF
.global lbl_8064064A
lbl_8064064A:
	.2byte 0xFF00
.global lbl_8064064C
lbl_8064064C:
	.2byte 0x3FA6, 0x6666
.global lbl_80640650
lbl_80640650:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640654
lbl_80640654:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80640658
lbl_80640658:
	.2byte 0x437F, 0xE666
.global lbl_8064065C
lbl_8064065C:
	.ascii "Cz"
	.byte 0x00
	.byte 0x00
.global lbl_80640660
lbl_80640660:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640668
lbl_80640668:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640670
lbl_80640670:
	.8byte 0x3F80000000000000
.global lbl_80640678
lbl_80640678:
	.2byte 0x3F80, 0x0000
.global lbl_8064067C
lbl_8064067C:
	.2byte 0x3A83, 0x126F
.global lbl_80640680
lbl_80640680:
	.ascii "?fff"
.global lbl_80640684
lbl_80640684:
	.2byte 0x38D1, 0xB717
.global lbl_80640688
lbl_80640688:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064068C
lbl_8064068C:
	.ascii "Da"
	.byte 0x00
	.byte 0x00
.global lbl_80640690
lbl_80640690:
	.2byte 0x4416, 0x0000
.global lbl_80640694
lbl_80640694:
	.2byte 0x3DCC, 0xCCCD
.global lbl_80640698
lbl_80640698:
	.2byte 0x3F80, 0x0000
.global lbl_8064069C
lbl_8064069C:
	.2byte 0x3E4C, 0xCCCD
.global lbl_806406A0
lbl_806406A0:
	.8byte 0x42C8000000000000
.global lbl_806406A8
lbl_806406A8:
	.8byte 0x4330000080000000
.global lbl_806406B0
lbl_806406B0:
	.skip 0x8
.global lbl_806406B8
lbl_806406B8:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806406C0
lbl_806406C0:
	.2byte 0x3F80, 0x20C5
.global lbl_806406C4
lbl_806406C4:
	.2byte 0x3F4C, 0xCCCD
.global lbl_806406C8
lbl_806406C8:
	.2byte 0x3ECC, 0xCCCD
.global lbl_806406CC
lbl_806406CC:
	.2byte 0x3D4C, 0xCCCD
.global lbl_806406D0
lbl_806406D0:
	.2byte 0x3E80, 0x0000
.global lbl_806406D4
lbl_806406D4:
	.2byte 0x3E99, 0x999A
.global lbl_806406D8
lbl_806406D8:
	.2byte 0x3C23, 0xD70A
.global lbl_806406DC
lbl_806406DC:
	.2byte 0x3E19, 0x999A
.global lbl_806406E0
lbl_806406E0:
	.8byte 0x3CA3D70A00000000
.global lbl_806406E8
lbl_806406E8:
	.skip 0x4
.global lbl_806406EC
lbl_806406EC:
	.2byte 0x3F80, 0x0000
.global lbl_806406F0
lbl_806406F0:
	.8byte 0x3C8EFA3500000000
.global lbl_806406F8
lbl_806406F8:
	.8byte 0x4330000080000000
.global lbl_80640700
lbl_80640700:
	.2byte 0x3C8E, 0xFA35
.global lbl_80640704
lbl_80640704:
	.2byte 0x4265, 0x2EE1
.global lbl_80640708
lbl_80640708:
	.skip 0x4
.global lbl_8064070C
lbl_8064070C:
	.2byte 0x3F80, 0x0000
.global lbl_80640710
lbl_80640710:
	.8byte 0x4330000080000000
.global lbl_80640718
lbl_80640718:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640720
lbl_80640720:
	.skip 0x8
.global lbl_80640728
lbl_80640728:
	.8byte 0x3C8EFA3500000000
.global lbl_80640730
lbl_80640730:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640738
lbl_80640738:
	.2byte 0x3C8E, 0xFA35
.global lbl_8064073C
lbl_8064073C:
	.2byte 0x4265, 0x2EE1
.global lbl_80640740
lbl_80640740:
	.skip 0x8
.global lbl_80640748
lbl_80640748:
	.skip 0x4
.global lbl_8064074C
lbl_8064074C:
	.ascii "C4"
	.byte 0x00
	.byte 0x00
.global lbl_80640750
lbl_80640750:
	.skip 0x4
.global lbl_80640754
lbl_80640754:
	.2byte 0x3C8E, 0xFA35
.global lbl_80640758
lbl_80640758:
	.2byte 0x3F80, 0x0000
.global lbl_8064075C
lbl_8064075C:
	.2byte 0x3FB3, 0x3333
.global lbl_80640760
lbl_80640760:
	.8byte 0x41F0000000000000
.global lbl_80640768
lbl_80640768:
	.8byte 0x4330000080000000
.global lbl_80640770
lbl_80640770:
	.8byte 0x4330000080000000
.global lbl_80640778
lbl_80640778:
	.8byte 0x4330000080000000
.global lbl_80640780
lbl_80640780:
	.8byte 0x4330000080000000
.global lbl_80640788
lbl_80640788:
	.2byte 0x3C8E, 0xFA35
.global lbl_8064078C
lbl_8064078C:
	.2byte 0x3727, 0xC5AC
.global lbl_80640790
lbl_80640790:
	.2byte 0xB727, 0xC5AC
.global lbl_80640794
lbl_80640794:
	.skip 0x4
.global lbl_80640798
lbl_80640798:
	.8byte 0x3F80000000000000
.global lbl_806407A0
lbl_806407A0:
	.8byte 0x4330000080000000
.global lbl_806407A8
lbl_806407A8:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806407B0
lbl_806407B0:
	.8byte 0x4330000080000000
.global lbl_806407B8
lbl_806407B8:
	.8byte 0x3C8EFA3500000000
.global lbl_806407C0
lbl_806407C0:
	.8byte 0x4330000080000000
.global lbl_806407C8
lbl_806407C8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806407CC
lbl_806407CC:
	.2byte 0x40A0, 0x0000
.global lbl_806407D0
lbl_806407D0:
	.2byte 0x41A0, 0x0000
.global lbl_806407D4
lbl_806407D4:
	.2byte 0x420C, 0x0000
.global lbl_806407D8
lbl_806407D8:
	.2byte 0x3FA3, 0xD70A
.global lbl_806407DC
lbl_806407DC:
	.2byte 0x3DCC, 0xCCCD
.global lbl_806407E0
lbl_806407E0:
	.2byte 0x47C3, 0x5000
.global lbl_806407E4
lbl_806407E4:
	.skip 0x4
.global lbl_806407E8
lbl_806407E8:
	.2byte 0x3F80, 0x0000
.global lbl_806407EC
lbl_806407EC:
	.2byte 0xBF80, 0x0000
.global lbl_806407F0
lbl_806407F0:
	.ascii "?@"
	.byte 0x00
	.byte 0x00
.global lbl_806407F4
lbl_806407F4:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806407F8
lbl_806407F8:
	.ascii "?fff"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640800
lbl_80640800:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640808
lbl_80640808:
	.2byte 0x4080, 0x0000
.global lbl_8064080C
lbl_8064080C:
	.2byte 0x3727, 0xC5AC
.global lbl_80640810
lbl_80640810:
	.8byte 0xB727C5AC00000000
.global lbl_80640818
lbl_80640818:
	.skip 0x8
.global lbl_80640820
lbl_80640820:
	.skip 0x4
.global lbl_80640824
lbl_80640824:
	.2byte 0x7E96, 0x7699
.global lbl_80640828
lbl_80640828:
	.2byte 0xFE96, 0x7699
.global lbl_8064082C
lbl_8064082C:
	.2byte 0x4780, 0x0000
.global lbl_80640830
lbl_80640830:
	.2byte 0x3F80, 0x0000
.global lbl_80640834
lbl_80640834:
	.ascii "C"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640838
lbl_80640838:
	.2byte 0x437F, 0x0000
.global lbl_8064083C
lbl_8064083C:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640840
lbl_80640840:
	.2byte 0x3C23, 0xD70A
.global lbl_80640844
lbl_80640844:
	.2byte 0xBF80, 0x0000
.global lbl_80640848
lbl_80640848:
	.2byte 0x4049, 0x0FDB
.global lbl_8064084C
lbl_8064084C:
	.2byte 0xC120, 0x0000
.global lbl_80640850
lbl_80640850:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640858
lbl_80640858:
	.float -3000.0
.global lbl_8064085C
lbl_8064085C:
	.2byte 0x41A0, 0x0000
.global lbl_80640860
lbl_80640860:
	.2byte 0x3E80, 0x0000
.global lbl_80640864
lbl_80640864:
	.2byte 0x3E4C, 0xCCCD
.global lbl_80640868
lbl_80640868:
	.8byte 0x4330000080000000
.global lbl_80640870
lbl_80640870:
	.2byte 0x3727, 0xC5AC
.global lbl_80640874
lbl_80640874:
	.2byte 0xB727, 0xC5AC
.global lbl_80640878
lbl_80640878:
	.2byte 0x40C9, 0x0FDB
.global lbl_8064087C
lbl_8064087C:
	.2byte 0x3FC9, 0x0FDB
.global lbl_80640880
lbl_80640880:
	.2byte 0x4096, 0xCBE4
.global lbl_80640884
lbl_80640884:
	.2byte 0x3F06, 0x0A92
.global lbl_80640888
lbl_80640888:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064088C
lbl_8064088C:
	.ascii "?@"
	.byte 0x00
	.byte 0x00
.global lbl_80640890
lbl_80640890:
	.2byte 0x3FAA, 0xA993
.global lbl_80640894
lbl_80640894:
	.ascii "@P"
	.byte 0x00
	.byte 0x00
.global lbl_80640898
lbl_80640898:
	.2byte 0x3DCC, 0xCCCD
.global lbl_8064089C
lbl_8064089C:
	.2byte 0x3EFF, 0xFEB0
.global lbl_806408A0
lbl_806408A0:
	.2byte 0xBEFF, 0xFEB0
.global lbl_806408A4
lbl_806408A4:
	.2byte 0xBFC9, 0x0FDB
.global lbl_806408A8
lbl_806408A8:
	.2byte 0x4080, 0x0000
.global lbl_806408AC
lbl_806408AC:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_806408B0
lbl_806408B0:
	.skip 0x4
.global lbl_806408B4
lbl_806408B4:
	.2byte 0x3E80, 0x0000
.global lbl_806408B8
lbl_806408B8:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806408BC
lbl_806408BC:
	.2byte 0x3F80, 0x0000
.global lbl_806408C0
lbl_806408C0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806408C8
lbl_806408C8:
	.2byte 0x420C, 0x0000
.global lbl_806408CC
lbl_806408CC:
	.2byte 0x40A0, 0x0000
.global lbl_806408D0
lbl_806408D0:
	.2byte 0x41A0, 0x0000
.global lbl_806408D4
lbl_806408D4:
	.ascii "?fff"
.global lbl_806408D8
lbl_806408D8:
	.2byte 0xBF66, 0x6666
.global lbl_806408DC
lbl_806408DC:
	.2byte 0x3FC9, 0x0FDB
.global lbl_806408E0
lbl_806408E0:
	.2byte 0xBF80, 0x0000
.global lbl_806408E4
lbl_806408E4:
	.2byte 0x4096, 0xCBE4
.global lbl_806408E8
lbl_806408E8:
	.2byte 0x3F7F, 0xFF58
.global lbl_806408EC
lbl_806408EC:
	.2byte 0x40C9, 0x0FDB
.global lbl_806408F0
lbl_806408F0:
	.2byte 0x3FA0, 0xD97C
.global lbl_806408F4
lbl_806408F4:
	.2byte 0x40A0, 0xD97C
.global lbl_806408F8
lbl_806408F8:
	.2byte 0x3FF1, 0x463B
.global lbl_806408FC
lbl_806408FC:
	.2byte 0x408C, 0xBE4C
.global lbl_80640900
lbl_80640900:
	.8byte 0x40C0000000000000
.global lbl_80640908
lbl_80640908:
	.8byte 0x3FD38C3540000000
.global lbl_80640910
lbl_80640910:
	.ascii "?333"
.global lbl_80640914
lbl_80640914:
	.ascii "A@"
	.byte 0x00
	.byte 0x00
.global lbl_80640918
lbl_80640918:
	.8byte 0x3EE6666600000000
.global lbl_80640920
lbl_80640920:
	.8byte 0x3FC38C3540000000
.global lbl_80640928
lbl_80640928:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_8064092C
lbl_8064092C:
	.ascii "Cz"
	.byte 0x00
	.byte 0x00
.global lbl_80640930
lbl_80640930:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640938
lbl_80640938:
	.ascii "@o@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640940
lbl_80640940:
	.ascii "C "
	.byte 0x00
	.byte 0x00
.global lbl_80640944
lbl_80640944:
	.2byte 0xBE32, 0xB8C2
.global lbl_80640948
lbl_80640948:
	.8byte 0x4330000080000000
.global lbl_80640950
lbl_80640950:
	.2byte 0x3727, 0xC5AC
.global lbl_80640954
lbl_80640954:
	.2byte 0x3FE6, 0x6666
.global lbl_80640958
lbl_80640958:
	.2byte 0x3C23, 0xD70A
.global lbl_8064095C
lbl_8064095C:
	.2byte 0x3C8E, 0xFA35
.global lbl_80640960
lbl_80640960:
	.2byte 0xBDD6, 0x7750
.global lbl_80640964
lbl_80640964:
	.2byte 0x3EB2, 0xB8C2
.global lbl_80640968
lbl_80640968:
	.2byte 0x3F5F, 0x66F3
.global lbl_8064096C
lbl_8064096C:
	.2byte 0xB727, 0xC5AC
.global lbl_80640970
lbl_80640970:
	.8byte 0xC248000000000000
.global lbl_80640978
lbl_80640978:
	.skip 0x8
.global lbl_80640980
lbl_80640980:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640988
lbl_80640988:
	.skip 0x4
.global lbl_8064098C
lbl_8064098C:
	.2byte 0x3F80, 0x0000
.global lbl_80640990
lbl_80640990:
	.ascii "?`"
	.byte 0x00
	.byte 0x00
.global lbl_80640994
lbl_80640994:
	.2byte 0x3FB3, 0x3333
.global lbl_80640998
lbl_80640998:
	.2byte 0x3FE6, 0x6666
.global lbl_8064099C
lbl_8064099C:
	.2byte 0x4019, 0x999A
.global lbl_806409A0
lbl_806409A0:
	.2byte 0x428C, 0x0000
.global lbl_806409A4
lbl_806409A4:
	.ascii "B "
	.byte 0x00
	.byte 0x00
.global lbl_806409A8
lbl_806409A8:
	.2byte 0x4049, 0x0FDB
.global lbl_806409AC
lbl_806409AC:
	.2byte 0x41F0, 0x0000
.global lbl_806409B0
lbl_806409B0:
	.2byte 0xC170, 0x0000
.global lbl_806409B4
lbl_806409B4:
	.2byte 0x3727, 0xC5AC
.global lbl_806409B8
lbl_806409B8:
	.8byte 0xB727C5AC00000000
.global lbl_806409C0
lbl_806409C0:
	.skip 0x4
.global lbl_806409C4
lbl_806409C4:
	.2byte 0x4CBE, 0xBC20
.global lbl_806409C8
lbl_806409C8:
	.2byte 0x5368, 0xD4A5
.global lbl_806409CC
lbl_806409CC:
	.2byte 0x3ECC, 0xCCCD
.global lbl_806409D0
lbl_806409D0:
	.skip 0x4
.global lbl_806409D4
lbl_806409D4:
	.2byte 0x4EDE, 0x7920
.global lbl_806409D8
lbl_806409D8:
	.2byte 0x3727, 0xC5AC
.global lbl_806409DC
lbl_806409DC:
	.2byte 0xB727, 0xC5AC
.global lbl_806409E0
lbl_806409E0:
	.8byte 0x3F80000000000000
.global lbl_806409E8
lbl_806409E8:
	.8byte 0x4330000080000000
.global lbl_806409F0
lbl_806409F0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806409F8
lbl_806409F8:
	.skip 0x4
.global lbl_806409FC
lbl_806409FC:
	.2byte 0x437F, 0x0000
.global lbl_80640A00
lbl_80640A00:
	.2byte 0x3F80, 0x0000
.global lbl_80640A04
lbl_80640A04:
	.2byte 0x4049, 0x0FDB
.global lbl_80640A08
lbl_80640A08:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640A0C
lbl_80640A0C:
	.2byte 0x4780, 0x0000
.global lbl_80640A10
lbl_80640A10:
	.2byte 0x40C9, 0x0FDB
.global lbl_80640A14
lbl_80640A14:
	.2byte 0x33D6, 0xBF95
.global lbl_80640A18
lbl_80640A18:
	.2byte 0xB3D6, 0xBF95
.global lbl_80640A1C
lbl_80640A1C:
	.ascii "?fff"
.global lbl_80640A20
lbl_80640A20:
	.2byte 0x3727, 0xC5AC
.global lbl_80640A24
lbl_80640A24:
	.2byte 0x3A83, 0x126F
.global lbl_80640A28
lbl_80640A28:
	.2byte 0x3DCC, 0xCCCD
.global lbl_80640A2C
lbl_80640A2C:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80640A30
lbl_80640A30:
	.skip 0x4
.global lbl_80640A34
lbl_80640A34:
	.2byte 0x3727, 0xC5AC
.global lbl_80640A38
lbl_80640A38:
	.2byte 0xB727, 0xC5AC
.global lbl_80640A3C
lbl_80640A3C:
	.2byte 0x3C23, 0xD70A
.global lbl_80640A40
lbl_80640A40:
	.8byte 0x3F80000000000000
.global lbl_80640A48
lbl_80640A48:
	.skip 0x8
.global lbl_80640A50
lbl_80640A50:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640A58
lbl_80640A58:
	.skip 0x4
.global lbl_80640A5C
lbl_80640A5C:
	.2byte 0x3F80, 0x0000
.global lbl_80640A60
lbl_80640A60:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640A68
lbl_80640A68:
	.skip 0x4
.global lbl_80640A6C
lbl_80640A6C:
	.2byte 0x41A0, 0x0000
.global lbl_80640A70
lbl_80640A70:
	.2byte 0x437F, 0x0000
.global lbl_80640A74
lbl_80640A74:
	.2byte 0x3FC9, 0x0FDB
.global lbl_80640A78
lbl_80640A78:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640A80
lbl_80640A80:
	.2byte 0x3727, 0xC5AC
.global lbl_80640A84
lbl_80640A84:
	.2byte 0xB727, 0xC5AC
.global lbl_80640A88
lbl_80640A88:
	.skip 0x4
.global lbl_80640A8C
lbl_80640A8C:
	.2byte 0x3F80, 0x0000
.global lbl_80640A90
lbl_80640A90:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640A94
lbl_80640A94:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640A98
lbl_80640A98:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640AA0
lbl_80640AA0:
	.8byte 0x4330000080000000
.global lbl_80640AA8
lbl_80640AA8:
	.2byte 0x3FC9, 0x0FDB
.global lbl_80640AAC
lbl_80640AAC:
	.2byte 0x3C23, 0xD70A
.global lbl_80640AB0
lbl_80640AB0:
	.skip 0x4
.global lbl_80640AB4
lbl_80640AB4:
	.2byte 0x3DCC, 0xCCCD
.global lbl_80640AB8
lbl_80640AB8:
	.2byte 0x437F, 0x0000
.global lbl_80640ABC
lbl_80640ABC:
	.2byte 0x40E0, 0x0000
.global lbl_80640AC0
lbl_80640AC0:
	.8byte 0x4330000080000000
.global lbl_80640AC8
lbl_80640AC8:
	.ascii "A@"
	.byte 0x00
	.byte 0x00
.global lbl_80640ACC
lbl_80640ACC:
	.2byte 0x3F80, 0x0000
.global lbl_80640AD0
lbl_80640AD0:
	.2byte 0x43A0, 0x0000
.global lbl_80640AD4
lbl_80640AD4:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80640AD8
lbl_80640AD8:
	.ascii "D "
	.byte 0x00
	.byte 0x00
.global lbl_80640ADC
lbl_80640ADC:
	.ascii "Cp"
	.byte 0x00
	.byte 0x00
.global lbl_80640AE0
lbl_80640AE0:
	.8byte 0x43F0000000000000
.global lbl_80640AE8
lbl_80640AE8:
	.skip 0x4
.global lbl_80640AEC
lbl_80640AEC:
	.2byte 0x3F80, 0x0000
.global lbl_80640AF0
lbl_80640AF0:
	.8byte 0x4003333333333333
.global lbl_80640AF8
lbl_80640AF8:
	.8byte 0x404C800000000000
.global lbl_80640B00
lbl_80640B00:
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640B04
lbl_80640B04:
	.2byte 0x4418, 0x0000
.global lbl_80640B08
lbl_80640B08:
	.2byte 0x43E0, 0x0000
.global lbl_80640B0C
lbl_80640B0C:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640B10
lbl_80640B10:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640B18
lbl_80640B18:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640B20
lbl_80640B20:
	.ascii "D "
	.byte 0x00
	.byte 0x00
.global lbl_80640B24
lbl_80640B24:
	.2byte 0x43F0, 0x0000
.global lbl_80640B28
lbl_80640B28:
	.8byte 0x47C3500000000000
.global lbl_80640B30
lbl_80640B30:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640B38
lbl_80640B38:
	.2byte 0x437F, 0x0000
.global lbl_80640B3C
lbl_80640B3C:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_80640B40
lbl_80640B40:
	.2byte 0x42F0, 0x0000
.global lbl_80640B44
lbl_80640B44:
	.2byte 0x41F0, 0x0000
.global lbl_80640B48
lbl_80640B48:
	.2byte 0x3727, 0xC5AC
.global lbl_80640B4C
lbl_80640B4C:
	.2byte 0xB727, 0xC5AC
.global lbl_80640B50
lbl_80640B50:
	.2byte 0x3E99, 0x999A
.global lbl_80640B54
lbl_80640B54:
	.2byte 0x3F4C, 0xCCCD
.global lbl_80640B58
lbl_80640B58:
	.8byte 0x3F19999A00000000
.global lbl_80640B60
lbl_80640B60:
	.skip 0x4
.global lbl_80640B64
lbl_80640B64:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
.global lbl_80640B68
lbl_80640B68:
	.2byte 0x3F80, 0x0000
.global lbl_80640B6C
lbl_80640B6C:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640B70
lbl_80640B70:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80640B74
lbl_80640B74:
	.2byte 0x41E0, 0x0000
.global lbl_80640B78
lbl_80640B78:
	.ascii "B`"
	.byte 0x00
	.byte 0x00
.global lbl_80640B7C
lbl_80640B7C:
	.2byte 0x3F19, 0x999A
.global lbl_80640B80
lbl_80640B80:
	.2byte 0x3F59, 0x999A
.global lbl_80640B84
lbl_80640B84:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80640B88
lbl_80640B88:
	.ascii "D "
	.byte 0x00
	.byte 0x00
.global lbl_80640B8C
lbl_80640B8C:
	.2byte 0x43F0, 0x0000
.global lbl_80640B90
lbl_80640B90:
	.8byte 0x47C3500000000000
.global lbl_80640B98
lbl_80640B98:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640BA0
lbl_80640BA0:
	.2byte 0xC2D5, 0x0000
.global lbl_80640BA4
lbl_80640BA4:
	.2byte 0x443A, 0xA000
.global lbl_80640BA8
lbl_80640BA8:
	.8byte 0x4330000080000000
.global lbl_80640BB0
lbl_80640BB0:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640BB4
lbl_80640BB4:
	.2byte 0x437F, 0x0000
.global lbl_80640BB8
lbl_80640BB8:
	.2byte 0x41A0, 0x0000
.global lbl_80640BBC
lbl_80640BBC:
	.2byte 0x4080, 0x0000
.global lbl_80640BC0
lbl_80640BC0:
	.skip 0x4
.global lbl_80640BC4
lbl_80640BC4:
	.2byte 0x3F80, 0x0000
.global lbl_80640BC8
lbl_80640BC8:
	.skip 0x4
.global lbl_80640BCC
lbl_80640BCC:
	.2byte 0x3F80, 0x0000
.global lbl_80640BD0
lbl_80640BD0:
	.2byte 0x3E4C, 0xCCCD
.global lbl_80640BD4
lbl_80640BD4:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640BD8
lbl_80640BD8:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640BE0
lbl_80640BE0:
	.skip 0x4
.global lbl_80640BE4
lbl_80640BE4:
	.2byte 0x3F80, 0x0000
.global lbl_80640BE8
lbl_80640BE8:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640BF0
lbl_80640BF0:
	.8byte 0x3F19999A00000000
.global lbl_80640BF8
lbl_80640BF8:
	.skip 0x8
.global lbl_80640C00
lbl_80640C00:
	.8byte 0x4014000000000000
.global lbl_80640C08
lbl_80640C08:
	.8byte 0xC290000000000000
.global lbl_80640C10
lbl_80640C10:
	.8byte 0x4008000000000000
.global lbl_80640C18
lbl_80640C18:
	.skip 0x4
.global lbl_80640C1C
lbl_80640C1C:
	.2byte 0xC3CD, 0x0000
.global lbl_80640C20
lbl_80640C20:
	.2byte 0x3F80, 0x0000
.global lbl_80640C24
lbl_80640C24:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_80640C28
lbl_80640C28:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640C2C
lbl_80640C2C:
	.ascii "C7"
	.byte 0x00
	.byte 0x00
.global lbl_80640C30
lbl_80640C30:
	.8byte 0xC29A000000000000
.global lbl_80640C38
lbl_80640C38:
	.8byte 0x4018000000000000
.global lbl_80640C40
lbl_80640C40:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640C48
lbl_80640C48:
	.2byte 0x41C0, 0x0000
.global lbl_80640C4C
lbl_80640C4C:
	.2byte 0x41A0, 0x0000
.global lbl_80640C50
lbl_80640C50:
	.2byte 0xC402, 0x0000
.global lbl_80640C54
lbl_80640C54:
	.2byte 0xC3DB, 0x0000
.global lbl_80640C58
lbl_80640C58:
	.2byte 0xC2FE, 0x0000
.global lbl_80640C5C
lbl_80640C5C:
	.2byte 0xC1F0, 0x0000
.global lbl_80640C60
lbl_80640C60:
	.8byte 0x4316000000000000
.global lbl_80640C68
lbl_80640C68:
	.2byte 0x4302, 0x0000
.global lbl_80640C6C
lbl_80640C6C:
	.2byte 0xC2DC, 0x0000
.global lbl_80640C70
lbl_80640C70:
	.2byte 0xC364, 0x0000
.global lbl_80640C74
lbl_80640C74:
	.skip 0x4
.global lbl_80640C78
lbl_80640C78:
	.8byte 0xC270000000000000
.global lbl_80640C80
lbl_80640C80:
	.2byte 0xC270, 0x0000
.global lbl_80640C84
lbl_80640C84:
	.2byte 0x41C8, 0x0000
.global lbl_80640C88
lbl_80640C88:
	.skip 0x4
.global lbl_80640C8C
lbl_80640C8C:
	.2byte 0xC248, 0x0000
.global lbl_80640C90
lbl_80640C90:
	.ascii "A"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640C94
lbl_80640C94:
	.2byte 0x3F80, 0x0000
.global lbl_80640C98
lbl_80640C98:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640CA0
lbl_80640CA0:
	.ascii "@>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640CA8
lbl_80640CA8:
	.8byte 0x4018000000000000
.global lbl_80640CB0
lbl_80640CB0:
	.2byte 0x41E0, 0x0000
.global lbl_80640CB4
lbl_80640CB4:
	.2byte 0x41A0, 0x0000
.global lbl_80640CB8
lbl_80640CB8:
	.ascii "A0"
	.byte 0x00
	.byte 0x00
.global lbl_80640CBC
lbl_80640CBC:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_80640CC0
lbl_80640CC0:
	.2byte 0x40A0, 0x0000
.global lbl_80640CC4
lbl_80640CC4:
	.2byte 0x4280, 0x0000
.global lbl_80640CC8
lbl_80640CC8:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80640CCC
lbl_80640CCC:
	.2byte 0x4090, 0x0000
.global lbl_80640CD0
lbl_80640CD0:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640CD4
lbl_80640CD4:
	.2byte 0x41F0, 0x0000
.global lbl_80640CD8
lbl_80640CD8:
	.2byte 0x3F80, 0x0000
.global lbl_80640CDC
lbl_80640CDC:
	.skip 0x4
.global lbl_80640CE0
lbl_80640CE0:
	.2byte 0x4396, 0x0000
.global lbl_80640CE4
lbl_80640CE4:
	.ascii "C$"
	.byte 0x00
	.byte 0x00
.global lbl_80640CE8
lbl_80640CE8:
	.ascii "B0"
	.byte 0x00
	.byte 0x00
.global lbl_80640CEC
lbl_80640CEC:
	.2byte 0x43B6, 0x0000
.global lbl_80640CF0
lbl_80640CF0:
	.ascii "Cj"
	.byte 0x00
	.byte 0x00
.global lbl_80640CF4
lbl_80640CF4:
	.2byte 0x4314, 0x0000
.global lbl_80640CF8
lbl_80640CF8:
	.skip 0x4
.global lbl_80640CFC
lbl_80640CFC:
	.2byte 0x3F80, 0x0000
.global lbl_80640D00
lbl_80640D00:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640D04
lbl_80640D04:
	.2byte 0x41F0, 0x0000
.global lbl_80640D08
lbl_80640D08:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80640D0C
lbl_80640D0C:
	.2byte 0xC120, 0x0000
.global lbl_80640D10
lbl_80640D10:
	.ascii "AP"
	.byte 0x00
	.byte 0x00
.global lbl_80640D14
lbl_80640D14:
	.2byte 0x4180, 0x0000
.global lbl_80640D18
lbl_80640D18:
	.ascii "B "
	.byte 0x00
	.byte 0x00
.global lbl_80640D1C
lbl_80640D1C:
	.2byte 0x3FA3, 0xD70A
.global lbl_80640D20
lbl_80640D20:
	.8byte 0x40C0000000000000
.global lbl_80640D28
lbl_80640D28:
	.8byte 0xFFF5DBB588582900
.global lbl_80640D30
lbl_80640D30:
	.2byte 0xC320, 0x0000
.global lbl_80640D34
lbl_80640D34:
	.2byte 0xC2A0, 0x0000
.global lbl_80640D38
lbl_80640D38:
	.2byte 0x41A0, 0x0000
.global lbl_80640D3C
lbl_80640D3C:
	.2byte 0xC1A0, 0x0000
.global lbl_80640D40
lbl_80640D40:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640D44
lbl_80640D44:
	.2byte 0xBF80, 0x0000
.global lbl_80640D48
lbl_80640D48:
	.2byte 0x3F19, 0x999A
.global lbl_80640D4C
lbl_80640D4C:
	.2byte 0xC060, 0x0000
.global lbl_80640D50
lbl_80640D50:
	.2byte 0x3F4C, 0xCCCD
.global lbl_80640D54
lbl_80640D54:
	.ascii "@`"
	.byte 0x00
	.byte 0x00
.global lbl_80640D58
lbl_80640D58:
	.2byte 0xBF4C, 0xCCCD
.global lbl_80640D5C
lbl_80640D5C:
	.2byte 0x42F0, 0x0000
.global lbl_80640D60
lbl_80640D60:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80640D64
lbl_80640D64:
	.2byte 0x439C, 0x0000
.global lbl_80640D68
lbl_80640D68:
	.8byte 0x4330000080000000
.global lbl_80640D70
lbl_80640D70:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640D78
lbl_80640D78:
	.2byte 0x3F80, 0x0000
.global lbl_80640D7C
lbl_80640D7C:
	.skip 0x4
.global lbl_80640D80
lbl_80640D80:
	.8byte 0x4330000080000000
.global lbl_80640D88
lbl_80640D88:
	.skip 0x4
.global lbl_80640D8C
lbl_80640D8C:
	.2byte 0x3F80, 0x0000
.global lbl_80640D90
lbl_80640D90:
	.ascii "A "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640D98
lbl_80640D98:
	.8byte 0x4330000080000000
.global lbl_80640DA0
lbl_80640DA0:
	.2byte 0x4188, 0x0000
.global lbl_80640DA4
lbl_80640DA4:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640DA8
lbl_80640DA8:
	.2byte 0x40A0, 0x0000
.global lbl_80640DAC
lbl_80640DAC:
	.2byte 0x4080, 0x0000
.global lbl_80640DB0
lbl_80640DB0:
	.8byte 0xC2C8000000000000
.global lbl_80640DB8
lbl_80640DB8:
	.2byte 0xC190, 0x0000
.global lbl_80640DBC
lbl_80640DBC:
	.skip 0x4
.global lbl_80640DC0
lbl_80640DC0:
	.2byte 0x3F80, 0x0000
.global lbl_80640DC4
lbl_80640DC4:
	.2byte 0x40B0, 0x0000
.global lbl_80640DC8
lbl_80640DC8:
	.2byte 0x40F0, 0x0000
.global lbl_80640DCC
lbl_80640DCC:
	.8byte 0x01090D0F10000000
.global lbl_80640DD4
lbl_80640DD4:
	.2byte 0xC316, 0x0000
.global lbl_80640DD8
lbl_80640DD8:
	.ascii "CH"
	.byte 0x00
	.byte 0x00
.global lbl_80640DDC
lbl_80640DDC:
	.2byte 0xC2A8, 0x0000
.global lbl_80640DE0
lbl_80640DE0:
	.2byte 0x42C0, 0x0000
.global lbl_80640DE4
lbl_80640DE4:
	.2byte 0xC2BE, 0x0000
.global lbl_80640DE8
lbl_80640DE8:
	.2byte 0xC288, 0x0000
.global lbl_80640DEC
lbl_80640DEC:
	.2byte 0x4310, 0x0000
.global lbl_80640DF0
lbl_80640DF0:
	.2byte 0xC2C8, 0x0000
.global lbl_80640DF4
lbl_80640DF4:
	.2byte 0x4280, 0x0000
.global lbl_80640DF8
lbl_80640DF8:
	.8byte 0x44A0000000000000
.global lbl_80640E00
lbl_80640E00:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640E04
lbl_80640E04:
	.2byte 0x41F0, 0x0000
.global lbl_80640E08
lbl_80640E08:
	.2byte 0xC1A0, 0x0000
.global lbl_80640E0C
lbl_80640E0C:
	.2byte 0x3F80, 0x0000
.global lbl_80640E10
lbl_80640E10:
	.8byte 0x41A0000000000000
.global lbl_80640E18
lbl_80640E18:
	.skip 0x4
.global lbl_80640E1C
lbl_80640E1C:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640E20
lbl_80640E20:
	.2byte 0x41F0, 0x0000
.global lbl_80640E24
lbl_80640E24:
	.2byte 0xC1F0, 0x0000
.global lbl_80640E28
lbl_80640E28:
	.2byte 0xC120, 0x0000
.global lbl_80640E2C
lbl_80640E2C:
	.2byte 0x3F80, 0x0000
.global lbl_80640E30
lbl_80640E30:
	.2byte 0x4316, 0x0000
.global lbl_80640E34
lbl_80640E34:
	.2byte 0x43A0, 0x0000
.global lbl_80640E38
lbl_80640E38:
	.2byte 0x4387, 0x0000
.global lbl_80640E3C
lbl_80640E3C:
	.2byte 0x43C8, 0x0000
.global lbl_80640E40
lbl_80640E40:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80640E44
lbl_80640E44:
	.2byte 0x4780, 0x0000
.global lbl_80640E48
lbl_80640E48:
	.2byte 0x40C9, 0x0FDB
.global lbl_80640E4C
lbl_80640E4C:
	.2byte 0x42A0, 0x0000
.global lbl_80640E50
lbl_80640E50:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640E54
lbl_80640E54:
	.2byte 0x41A0, 0x0000
.global lbl_80640E58
lbl_80640E58:
	.8byte 0x42F0000000000000
.global lbl_80640E60
lbl_80640E60:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640E68
lbl_80640E68:
	.2byte 0x39D1, 0xB717
.global lbl_80640E6C
lbl_80640E6C:
	.2byte 0xC0C9, 0x0FDB
.global lbl_80640E70
lbl_80640E70:
	.2byte 0x3F4C, 0xCCCD
.global lbl_80640E74
lbl_80640E74:
	.2byte 0x4080, 0x0000
.global lbl_80640E78
lbl_80640E78:
	.2byte 0x3727, 0xC5AC
.global lbl_80640E7C
lbl_80640E7C:
	.2byte 0xB727, 0xC5AC
.global lbl_80640E80
lbl_80640E80:
	.2byte 0x4265, 0x2EE1
.global lbl_80640E84
lbl_80640E84:
	.ascii "C4"
	.byte 0x00
	.byte 0x00
.global lbl_80640E88
lbl_80640E88:
	.8byte 0x43B4000000000000
.global lbl_80640E90
lbl_80640E90:
	.8byte 0x4330000080000000
.global lbl_80640E98
lbl_80640E98:
	.2byte 0x439C, 0x0000
.global lbl_80640E9C
lbl_80640E9C:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640EA0
lbl_80640EA0:
	.2byte 0x41F0, 0x0000
.global lbl_80640EA4
lbl_80640EA4:
	.2byte 0x3F80, 0x0000
.global lbl_80640EA8
lbl_80640EA8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640EAC
lbl_80640EAC:
	.2byte 0x42F0, 0x0000
.global lbl_80640EB0
lbl_80640EB0:
	.2byte 0x40A0, 0x0000
.global lbl_80640EB4
lbl_80640EB4:
	.2byte 0x4080, 0x0000
.global lbl_80640EB8
lbl_80640EB8:
	.8byte 0x3FF0000000000000
.global lbl_80640EC0
lbl_80640EC0:
	.8byte 0x41C8000000000000
.global lbl_80640EC8
lbl_80640EC8:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640ED0
lbl_80640ED0:
	.2byte 0xC250, 0x0000
.global lbl_80640ED4
lbl_80640ED4:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_80640ED8
lbl_80640ED8:
	.skip 0x8
.global lbl_80640EE0
lbl_80640EE0:
	.8byte 0x3F80000000000000
.global lbl_80640EE8
lbl_80640EE8:
	.8byte 0x3FD0000000000000
.global lbl_80640EF0
lbl_80640EF0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640EF8
lbl_80640EF8:
	.2byte 0x3E80, 0x0000
.global lbl_80640EFC
lbl_80640EFC:
	.2byte 0x43F0, 0x0000
.global lbl_80640F00
lbl_80640F00:
	.ascii "Dp"
	.byte 0x00
	.byte 0x00
.global lbl_80640F04
lbl_80640F04:
	.2byte 0x3C8E, 0xFA35
.global lbl_80640F08
lbl_80640F08:
	.2byte 0x42B4, 0x0000
.global lbl_80640F0C
lbl_80640F0C:
	.2byte 0x40A0, 0x0000
.global lbl_80640F10
lbl_80640F10:
	.ascii "@ "
	.byte 0x00
	.byte 0x00
.global lbl_80640F14
lbl_80640F14:
	.ascii "A@"
	.byte 0x00
	.byte 0x00
.global lbl_80640F18
lbl_80640F18:
	.8byte 0x4330000080000000
.global lbl_80640F20
lbl_80640F20:
	.ascii "A"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640F24
lbl_80640F24:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_80640F28
lbl_80640F28:
	.skip 0x4
.global lbl_80640F2C
lbl_80640F2C:
	.2byte 0x4110, 0x0000
.global lbl_80640F30
lbl_80640F30:
	.2byte 0x3C23, 0xD70A
.global lbl_80640F34
lbl_80640F34:
	.2byte 0x42C8, 0x0000
.global lbl_80640F38
lbl_80640F38:
	.2byte 0x3F80, 0x0000
.global lbl_80640F3C
lbl_80640F3C:
	.2byte 0x43F0, 0x0000
.global lbl_80640F40
lbl_80640F40:
	.ascii "C"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640F44
lbl_80640F44:
	.ascii "BH"
	.byte 0x00
	.byte 0x00
.global lbl_80640F48
lbl_80640F48:
	.ascii "B "
	.byte 0x00
	.byte 0x00
.global lbl_80640F4C
lbl_80640F4C:
	.skip 0x4
.global lbl_80640F50
lbl_80640F50:
	.2byte 0x1AC1
.global lbl_80640F52
lbl_80640F52:
	.2byte 0x1AC2
.global lbl_80640F54
lbl_80640F54:
	.2byte 0x1AC3
.global lbl_80640F56
lbl_80640F56:
	.2byte 0x1AC2
.global lbl_80640F58
lbl_80640F58:
	.2byte 0x1AC1
.global lbl_80640F5A
lbl_80640F5A:
	.2byte 0x1AC2
.global lbl_80640F5C
lbl_80640F5C:
	.2byte 0x1AC3
.global lbl_80640F5E
lbl_80640F5E:
	.2byte 0x1AC2
.global lbl_80640F60
lbl_80640F60:
	.2byte 0xC234, 0x0000
.global lbl_80640F64
lbl_80640F64:
	.2byte 0x4080, 0x0000
.global lbl_80640F68
lbl_80640F68:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640F70
lbl_80640F70:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640F78
lbl_80640F78:
	.skip 0x4
.global lbl_80640F7C
lbl_80640F7C:
	.2byte 0x4137, 0xD70A
.global lbl_80640F80
lbl_80640F80:
	.2byte 0x410C, 0xA3D7
.global lbl_80640F84
lbl_80640F84:
	.2byte 0x40F3, 0xD70A
.global lbl_80640F88
lbl_80640F88:
	.2byte 0x4117, 0xAE14
.global lbl_80640F8C
lbl_80640F8C:
	.2byte 0x4100, 0xA3D7
.global lbl_80640F90
lbl_80640F90:
	.2byte 0x4297, 0xB333
.global lbl_80640F94
lbl_80640F94:
	.2byte 0x41C8, 0x0000
.global lbl_80640F98
lbl_80640F98:
	.2byte 0x3F80, 0x0000
.global lbl_80640F9C
lbl_80640F9C:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
.global lbl_80640FA0
lbl_80640FA0:
	.2byte 0x43FA, 0x0000
.global lbl_80640FA4
lbl_80640FA4:
	.2byte 0x3E99, 0x999A
.global lbl_80640FA8
lbl_80640FA8:
	.8byte 0x3FD3333333333333
.global lbl_80640FB0
lbl_80640FB0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640FB8
lbl_80640FB8:
	.2byte 0x4026, 0x075F
.global lbl_80640FBC
lbl_80640FBC:
	.2byte 0xC248, 0x0000
.global lbl_80640FC0
lbl_80640FC0:
	.ascii "?@"
	.byte 0x00
	.byte 0x00
.global lbl_80640FC4
lbl_80640FC4:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80640FC8
lbl_80640FC8:
	.2byte 0x40A0, 0x0000
.global lbl_80640FCC
lbl_80640FCC:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_80640FD0
lbl_80640FD0:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640FD4
lbl_80640FD4:
	.2byte 0x42C8, 0x0000
.global lbl_80640FD8
lbl_80640FD8:
	.8byte 0x4008000000000000
.global lbl_80640FE0
lbl_80640FE0:
	.2byte 0x4214, 0x0000
.global lbl_80640FE4
lbl_80640FE4:
	.ascii "Cv"
	.byte 0x00
	.byte 0x00
.global lbl_80640FE8
lbl_80640FE8:
	.2byte 0x42D0, 0x0000
.global lbl_80640FEC
lbl_80640FEC:
	.float 375.0
.global lbl_80640FF0
lbl_80640FF0:
	.2byte 0x3D4C, 0xCCCD
.global lbl_80640FF4
lbl_80640FF4:
	.2byte 0x41F0, 0x0000
.global lbl_80640FF8
lbl_80640FF8:
	.2byte 0x3E19, 0x999A
.global lbl_80640FFC
lbl_80640FFC:
	.2byte 0xBE19, 0x999A
.global lbl_80641000
lbl_80641000:
	.2byte 0x3F59, 0x999A
.global lbl_80641004
lbl_80641004:
	.2byte 0x3DCC, 0xCCCD
.global lbl_80641008
lbl_80641008:
	.2byte 0xBF59, 0x999A
.global lbl_8064100C
lbl_8064100C:
	.ascii "?333"
.global lbl_80641010
lbl_80641010:
	.8byte 0x4330000080000000
.global lbl_80641018
lbl_80641018:
	.2byte 0x43A0, 0x0000
.global lbl_8064101C
lbl_8064101C:
	.2byte 0x3F88, 0x0000
.global lbl_80641020
lbl_80641020:
	.2byte 0x3FAA, 0xCCCD
.global lbl_80641024
lbl_80641024:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_80641028
lbl_80641028:
	.2byte 0x4145, 0xB9F5
.global lbl_8064102C
lbl_8064102C:
	.2byte 0x41A0, 0x0000
.global lbl_80641030
lbl_80641030:
	.2byte 0x3FA3, 0xD70A
.global lbl_80641034
lbl_80641034:
	.2byte 0x41C0, 0x0000
.global lbl_80641038
lbl_80641038:
	.8byte 0x3F80000000000000
.global lbl_80641040
lbl_80641040:
	.8byte 0x3FE0000000000000
.global lbl_80641048
lbl_80641048:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641050
lbl_80641050:
	.8byte 0x3FD0000000000000
.global lbl_80641058
lbl_80641058:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064105C
lbl_8064105C:
	.skip 0x4
.global lbl_80641060
lbl_80641060:
	.ascii "D "
	.byte 0x00
	.byte 0x00
.global lbl_80641064
lbl_80641064:
	.2byte 0x42B4, 0x0000
.global lbl_80641068
lbl_80641068:
	.ascii "A`"
	.byte 0x00
	.byte 0x00
.global lbl_8064106C
lbl_8064106C:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80641070
lbl_80641070:
	.2byte 0x3C8E, 0xFA35
.global lbl_80641074
lbl_80641074:
	.ascii "Cp"
	.byte 0x00
	.byte 0x00
.global lbl_80641078
lbl_80641078:
	.2byte 0x3E80, 0x0000
.global lbl_8064107C
lbl_8064107C:
	.2byte 0x43F0, 0x0000
.global lbl_80641080
lbl_80641080:
	.2byte 0x41A8, 0x0000
.global lbl_80641084
lbl_80641084:
	.2byte 0x3F42, 0x8F5C
.global lbl_80641088
lbl_80641088:
	.2byte 0x47C3, 0x5000
.global lbl_8064108C
lbl_8064108C:
	.2byte 0x43A0, 0x0000
.global lbl_80641090
lbl_80641090:
	.2byte 0x3F88, 0x0000
.global lbl_80641094
lbl_80641094:
	.2byte 0x3FAA, 0xCCCD
.global lbl_80641098
lbl_80641098:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_8064109C
lbl_8064109C:
	.2byte 0x4080, 0x0000
.global lbl_806410A0
lbl_806410A0:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806410A4
lbl_806410A4:
	.2byte 0x3F4A, 0x1AF3
.global lbl_806410A8
lbl_806410A8:
	.2byte 0x43B4, 0x0000
.global lbl_806410AC
lbl_806410AC:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
.global lbl_806410B0
lbl_806410B0:
	.2byte 0x437F, 0x0000
.global lbl_806410B4
lbl_806410B4:
	.2byte 0x3F19, 0x999A
.global lbl_806410B8
lbl_806410B8:
	.2byte 0x3EAB, 0x851F
.global lbl_806410BC
lbl_806410BC:
	.2byte 0x3F23, 0xD70A
.global lbl_806410C0
lbl_806410C0:
	.2byte 0x3EB8, 0x51EC
.global lbl_806410C4
lbl_806410C4:
	.2byte 0x40A0, 0x0000
.global lbl_806410C8
lbl_806410C8:
	.2byte 0x3F80, 0x0000
.global lbl_806410CC
lbl_806410CC:
	.skip 0x4
.global lbl_806410D0
lbl_806410D0:
	.skip 0x1
.global lbl_806410D1
lbl_806410D1:
	.byte 0x01
.global lbl_806410D2
lbl_806410D2:
	.byte 0x02
.global lbl_806410D3
lbl_806410D3:
	.byte 0x03
.global lbl_806410D4
lbl_806410D4:
	.byte 0x04
.global lbl_806410D5
lbl_806410D5:
	.byte 0x05
.global lbl_806410D6
lbl_806410D6:
	.byte 0x06
.global lbl_806410D7
lbl_806410D7:
	.byte 0x07
.global lbl_806410D8
lbl_806410D8:
	.byte 0x08
.global lbl_806410D9
lbl_806410D9:
	.byte 0x09
.global lbl_806410DA
lbl_806410DA:
	.byte 0x0A
.global lbl_806410DB
lbl_806410DB:
	.2byte 0x0B00, 0x0000
	.byte 0x00
.global lbl_806410E0
lbl_806410E0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806410E8
lbl_806410E8:
	.2byte 0x3F4C, 0xCCCD
.global lbl_806410EC
lbl_806410EC:
	.ascii "A0"
	.byte 0x00
	.byte 0x00
.global lbl_806410F0
lbl_806410F0:
	.ascii "A"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806410F8
lbl_806410F8:
	.8byte 0x3FE0000000000000
.global lbl_80641100
lbl_80641100:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641108
lbl_80641108:
	.2byte 0x3727, 0xC5AC
.global lbl_8064110C
lbl_8064110C:
	.2byte 0xB727, 0xC5AC
.global lbl_80641110
lbl_80641110:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641114
lbl_80641114:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_80641118
lbl_80641118:
	.2byte 0x4316, 0x0000
.global lbl_8064111C
lbl_8064111C:
	.float 491.0
.global lbl_80641120
lbl_80641120:
	.2byte 0x4306, 0x0000
.global lbl_80641124
lbl_80641124:
	.float 347.0
.global lbl_80641128
lbl_80641128:
	.2byte 0xC47A, 0x0000
.global lbl_8064112C
lbl_8064112C:
	.2byte 0xC461, 0x0000
.global lbl_80641130
lbl_80641130:
	.skip 0x4
.global lbl_80641134
lbl_80641134:
	.2byte 0x3F80, 0x0000
.global lbl_80641138
lbl_80641138:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064113C
lbl_8064113C:
	.ascii "Cp"
	.byte 0x00
	.byte 0x00
.global lbl_80641140
lbl_80641140:
	.2byte 0x4110, 0x0000
.global lbl_80641144
lbl_80641144:
	.2byte 0x4190, 0x0000
.global lbl_80641148
lbl_80641148:
	.ascii "D "
	.byte 0x00
	.byte 0x00
.global lbl_8064114C
lbl_8064114C:
	.2byte 0x43F0, 0x0000
.global lbl_80641150
lbl_80641150:
	.2byte 0x47C3, 0x5000
.global lbl_80641154
lbl_80641154:
	.2byte 0x43A0, 0x0000
.global lbl_80641158
lbl_80641158:
	.2byte 0x3F88, 0x0000
.global lbl_8064115C
lbl_8064115C:
	.2byte 0x3FAA, 0xCCCD
.global lbl_80641160
lbl_80641160:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_80641164
lbl_80641164:
	.2byte 0x4080, 0x0000
.global lbl_80641168
lbl_80641168:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064116C
lbl_8064116C:
	.2byte 0x3F4A, 0x1AF3
.global lbl_80641170
lbl_80641170:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641178
lbl_80641178:
	.byte 0x01
.global lbl_80641179
lbl_80641179:
	.byte 0x04
.global lbl_8064117A
lbl_8064117A:
	.byte 0x10
.global lbl_8064117B
lbl_8064117B:
	.byte 0x02
.global lbl_8064117C
lbl_8064117C:
	.byte 0x08
.global lbl_8064117D
lbl_8064117D:
	.ascii " "
	.byte 0x00
	.byte 0x00
.global lbl_80641180
lbl_80641180:
	.8byte 0x3F80000000000000
.global lbl_80641188
lbl_80641188:
	.skip 0x8
.global lbl_80641190
lbl_80641190:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641198
lbl_80641198:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064119C
lbl_8064119C:
	.skip 0x4
.global lbl_806411A0
lbl_806411A0:
	.2byte 0xC420, 0x0000
.global lbl_806411A4
lbl_806411A4:
	.2byte 0x3C8E, 0xFA35
.global lbl_806411A8
lbl_806411A8:
	.2byte 0x42B4, 0x0000
.global lbl_806411AC
lbl_806411AC:
	.ascii "D "
	.byte 0x00
	.byte 0x00
.global lbl_806411B0
lbl_806411B0:
	.2byte 0xBF80, 0x0000
.global lbl_806411B4
lbl_806411B4:
	.2byte 0xC3F0, 0x0000
.global lbl_806411B8
lbl_806411B8:
	.2byte 0x43F0, 0x0000
.global lbl_806411BC
lbl_806411BC:
	.2byte 0x3E99, 0x999A
.global lbl_806411C0
lbl_806411C0:
	.2byte 0x3F6E, 0x8BA3
.global lbl_806411C4
lbl_806411C4:
	.2byte 0x3F71, 0xC71C
.global lbl_806411C8
lbl_806411C8:
	.2byte 0x43B4, 0x0000
.global lbl_806411CC
lbl_806411CC:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
.global lbl_806411D0
lbl_806411D0:
	.2byte 0x437F, 0x0000
.global lbl_806411D4
lbl_806411D4:
	.ascii "?&ff"
.global lbl_806411D8
lbl_806411D8:
	.2byte 0x3EB3, 0x3333
.global lbl_806411DC
lbl_806411DC:
	.2byte 0x3EA6, 0x6666
.global lbl_806411E0
lbl_806411E0:
	.ascii ">333"
.global lbl_806411E4
lbl_806411E4:
	.2byte 0x4080, 0x0000
.global lbl_806411E8
lbl_806411E8:
	.2byte 0x40A0, 0x0000
.global lbl_806411EC
lbl_806411EC:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_806411F0
lbl_806411F0:
	.byte 0x01
.global lbl_806411F1
lbl_806411F1:
	.byte 0x02
.global lbl_806411F2
lbl_806411F2:
	.byte 0x04
.global lbl_806411F3
lbl_806411F3:
	.byte 0x08
.global lbl_806411F4
lbl_806411F4:
	.byte 0x10
.global lbl_806411F5
lbl_806411F5:
	.ascii " "
	.byte 0x00
	.byte 0x00
.global lbl_806411F8
lbl_806411F8:
	.skip 0x1
.global lbl_806411F9
lbl_806411F9:
	.byte 0x01
.global lbl_806411FA
lbl_806411FA:
	.2byte 0x0200, 0x0000, 0x0000
.global lbl_80641200
lbl_80641200:
	.8byte 0x3FE0000000000000
.global lbl_80641208
lbl_80641208:
	.2byte 0x3F80, 0x0000
.global lbl_8064120C
lbl_8064120C:
	.skip 0x4
.global lbl_80641210
lbl_80641210:
	.2byte 0x41A0, 0x0000
.global lbl_80641214
lbl_80641214:
	.2byte 0x43A0, 0x0000
.global lbl_80641218
lbl_80641218:
	.2byte 0x3F88, 0x0000
.global lbl_8064121C
lbl_8064121C:
	.2byte 0x3FAA, 0xCCCD
.global lbl_80641220
lbl_80641220:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641224
lbl_80641224:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_80641228
lbl_80641228:
	.ascii "BH"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641230
lbl_80641230:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641238
lbl_80641238:
	.2byte 0xC0B0, 0x0000
.global lbl_8064123C
lbl_8064123C:
	.2byte 0xC040, 0x0000
.global lbl_80641240
lbl_80641240:
	.2byte 0x40E0, 0x0000
.global lbl_80641244
lbl_80641244:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80641248
lbl_80641248:
	.2byte 0x437F, 0x0000
.global lbl_8064124C
lbl_8064124C:
	.ascii "?o\\)"
.global lbl_80641250
lbl_80641250:
	.2byte 0x3EAB, 0x851E
.global lbl_80641254
lbl_80641254:
	.2byte 0x43FA, 0x0000
.global lbl_80641258
lbl_80641258:
	.2byte 0x3EB8, 0x51EC
.global lbl_8064125C
lbl_8064125C:
	.2byte 0x3F19, 0x999A
.global lbl_80641260
lbl_80641260:
	.2byte 0x3F23, 0xD70A
.global lbl_80641264
lbl_80641264:
	.2byte 0x40F0, 0x0000
.global lbl_80641268
lbl_80641268:
	.2byte 0x3F80, 0x0000
.global lbl_8064126C
lbl_8064126C:
	.skip 0x4
.global lbl_80641270
lbl_80641270:
	.2byte 0x4137, 0xD70A
.global lbl_80641274
lbl_80641274:
	.2byte 0x410C, 0xA3D7
.global lbl_80641278
lbl_80641278:
	.2byte 0x40F3, 0xD70A
.global lbl_8064127C
lbl_8064127C:
	.2byte 0x4117, 0xAE14
.global lbl_80641280
lbl_80641280:
	.2byte 0x4100, 0xA3D7
.global lbl_80641284
lbl_80641284:
	.2byte 0x4297, 0xB333
.global lbl_80641288
lbl_80641288:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_8064128C
lbl_8064128C:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641290
lbl_80641290:
	.8byte 0x40A0000000000000
.global lbl_80641298
lbl_80641298:
	.8byte 0x4010000000000000
.global lbl_806412A0
lbl_806412A0:
	.8byte 0x4018000000000000
.global lbl_806412A8
lbl_806412A8:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_806412AC
lbl_806412AC:
	.2byte 0x4316, 0x0000
.global lbl_806412B0
lbl_806412B0:
	.float 491.0
.global lbl_806412B4
lbl_806412B4:
	.2byte 0x42D0, 0x0000
.global lbl_806412B8
lbl_806412B8:
	.8byte 0x439E800000000000
.global lbl_806412C0
lbl_806412C0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806412C8
lbl_806412C8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806412D0
lbl_806412D0:
	.8byte 0x3FF0000000000000
.global lbl_806412D8
lbl_806412D8:
	.8byte 0x3FF4000000000000
.global lbl_806412E0
lbl_806412E0:
	.8byte 0x4004000000000000
.global lbl_806412E8
lbl_806412E8:
	.8byte 0x40C90FDB00000000
.global lbl_806412F0
lbl_806412F0:
	.8byte 0x4330000080000000
.global lbl_806412F8
lbl_806412F8:
	.8byte 0x3FE0000000000000
.global lbl_80641300
lbl_80641300:
	.8byte 0x3F80000000000000
.global lbl_80641308
lbl_80641308:
	.8byte 0x4004000000000000
.global lbl_80641310
lbl_80641310:
	.8byte 0x3F80000000000000
.global lbl_80641318
lbl_80641318:
	.8byte 0x3FF0000000000000
.global lbl_80641320
lbl_80641320:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641328
lbl_80641328:
	.8byte 0xBF80000000000000
.global lbl_80641330
lbl_80641330:
	.8byte 0x3F80000000000000
.global lbl_80641338
lbl_80641338:
	.ascii "@>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641340
lbl_80641340:
	.8byte 0x4014000000000000
.global lbl_80641348
lbl_80641348:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064134C
lbl_8064134C:
	.ascii "C4"
	.byte 0x00
	.byte 0x00
.global lbl_80641350
lbl_80641350:
	.8byte 0x4010000000000000
.global lbl_80641358
lbl_80641358:
	.skip 0x4
.global lbl_8064135C
lbl_8064135C:
	.2byte 0x43A0, 0x0000
.global lbl_80641360
lbl_80641360:
	.ascii "Cp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641368
lbl_80641368:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641370
lbl_80641370:
	.8byte 0x41A0000000000000
.global lbl_80641378
lbl_80641378:
	.8byte 0x4330000080000000
.global lbl_80641380
lbl_80641380:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641384
lbl_80641384:
	.2byte 0x40A0, 0x0000
.global lbl_80641388
lbl_80641388:
	.2byte 0x4080, 0x0000
.global lbl_8064138C
lbl_8064138C:
	.2byte 0x0204, 0x0810, 0x2040, 0x0000, 0x0000, 0x0000
.global lbl_80641398
lbl_80641398:
	.2byte 0x42B2, 0x0000
.global lbl_8064139C
lbl_8064139C:
	.ascii "Cz"
	.byte 0x00
	.byte 0x00
.global lbl_806413A0
lbl_806413A0:
	.2byte 0x430E, 0x0000
.global lbl_806413A4
lbl_806413A4:
	.ascii "Cs"
	.byte 0x00
	.byte 0x00
.global lbl_806413A8
lbl_806413A8:
	.float 391.0
.global lbl_806413AC
lbl_806413AC:
	.ascii "D\n"
	.byte 0x00
	.byte 0x00
.global lbl_806413B0
lbl_806413B0:
	.2byte 0x3F80, 0x0000
.global lbl_806413B4
lbl_806413B4:
	.2byte 0x4080, 0x0000
.global lbl_806413B8
lbl_806413B8:
	.8byte 0x4330000080000000
.global lbl_806413C0
lbl_806413C0:
	.2byte 0x3F80, 0x0000
.global lbl_806413C4
lbl_806413C4:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_806413C8
lbl_806413C8:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_806413CC
lbl_806413CC:
	.ascii "CH"
	.byte 0x00
	.byte 0x00
.global lbl_806413D0
lbl_806413D0:
	.2byte 0x4396, 0x0000
.global lbl_806413D4
lbl_806413D4:
	.ascii "Cz"
	.byte 0x00
	.byte 0x00
.global lbl_806413D8
lbl_806413D8:
	.ascii "DH"
	.byte 0x00
	.byte 0x00
.global lbl_806413DC
lbl_806413DC:
	.2byte 0x42C8, 0x0000
.global lbl_806413E0
lbl_806413E0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806413E8
lbl_806413E8:
	.skip 0x4
.global lbl_806413EC
lbl_806413EC:
	.2byte 0x3F80, 0x0000
.global lbl_806413F0
lbl_806413F0:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806413F4
lbl_806413F4:
	.2byte 0x42F0, 0x0000
.global lbl_806413F8
lbl_806413F8:
	.2byte 0x41F0, 0x0000
.global lbl_806413FC
lbl_806413FC:
	.2byte 0x4628, 0xC000
.global lbl_80641400
lbl_80641400:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80641404
lbl_80641404:
	.2byte 0x4396, 0x0000
.global lbl_80641408
lbl_80641408:
	.ascii "Ea"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641410
lbl_80641410:
	.ascii "B "
	.byte 0x00
	.byte 0x00
.global lbl_80641414
lbl_80641414:
	.2byte 0x3F80, 0x0000
.global lbl_80641418
lbl_80641418:
	.8byte 0x4008000000000000
.global lbl_80641420
lbl_80641420:
	.ascii "@N"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641428
lbl_80641428:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641430
lbl_80641430:
	.8byte 0x3FF0000000000000
.global lbl_80641438
lbl_80641438:
	.8byte 0x4014000000000000
.global lbl_80641440
lbl_80641440:
	.skip 0x4
.global lbl_80641444
lbl_80641444:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641448
lbl_80641448:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_8064144C
lbl_8064144C:
	.2byte 0x41A0, 0x0000
.global lbl_80641450
lbl_80641450:
	.2byte 0x41C0, 0x0000
.global lbl_80641454
lbl_80641454:
	.2byte 0x41B8, 0x0000
.global lbl_80641458
lbl_80641458:
	.8byte 0x4330000080000000
.global lbl_80641460
lbl_80641460:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641464
lbl_80641464:
	.2byte 0x40A0, 0x0000
.global lbl_80641468
lbl_80641468:
	.2byte 0x4080, 0x0000
.global lbl_8064146C
lbl_8064146C:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_80641470
lbl_80641470:
	.2byte 0x0004
.global lbl_80641472
lbl_80641472:
	.2byte 0x0001
.global lbl_80641474
lbl_80641474:
	.skip 0x2
.global lbl_80641476
lbl_80641476:
	.skip 0x2
.global lbl_80641478
lbl_80641478:
	.8byte 0x0204081020400000
.global lbl_80641480
lbl_80641480:
	.8byte 0x0204081020400000
.global lbl_80641488
lbl_80641488:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641490
lbl_80641490:
	.8byte 0x3F80000000000000
.global lbl_80641498
lbl_80641498:
	.8byte 0x3FF0000000000000
.global lbl_806414A0
lbl_806414A0:
	.8byte 0x4014000000000000
.global lbl_806414A8
lbl_806414A8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806414AC
lbl_806414AC:
	.2byte 0x40A0, 0x0000
.global lbl_806414B0
lbl_806414B0:
	.2byte 0x4080, 0x0000
.global lbl_806414B4
lbl_806414B4:
	.8byte 0x0204081020400000
.global lbl_806414BC
lbl_806414BC:
	.float 355.0
.global lbl_806414C0
lbl_806414C0:
	.2byte 0x43A2, 0x0000
.global lbl_806414C4
lbl_806414C4:
	.float 293.0
.global lbl_806414C8
lbl_806414C8:
	.2byte 0x4383, 0x0000
.global lbl_806414CC
lbl_806414CC:
	.ascii "Cg"
	.byte 0x00
	.byte 0x00
.global lbl_806414D0
lbl_806414D0:
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806414D4
lbl_806414D4:
	.2byte 0x4417, 0xC000
.global lbl_806414D8
lbl_806414D8:
	.2byte 0x43D8, 0x0000
.global lbl_806414DC
lbl_806414DC:
	.2byte 0x41F8, 0x0000
.global lbl_806414E0
lbl_806414E0:
	.8byte 0x4180000000000000
.global lbl_806414E8
lbl_806414E8:
	.skip 0x4
.global lbl_806414EC
lbl_806414EC:
	.2byte 0x3DCC, 0xCCCD
.global lbl_806414F0
lbl_806414F0:
	.2byte 0x3E4C, 0xCCCD
.global lbl_806414F4
lbl_806414F4:
	.2byte 0x3F28, 0xF5C3
.global lbl_806414F8
lbl_806414F8:
	.2byte 0x3EA8, 0xF5C3
.global lbl_806414FC
lbl_806414FC:
	.2byte 0x3F80, 0x0000
.global lbl_80641500
lbl_80641500:
	.2byte 0x3727, 0xC5AC
.global lbl_80641504
lbl_80641504:
	.2byte 0xB727, 0xC5AC
.global lbl_80641508
lbl_80641508:
	.8byte 0x41F0000000000000
.global lbl_80641510
lbl_80641510:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641518
lbl_80641518:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064151C
lbl_8064151C:
	.2byte 0xC00C, 0xCCCD
.global lbl_80641520
lbl_80641520:
	.2byte 0x400C, 0xCCCD
.global lbl_80641524
lbl_80641524:
	.2byte 0xBE4C, 0xCCD0
.global lbl_80641528
lbl_80641528:
	.2byte 0x4086, 0x6666
.global lbl_8064152C
lbl_8064152C:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80641530
lbl_80641530:
	.2byte 0x3E80, 0x0000
.global lbl_80641534
lbl_80641534:
	.ascii "DR"
	.byte 0x00
	.byte 0x00
.global lbl_80641538
lbl_80641538:
	.ascii "BH"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641540
lbl_80641540:
	.skip 0x4
.global lbl_80641544
lbl_80641544:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641548
lbl_80641548:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_8064154C
lbl_8064154C:
	.2byte 0x3F80, 0x0000
.global lbl_80641550
lbl_80641550:
	.8byte 0x3FC0000000000000
.global lbl_80641558
lbl_80641558:
	.skip 0x8
.global lbl_80641560
lbl_80641560:
	.8byte 0x3F80000000000000
.global lbl_80641568
lbl_80641568:
	.8byte 0x401E000000000000
.global lbl_80641570
lbl_80641570:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641578
lbl_80641578:
	.2byte 0xC316, 0x0000
.global lbl_8064157C
lbl_8064157C:
	.2byte 0xC25C, 0x0000
.global lbl_80641580
lbl_80641580:
	.ascii "A@"
	.byte 0x00
	.byte 0x00
.global lbl_80641584
lbl_80641584:
	.2byte 0x420C, 0x0000
.global lbl_80641588
lbl_80641588:
	.2byte 0xC325, 0x0000
.global lbl_8064158C
lbl_8064158C:
	.2byte 0x42AA, 0x0000
.global lbl_80641590
lbl_80641590:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80641594
lbl_80641594:
	.2byte 0xC282, 0x0000
.global lbl_80641598
lbl_80641598:
	.ascii "CW"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806415A0
lbl_806415A0:
	.8byte 0x3F80000000000000
.global lbl_806415A8
lbl_806415A8:
	.8byte 0x4330000080000000
.global lbl_806415B0
lbl_806415B0:
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806415B4
lbl_806415B4:
	.2byte 0x43F4, 0x0000
.global lbl_806415B8
lbl_806415B8:
	.2byte 0x43A2, 0x0000
.global lbl_806415BC
lbl_806415BC:
	.2byte 0x43D8, 0x0000
.global lbl_806415C0
lbl_806415C0:
	.2byte 0x4417, 0xC000
.global lbl_806415C4
lbl_806415C4:
	.2byte 0x43FF, 0x0000
.global lbl_806415C8
lbl_806415C8:
	.2byte 0x43AA, 0x0000
.global lbl_806415CC
lbl_806415CC:
	.float 429.0
.global lbl_806415D0
lbl_806415D0:
	.ascii "C;"
	.byte 0x00
	.byte 0x00
.global lbl_806415D4
lbl_806415D4:
	.2byte 0x4392, 0x0000
.global lbl_806415D8
lbl_806415D8:
	.2byte 0x41A0, 0x0000
.global lbl_806415DC
lbl_806415DC:
	.2byte 0x4416, 0x0000
.global lbl_806415E0
lbl_806415E0:
	.ascii "C4"
	.byte 0x00
	.byte 0x00
.global lbl_806415E4
lbl_806415E4:
	.2byte 0x43AF, 0x0000
.global lbl_806415E8
lbl_806415E8:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_806415EC
lbl_806415EC:
	.2byte 0x440C, 0x0000
.global lbl_806415F0
lbl_806415F0:
	.ascii "Cz"
	.byte 0x00
	.byte 0x00
.global lbl_806415F4
lbl_806415F4:
	.2byte 0x439A, 0x0000
.global lbl_806415F8
lbl_806415F8:
	.ascii "A"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806415FC
lbl_806415FC:
	.2byte 0x4180, 0x0000
.global lbl_80641600
lbl_80641600:
	.skip 0x8
.global lbl_80641608
lbl_80641608:
	.byte 0x00
	.ascii " "
	.byte 0x00
	.byte 0x00
.global lbl_8064160C
lbl_8064160C:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641610
lbl_80641610:
	.2byte 0x41F0, 0x0000
.global lbl_80641614
lbl_80641614:
	.2byte 0x3F80, 0x0000
.global lbl_80641618
lbl_80641618:
	.skip 0x8
.global lbl_80641620
lbl_80641620:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641628
lbl_80641628:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064162C
lbl_8064162C:
	.ascii "C4"
	.byte 0x00
	.byte 0x00
.global lbl_80641630
lbl_80641630:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641634
lbl_80641634:
	.2byte 0x42F0, 0x0000
.global lbl_80641638
lbl_80641638:
	.8byte 0x41F0000000000000
.global lbl_80641640
lbl_80641640:
	.skip 0x4
.global lbl_80641644
lbl_80641644:
	.2byte 0x40A0, 0x0000
.global lbl_80641648
lbl_80641648:
	.2byte 0x41A0, 0x0000
.global lbl_8064164C
lbl_8064164C:
	.2byte 0x420C, 0x0000
.global lbl_80641650
lbl_80641650:
	.2byte 0x3DCC, 0xCCCD
.global lbl_80641654
lbl_80641654:
	.2byte 0x47C3, 0x5000
.global lbl_80641658
lbl_80641658:
	.2byte 0x3FC0, 0x0000
.global lbl_8064165C
lbl_8064165C:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641660
lbl_80641660:
	.8byte 0x41F0000000000000
.global lbl_80641668
lbl_80641668:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641670
lbl_80641670:
	.ascii "arcDat/"
	.byte 0x00
.global lbl_80641678
lbl_80641678:
	.2byte 0x3F80, 0x0000
.global lbl_8064167C
lbl_8064167C:
	.skip 0x4
.global lbl_80641680
lbl_80641680:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641688
lbl_80641688:
	.2byte 0x011D
.global lbl_8064168A
lbl_8064168A:
	.2byte 0x0078
.global lbl_8064168C
lbl_8064168C:
	.2byte 0x0099
.global lbl_8064168E
lbl_8064168E:
	.2byte 0x016F
.global lbl_80641690
lbl_80641690:
	.8byte 0x3FE0000000000000
.global lbl_80641698
lbl_80641698:
	.8byte 0x3FD0000000000000
.global lbl_806416A0
lbl_806416A0:
	.8byte 0x3FE0000000000000
.global lbl_806416A8
lbl_806416A8:
	.8byte 0x4330000080000000
.global lbl_806416B0
lbl_806416B0:
	.byte 0x00
	.ascii "B"
	.byte 0x00
	.ascii "A"
	.byte 0x00
	.ascii "D"
	.byte 0x00
	.ascii "C"
.global lbl_806416B8
lbl_806416B8:
	.2byte 0x005C
.global lbl_806416BA
lbl_806416BA:
	.2byte 0x0105
.global lbl_806416BC
lbl_806416BC:
	.2byte 0x004D
.global lbl_806416BE
lbl_806416BE:
	.2byte 0x008B
.global lbl_806416C0
lbl_806416C0:
	.2byte 0x3F80, 0x0000
.global lbl_806416C4
lbl_806416C4:
	.2byte 0x3E80, 0x0000
.global lbl_806416C8
lbl_806416C8:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806416D0
lbl_806416D0:
	.byte 0x00
	.ascii "B"
	.byte 0x00
	.ascii "A"
	.byte 0x00
	.ascii "D"
	.byte 0x00
	.ascii "C"
.global lbl_806416D8
lbl_806416D8:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806416DC
lbl_806416DC:
	.2byte 0x3E80, 0x0000
.global lbl_806416E0
lbl_806416E0:
	.2byte 0x3DCC, 0xCCCD
.global lbl_806416E4
lbl_806416E4:
	.2byte 0x3E99, 0x999A
.global lbl_806416E8
lbl_806416E8:
	.8byte 0x3F4CCCCD00000000
.global lbl_806416F0
lbl_806416F0:
	.byte 0x0C
.global lbl_806416F1
lbl_806416F1:
	.byte 0x0F
.global lbl_806416F2
lbl_806416F2:
	.byte 0x0D
.global lbl_806416F3
lbl_806416F3:
	.2byte 0x1000, 0x0000
	.byte 0x00
.global lbl_806416F8
lbl_806416F8:
	.skip 0x8
.global lbl_80641700
lbl_80641700:
	.8byte 0x3FF0000000000000
.global lbl_80641708
lbl_80641708:
	.8byte 0xBFF0000000000000
.global lbl_80641710
lbl_80641710:
	.8byte 0x4014000000000000
.global lbl_80641718
lbl_80641718:
	.8byte 0x7FEFFFFFFFFFFFFF
.global lbl_80641720
lbl_80641720:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641728
lbl_80641728:
	.2byte 0x4330, 0x0000, 0x8000, 0x0000, 0x2E00, 0x0000, 0x0000, 0x0000
	.2byte 0x414D, 0x7C50, 0x4D00, 0x0000, 0x2554, 0x0000, 0x0000, 0x0000
.global lbl_80641748
lbl_80641748:
	.skip 0x10
.global lbl_80641758
lbl_80641758:
	.byte 0x4E
.global lbl_80641759
lbl_80641759:
	.byte 0x41
.global lbl_8064175A
lbl_8064175A:
	.byte 0x4E
.global lbl_8064175B
lbl_8064175B:
	.byte 0x28
.global lbl_8064175C
lbl_8064175C:
	.skip 0x4
.global lbl_80641760
lbl_80641760:
	.skip 0x8
.global lbl_80641768
lbl_80641768:
	.8byte 0x0010000000000000
.global lbl_80641770
lbl_80641770:
	.8byte 0x7FEFFFFFFFFFFFFF
.global lbl_80641778
lbl_80641778:
	.skip 0x8
.global lbl_80641780
lbl_80641780:
	.8byte 0x0010000000000000
.global lbl_80641788
lbl_80641788:
	.8byte 0x7FEFFFFFFFFFFFFF
.global lbl_80641790
lbl_80641790:
	.skip 0x8
.global lbl_80641798
lbl_80641798:
	.8byte 0x400921FB54442D18
.global lbl_806417A0
lbl_806417A0:
	.8byte 0x3FF921FB54442D18
.global lbl_806417A8
lbl_806417A8:
	.8byte 0x3FC5555555555555
.global lbl_806417B0
lbl_806417B0:
	.8byte 0xBFD4D61203EB6F7D
.global lbl_806417B8
lbl_806417B8:
	.8byte 0x3FC9C1550E884455
.global lbl_806417C0
lbl_806417C0:
	.8byte 0xBFA48228B5688F3B
.global lbl_806417C8
lbl_806417C8:
	.8byte 0x3F49EFE07501B288
.global lbl_806417D0
lbl_806417D0:
	.8byte 0x3F023DE10DFDF709
.global lbl_806417D8
lbl_806417D8:
	.8byte 0x3FF0000000000000
.global lbl_806417E0
lbl_806417E0:
	.8byte 0xC0033A271C8A2D4B
.global lbl_806417E8
lbl_806417E8:
	.8byte 0x40002AE59C598AC8
.global lbl_806417F0
lbl_806417F0:
	.8byte 0xBFE6066C1B8D0159
.global lbl_806417F8
lbl_806417F8:
	.8byte 0x3FB3B8C5B12E9282
.global lbl_80641800
lbl_80641800:
	.8byte 0x3C91A62633145C07
.global lbl_80641808
lbl_80641808:
	.8byte 0x3FE0000000000000
.global lbl_80641810
lbl_80641810:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641818
lbl_80641818:
	.8byte 0x3FF921FB54442D18
.global lbl_80641820
lbl_80641820:
	.8byte 0x3C91A62633145C07
.global lbl_80641828
lbl_80641828:
	.8byte 0x7E37E43C8800759C
.global lbl_80641830
lbl_80641830:
	.8byte 0x3FF0000000000000
.global lbl_80641838
lbl_80641838:
	.8byte 0x3FC5555555555555
.global lbl_80641840
lbl_80641840:
	.8byte 0xBFD4D61203EB6F7D
.global lbl_80641848
lbl_80641848:
	.8byte 0x3FC9C1550E884455
.global lbl_80641850
lbl_80641850:
	.8byte 0xBFA48228B5688F3B
.global lbl_80641858
lbl_80641858:
	.8byte 0x3F49EFE07501B288
.global lbl_80641860
lbl_80641860:
	.8byte 0x3F023DE10DFDF709
.global lbl_80641868
lbl_80641868:
	.8byte 0xC0033A271C8A2D4B
.global lbl_80641870
lbl_80641870:
	.8byte 0x40002AE59C598AC8
.global lbl_80641878
lbl_80641878:
	.8byte 0xBFE6066C1B8D0159
.global lbl_80641880
lbl_80641880:
	.8byte 0x3FB3B8C5B12E9282
.global lbl_80641888
lbl_80641888:
	.8byte 0x3FE0000000000000
.global lbl_80641890
lbl_80641890:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641898
lbl_80641898:
	.8byte 0x3FE921FB54442D18
.global lbl_806418A0
lbl_806418A0:
	.8byte 0x400921FB54442D18
.global lbl_806418A8
lbl_806418A8:
	.8byte 0xC00921FB54442D18
.global lbl_806418B0
lbl_806418B0:
	.8byte 0xBFF921FB54442D18
.global lbl_806418B8
lbl_806418B8:
	.8byte 0x3FF921FB54442D18
.global lbl_806418C0
lbl_806418C0:
	.8byte 0x3FE921FB54442D18
.global lbl_806418C8
lbl_806418C8:
	.8byte 0xBFE921FB54442D18
.global lbl_806418D0
lbl_806418D0:
	.8byte 0x4002D97C7F3321D2
.global lbl_806418D8
lbl_806418D8:
	.8byte 0xC002D97C7F3321D2
.global lbl_806418E0
lbl_806418E0:
	.skip 0x8
.global lbl_806418E8
lbl_806418E8:
	.8byte 0x8000000000000000
.global lbl_806418F0
lbl_806418F0:
	.8byte 0x3CA1A62633145C07
.global lbl_806418F8
lbl_806418F8:
	.8byte 0x3FF0000000000000
.global lbl_80641900
lbl_80641900:
	.skip 0x8
.global lbl_80641908
lbl_80641908:
	.8byte 0x7FF0000000000000
.global lbl_80641910
lbl_80641910:
	.8byte 0x3FE0000000000000
.global lbl_80641918
lbl_80641918:
	.8byte 0x3FD5555555555555
.global lbl_80641920
lbl_80641920:
	.8byte 0x3FD0000000000000
.global lbl_80641928
lbl_80641928:
	.8byte 0x3FF7154760000000
.global lbl_80641930
lbl_80641930:
	.8byte 0x3E54AE0BF85DDF44
.global lbl_80641938
lbl_80641938:
	.8byte 0x3FF71547652B82FE
.global lbl_80641940
lbl_80641940:
	.ascii "C@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641948
lbl_80641948:
	.8byte 0x3FE3333333333303
.global lbl_80641950
lbl_80641950:
	.8byte 0x3FDB6DB6DB6FABFF
.global lbl_80641958
lbl_80641958:
	.8byte 0x3FD55555518F264D
.global lbl_80641960
lbl_80641960:
	.8byte 0x3FD17460A91D4101
.global lbl_80641968
lbl_80641968:
	.8byte 0x3FCD864A93C9DB65
.global lbl_80641970
lbl_80641970:
	.8byte 0x3FCA7E284A454EEF
.global lbl_80641978
lbl_80641978:
	.8byte 0x4008000000000000
.global lbl_80641980
lbl_80641980:
	.8byte 0x3FEEC709E0000000
.global lbl_80641988
lbl_80641988:
	.8byte 0xBE3E2FE0145B01F5
.global lbl_80641990
lbl_80641990:
	.8byte 0x3FEEC709DC3A03FD
.global lbl_80641998
lbl_80641998:
	.8byte 0xBFF0000000000000
.global lbl_806419A0
lbl_806419A0:
	.8byte 0x7E37E43C8800759C
.global lbl_806419A8
lbl_806419A8:
	.8byte 0x3C971547652B82FE
.global lbl_806419B0
lbl_806419B0:
	.8byte 0x01A56E1FC2F8F359
.global lbl_806419B8
lbl_806419B8:
	.8byte 0x3FE62E4300000000
.global lbl_806419C0
lbl_806419C0:
	.8byte 0x3FE62E42FEFA39EF
.global lbl_806419C8
lbl_806419C8:
	.8byte 0xBE205C610CA86C39
.global lbl_806419D0
lbl_806419D0:
	.8byte 0x3FC555555555553E
.global lbl_806419D8
lbl_806419D8:
	.8byte 0xBF66C16C16BEBD93
.global lbl_806419E0
lbl_806419E0:
	.8byte 0x3F11566AAF25DE2C
.global lbl_806419E8
lbl_806419E8:
	.8byte 0xBEBBBD41C5D26BF1
.global lbl_806419F0
lbl_806419F0:
	.8byte 0x3E66376972BEA4D0
.global lbl_806419F8
lbl_806419F8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641A00
lbl_80641A00:
	.8byte 0x4330000080000000
.global lbl_80641A08
lbl_80641A08:
	.skip 0x8
.global lbl_80641A10
lbl_80641A10:
	.8byte 0x3FF921FB54400000
.global lbl_80641A18
lbl_80641A18:
	.8byte 0x3DD0B4611A626331
.global lbl_80641A20
lbl_80641A20:
	.8byte 0x3DD0B4611A600000
.global lbl_80641A28
lbl_80641A28:
	.8byte 0x3BA3198A2E037073
.global lbl_80641A30
lbl_80641A30:
	.8byte 0x3FE0000000000000
.global lbl_80641A38
lbl_80641A38:
	.8byte 0x3FE45F306DC9C883
.global lbl_80641A40
lbl_80641A40:
	.8byte 0x3BA3198A2E000000
.global lbl_80641A48
lbl_80641A48:
	.8byte 0x397B839A252049C1
.global lbl_80641A50
lbl_80641A50:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641A58
lbl_80641A58:
	.8byte 0x4330000080000000
.global lbl_80641A60
lbl_80641A60:
	.8byte 0x3FF0000000000000
.global lbl_80641A68
lbl_80641A68:
	.8byte 0x3FA555555555554C
.global lbl_80641A70
lbl_80641A70:
	.8byte 0xBF56C16C16C15177
.global lbl_80641A78
lbl_80641A78:
	.8byte 0x3EFA01A019CB1590
.global lbl_80641A80
lbl_80641A80:
	.8byte 0xBE927E4F809C52AD
.global lbl_80641A88
lbl_80641A88:
	.8byte 0x3E21EE9EBDB4B1C4
.global lbl_80641A90
lbl_80641A90:
	.8byte 0xBDA8FAE9BE8838D4
.global lbl_80641A98
lbl_80641A98:
	.8byte 0x3FE0000000000000
.global lbl_80641AA0
lbl_80641AA0:
	.8byte 0x3FD2000000000000
.global lbl_80641AA8
lbl_80641AA8:
	.skip 0x8
.global lbl_80641AB0
lbl_80641AB0:
	.ascii ">p"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641AB8
lbl_80641AB8:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641AC0
lbl_80641AC0:
	.ascii "@ "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641AC8
lbl_80641AC8:
	.8byte 0x3FC0000000000000
.global lbl_80641AD0
lbl_80641AD0:
	.8byte 0x3FE0000000000000
.global lbl_80641AD8
lbl_80641AD8:
	.8byte 0x3FF0000000000000
.global lbl_80641AE0
lbl_80641AE0:
	.8byte 0x4330000080000000
.global lbl_80641AE8
lbl_80641AE8:
	.8byte 0x3F8111111110F8A6
.global lbl_80641AF0
lbl_80641AF0:
	.8byte 0xBF2A01A019C161D5
.global lbl_80641AF8
lbl_80641AF8:
	.8byte 0x3EC71DE357B1FE7D
.global lbl_80641B00
lbl_80641B00:
	.8byte 0xBE5AE5E68A2B9CEB
.global lbl_80641B08
lbl_80641B08:
	.8byte 0x3DE5D93A5ACFD57C
.global lbl_80641B10
lbl_80641B10:
	.8byte 0xBFC5555555555549
.global lbl_80641B18
lbl_80641B18:
	.8byte 0x3FE0000000000000
.global lbl_80641B20
lbl_80641B20:
	.8byte 0x3FF0000000000000
.global lbl_80641B28
lbl_80641B28:
	.8byte 0xBFF0000000000000
.global lbl_80641B30
lbl_80641B30:
	.8byte 0x3FE921FB54442D18
.global lbl_80641B38
lbl_80641B38:
	.8byte 0x3C81A62633145C07
.global lbl_80641B40
lbl_80641B40:
	.skip 0x8
.global lbl_80641B48
lbl_80641B48:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641B50
lbl_80641B50:
	.8byte 0x4330000080000000
.global lbl_80641B58
lbl_80641B58:
	.8byte 0x7E37E43C8800759C
.global lbl_80641B60
lbl_80641B60:
	.8byte 0x3FF0000000000000
.global lbl_80641B68
lbl_80641B68:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641B70
lbl_80641B70:
	.8byte 0x3FF8000000000000
.global lbl_80641B78
lbl_80641B78:
	.8byte 0xBFF0000000000000
.global lbl_80641B80
lbl_80641B80:
	.skip 0x8
.global lbl_80641B88
lbl_80641B88:
	.8byte 0x7E37E43C8800759C
.global lbl_80641B90
lbl_80641B90:
	.skip 0x8
.global lbl_80641B98
lbl_80641B98:
	.ascii "CP"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641BA0
lbl_80641BA0:
	.skip 0x8
.global lbl_80641BA8
lbl_80641BA8:
	.ascii "CP"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641BB0
lbl_80641BB0:
	.8byte 0x01A56E1FC2F8F359
.global lbl_80641BB8
lbl_80641BB8:
	.8byte 0x7E37E43C8800759C
.global lbl_80641BC0
lbl_80641BC0:
	.8byte 0x3C90000000000000
.global lbl_80641BC8
lbl_80641BC8:
	.skip 0x8
.global lbl_80641BD0
lbl_80641BD0:
	.skip 0x8
.global lbl_80641BD8
lbl_80641BD8:
	.8byte 0x3FF0000000000000
