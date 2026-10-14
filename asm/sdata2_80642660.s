	.include "macros.inc"

	.section .sdata2, "wa"  # 0x80640600 - 0x80643020

# Continuation of sdata2_2.s after OSFatal.c's constants (0x80642660).
	.balign 8

.global lbl_80642660
lbl_80642660:
	.2byte 0x2ABE
.global lbl_80642662
lbl_80642662:
	.2byte 0x003D
.global lbl_80642664
lbl_80642664:
	.2byte 0x003D
.global lbl_80642666
lbl_80642666:
	.2byte 0x003D
.global lbl_80642668
lbl_80642668:
	.8byte 0x0000000400000000
.global lbl_80642670
lbl_80642670:
	.2byte 0x3F80, 0x0000
.global lbl_80642674
lbl_80642674:
	.skip 0x4
.global lbl_80642678
lbl_80642678:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064267C
lbl_8064267C:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_80642680
lbl_80642680:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642684
lbl_80642684:
	.2byte 0xBF80, 0x0000
.global lbl_80642688
lbl_80642688:
	.8byte 0x3C8EFA3500000000
.global lbl_80642690
lbl_80642690:
	.2byte 0x3F80, 0x0000
.global lbl_80642694
lbl_80642694:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642698
lbl_80642698:
	.skip 0x4
.global lbl_8064269C
lbl_8064269C:
	.2byte 0xBF80, 0x0000
.global lbl_806426A0
lbl_806426A0:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806426A4
lbl_806426A4:
	.2byte 0x3C8E, 0xFA35
.global lbl_806426A8
lbl_806426A8:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806426AC
lbl_806426AC:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_806426B0
lbl_806426B0:
	.skip 0x4
.global lbl_806426B4
lbl_806426B4:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806426B8
lbl_806426B8:
	.2byte 0x3F80, 0x0000
.global lbl_806426BC
lbl_806426BC:
	.skip 0x4
.global lbl_806426C0
lbl_806426C0:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806426C4
lbl_806426C4:
	.2byte 0x3F7F, 0xFF58
.global lbl_806426C8
lbl_806426C8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806426D0
lbl_806426D0:
	.4byte 0x805159B0
.global lbl_806426D4
lbl_806426D4:
	.2byte 0x4B80, 0x0000
.global lbl_806426D8
lbl_806426D8:
	.skip 0x4
.global lbl_806426DC
lbl_806426DC:
	.byte 0x40
.global lbl_806426DD
lbl_806426DD:
	.byte 0x40
.global lbl_806426DE
lbl_806426DE:
	.byte 0x40
.global lbl_806426DF
lbl_806426DF:
	.byte 0xFF
.global lbl_806426E0
lbl_806426E0:
	.byte 0xFF
.global lbl_806426E1
lbl_806426E1:
	.byte 0xFF
.global lbl_806426E2
lbl_806426E2:
	.byte 0xFF
.global lbl_806426E3
lbl_806426E3:
	.byte 0xFF
.global lbl_806426E4
lbl_806426E4:
	.2byte 0x3F80, 0x0000
.global lbl_806426E8
lbl_806426E8:
	.8byte 0x3DCCCCCD00000000
.global lbl_806426F0
lbl_806426F0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806426F8
lbl_806426F8:
	.8byte 0x4380000000000000
.global lbl_80642700
lbl_80642700:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642708
lbl_80642708:
	.skip 0x4
.global lbl_8064270C
lbl_8064270C:
	.2byte 0x42B4, 0x0000
.global lbl_80642710
lbl_80642710:
	.2byte 0x4049, 0x0FDB
.global lbl_80642714
lbl_80642714:
	.ascii "C4"
	.byte 0x00
	.byte 0x00
.global lbl_80642718
lbl_80642718:
	.2byte 0xC47A, 0x0000
.global lbl_8064271C
lbl_8064271C:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
.global lbl_80642720
lbl_80642720:
	.2byte 0x3F80, 0x0000
.global lbl_80642724
lbl_80642724:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642728
lbl_80642728:
	.2byte 0xC080, 0x0000
.global lbl_8064272C
lbl_8064272C:
	.2byte 0x4080, 0x0000
.global lbl_80642730
lbl_80642730:
	.2byte 0xC000, 0x0000
.global lbl_80642734
lbl_80642734:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642738
lbl_80642738:
	.8byte 0xDD5E0B6B00000000
.global lbl_80642740
lbl_80642740:
	.8byte 0x4180000000000000
.global lbl_80642748
lbl_80642748:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642750
lbl_80642750:
	.2byte 0xC080, 0x0000
.global lbl_80642754
lbl_80642754:
	.2byte 0x407F, 0x5C29
.global lbl_80642758
lbl_80642758:
	.2byte 0x4080, 0x0000
.global lbl_8064275C
lbl_8064275C:
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642760
lbl_80642760:
	.skip 0x4
.global lbl_80642764
lbl_80642764:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80642768
lbl_80642768:
	.2byte 0x4480, 0x0000
.global lbl_8064276C
lbl_8064276C:
	.2byte 0x3A80, 0x0000
.global lbl_80642770
lbl_80642770:
	.skip 0x8
.global lbl_80642778
lbl_80642778:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642780
lbl_80642780:
	.skip 0x4
.global lbl_80642784
lbl_80642784:
	.2byte 0x3F80, 0x0000
.global lbl_80642788
lbl_80642788:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642790
lbl_80642790:
	.8byte 0x3FF0000000000000
.global lbl_80642798
lbl_80642798:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806427A0
lbl_806427A0:
	.8byte 0x3FE0000000000000
.global lbl_806427A8
lbl_806427A8:
	.8byte 0x4B00001E00000000
.global lbl_806427B0
lbl_806427B0:
	.8byte 0x4330000080000000
.global lbl_806427B8
lbl_806427B8:
	.skip 0x8
.global lbl_806427C0
lbl_806427C0:
	.2byte 0x3FDD, 0xB3D0
.global lbl_806427C4
lbl_806427C4:
	.2byte 0x4380, 0x0000
.global lbl_806427C8
lbl_806427C8:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806427D0
lbl_806427D0:
	.2byte 0x3F80, 0x0000
.global lbl_806427D4
lbl_806427D4:
	.2byte 0x4049, 0x0FDB
.global lbl_806427D8
lbl_806427D8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806427DC
lbl_806427DC:
	.skip 0x4
.global lbl_806427E0
lbl_806427E0:
	.8byte 0xBF80000000000000
.global lbl_806427E8
lbl_806427E8:
	.8byte 0x4330000080000000
.global lbl_806427F0
lbl_806427F0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806427F8
lbl_806427F8:
	.2byte 0x40C9, 0x0FDB
.global lbl_806427FC
lbl_806427FC:
	.2byte 0x3F13, 0xCD3A
.global lbl_80642800
lbl_80642800:
	.skip 0x4
.global lbl_80642804
lbl_80642804:
	.2byte 0x3F80, 0x0000
.global lbl_80642808
lbl_80642808:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064280C
lbl_8064280C:
	.2byte 0x43AB, 0x0000
.global lbl_80642810
lbl_80642810:
	.byte 0xFF
.global lbl_80642811
lbl_80642811:
	.byte 0xFF
.global lbl_80642812
lbl_80642812:
	.byte 0xFF
.global lbl_80642813
lbl_80642813:
	.skip 0x5
.global lbl_80642818
lbl_80642818:
	.2byte 0x4780, 0x0000
.global lbl_8064281C
lbl_8064281C:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642820
lbl_80642820:
	.2byte 0x40C9, 0x0FDB
.global lbl_80642824
lbl_80642824:
	.2byte 0x46FA, 0x0000
.global lbl_80642828
lbl_80642828:
	.2byte 0x3F80, 0x0000
.global lbl_8064282C
lbl_8064282C:
	.ascii "G"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642830
lbl_80642830:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642838
lbl_80642838:
	.skip 0x4
.global lbl_8064283C
lbl_8064283C:
	.2byte 0x3F80, 0x0000
.global lbl_80642840
lbl_80642840:
	.skip 0x4
.global lbl_80642844
lbl_80642844:
	.2byte 0x3F80, 0x0000
.global lbl_80642848
lbl_80642848:
	.2byte 0x46FA, 0x0000
.global lbl_8064284C
lbl_8064284C:
	.skip 0x4
.global lbl_80642850
lbl_80642850:
	.2byte 0x3F80, 0x0000
.global lbl_80642854
lbl_80642854:
	.2byte 0x3F19, 0x999A
.global lbl_80642858
lbl_80642858:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642860
lbl_80642860:
	.8byte 0x4330000080000000
.global lbl_80642868
lbl_80642868:
	.8byte 0xC040000000000000
.global lbl_80642870
lbl_80642870:
	.ascii "@$"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642878
lbl_80642878:
	.ascii "?s33"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642880
lbl_80642880:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642888
lbl_80642888:
	.2byte 0x46FA, 0x0000
.global lbl_8064288C
lbl_8064288C:
	.skip 0x4
.global lbl_80642890
lbl_80642890:
	.2byte 0x3F80, 0x0000
.global lbl_80642894
lbl_80642894:
	.2byte 0x3F19, 0x999A
.global lbl_80642898
lbl_80642898:
	.8byte 0x3EAAAA9F00000000
.global lbl_806428A0
lbl_806428A0:
	.8byte 0x4330000080000000
.global lbl_806428A8
lbl_806428A8:
	.8byte 0xC040000000000000
.global lbl_806428B0
lbl_806428B0:
	.ascii "@$"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806428B8
lbl_806428B8:
	.ascii "?s33"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806428C0
lbl_806428C0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806428C8
lbl_806428C8:
	.ascii "C"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806428CC
lbl_806428CC:
	.2byte 0x42C8, 0x0000
.global lbl_806428D0
lbl_806428D0:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806428D8
lbl_806428D8:
	.skip 0x4
.global lbl_806428DC
lbl_806428DC:
	.2byte 0x3F80, 0x0000
.global lbl_806428E0
lbl_806428E0:
	.2byte 0x46FA, 0x0000
.global lbl_806428E4
lbl_806428E4:
	.skip 0x4
.global lbl_806428E8
lbl_806428E8:
	.2byte 0x3F80, 0x0000
.global lbl_806428EC
lbl_806428EC:
	.2byte 0x3F19, 0x999A
.global lbl_806428F0
lbl_806428F0:
	.8byte 0x4330000080000000
.global lbl_806428F8
lbl_806428F8:
	.2byte 0xBEA8, 0xF5C3
.global lbl_806428FC
lbl_806428FC:
	.2byte 0x3EA8, 0xF5C3
.global lbl_80642900
lbl_80642900:
	.8byte 0xC040000000000000
.global lbl_80642908
lbl_80642908:
	.ascii "@$"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642910
lbl_80642910:
	.ascii "?s33"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642918
lbl_80642918:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642920
lbl_80642920:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
.global lbl_80642924
lbl_80642924:
	.skip 0x4
.global lbl_80642928
lbl_80642928:
	.8byte 0x3F80000000000000
.global lbl_80642930
lbl_80642930:
	.ascii "C0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642938
lbl_80642938:
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064293C
lbl_8064293C:
	.skip 0x4
.global lbl_80642940
lbl_80642940:
	.8byte 0x4330000080000000
.global lbl_80642948
lbl_80642948:
	.2byte 0x3DCC, 0xCCCD
.global lbl_8064294C
lbl_8064294C:
	.ascii "BH"
	.byte 0x00
	.byte 0x00
.global lbl_80642950
lbl_80642950:
	.2byte 0x3F80, 0x0000
.global lbl_80642954
lbl_80642954:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80642958
lbl_80642958:
	.2byte 0x4780, 0x0000
.global lbl_8064295C
lbl_8064295C:
	.2byte 0x4380, 0x0000
.global lbl_80642960
lbl_80642960:
	.2byte 0x46FA, 0x0000
.global lbl_80642964
lbl_80642964:
	.2byte 0x3B80, 0x0000
.global lbl_80642968
lbl_80642968:
	.8byte 0x802976F880297708
.global lbl_80642970
lbl_80642970:
	.8byte 0x8029771080297720
