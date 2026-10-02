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
	.float 4.0, 0.0
.global lbl_80640620
lbl_80640620:
	.float 1.0
.global lbl_80640624
lbl_80640624:
	.skip 0x4
.global lbl_80640628
lbl_80640628:
	.float 1.0
.global lbl_8064062C
lbl_8064062C:
	.float 400.0
.global lbl_80640630
lbl_80640630:
	.skip 0x4
.global lbl_80640634
lbl_80640634:
	.float 500.0
.global lbl_80640638
lbl_80640638:
	.ascii "Cd"
	.byte 0x00
	.byte 0x00
.global lbl_8064063C
lbl_8064063C:
	.float -228.0
.global lbl_80640640
lbl_80640640:
	.float -304.0
.global lbl_80640644
lbl_80640644:
	.float 304.0
.global lbl_80640648
lbl_80640648:
	.incbin "baserom.dol", 0x472668, 0x1
.global lbl_80640649
lbl_80640649:
	.incbin "baserom.dol", 0x472669, 0x1
.global lbl_8064064A
lbl_8064064A:
	.incbin "baserom.dol", 0x47266A, 0x2
.global lbl_8064064C
lbl_8064064C:
	.float 1.2999999523162842
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
	.float 255.89999389648438
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
	.float 1.0, 0.0
.global lbl_80640678
lbl_80640678:
	.float 1.0
.global lbl_8064067C
lbl_8064067C:
	.float 0.0010000000474974513
.global lbl_80640680
lbl_80640680:
	.float 0.8999999761581421
.global lbl_80640684
lbl_80640684:
	.float 9.999999747378752e-05
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
	.float 600.0
.global lbl_80640694
lbl_80640694:
	.float 0.10000000149011612
.global lbl_80640698
lbl_80640698:
	.float 1.0
.global lbl_8064069C
lbl_8064069C:
	.float 0.20000000298023224
.global lbl_806406A0
lbl_806406A0:
	.float 100.0, 0.0
.global lbl_806406A8
lbl_806406A8:
	.float 176.0, -0.0
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
	.float 1.0010000467300415
.global lbl_806406C4
lbl_806406C4:
	.float 0.800000011920929
.global lbl_806406C8
lbl_806406C8:
	.float 0.4000000059604645
.global lbl_806406CC
lbl_806406CC:
	.float 0.05000000074505806
.global lbl_806406D0
lbl_806406D0:
	.float 0.25
.global lbl_806406D4
lbl_806406D4:
	.float 0.30000001192092896
.global lbl_806406D8
lbl_806406D8:
	.float 0.009999999776482582
.global lbl_806406DC
lbl_806406DC:
	.float 0.15000000596046448
.global lbl_806406E0
lbl_806406E0:
	.float 0.019999999552965164, 0.0
.global lbl_806406E8
lbl_806406E8:
	.skip 0x4
.global lbl_806406EC
lbl_806406EC:
	.float 1.0
.global lbl_806406F0
lbl_806406F0:
	.float 0.01745329238474369, 0.0
.global lbl_806406F8
lbl_806406F8:
	.float 176.0, -0.0
.global lbl_80640700
lbl_80640700:
	.float 0.01745329238474369
.global lbl_80640704
lbl_80640704:
	.float 57.295780181884766
.global lbl_80640708
lbl_80640708:
	.skip 0x4
.global lbl_8064070C
lbl_8064070C:
	.float 1.0
.global lbl_80640710
lbl_80640710:
	.float 176.0, -0.0
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
	.float 0.01745329238474369, 0.0
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
	.float 0.01745329238474369
.global lbl_8064073C
lbl_8064073C:
	.float 57.295780181884766
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
	.float 0.01745329238474369
.global lbl_80640758
lbl_80640758:
	.float 1.0
.global lbl_8064075C
lbl_8064075C:
	.float 1.399999976158142
.global lbl_80640760
lbl_80640760:
	.float 30.0, 0.0
.global lbl_80640768
lbl_80640768:
	.float 176.0, -0.0
.global lbl_80640770
lbl_80640770:
	.float 176.0, -0.0
.global lbl_80640778
lbl_80640778:
	.float 176.0, -0.0
.global lbl_80640780
lbl_80640780:
	.float 176.0, -0.0
.global lbl_80640788
lbl_80640788:
	.float 0.01745329238474369
.global lbl_8064078C
lbl_8064078C:
	.float 9.999999747378752e-06
.global lbl_80640790
lbl_80640790:
	.float -9.999999747378752e-06
.global lbl_80640794
lbl_80640794:
	.skip 0x4
.global lbl_80640798
lbl_80640798:
	.float 1.0, 0.0
.global lbl_806407A0
lbl_806407A0:
	.float 176.0, -0.0
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
	.float 176.0, -0.0
.global lbl_806407B8
lbl_806407B8:
	.float 0.01745329238474369, 0.0
.global lbl_806407C0
lbl_806407C0:
	.float 176.0, -0.0
.global lbl_806407C8
lbl_806407C8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806407CC
lbl_806407CC:
	.float 5.0
.global lbl_806407D0
lbl_806407D0:
	.float 20.0
.global lbl_806407D4
lbl_806407D4:
	.float 35.0
.global lbl_806407D8
lbl_806407D8:
	.float 1.2799999713897705
.global lbl_806407DC
lbl_806407DC:
	.float 0.10000000149011612
.global lbl_806407E0
lbl_806407E0:
	.float 100000.0
.global lbl_806407E4
lbl_806407E4:
	.skip 0x4
.global lbl_806407E8
lbl_806407E8:
	.float 1.0
.global lbl_806407EC
lbl_806407EC:
	.float -1.0
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
	.float 4.0
.global lbl_8064080C
lbl_8064080C:
	.float 9.999999747378752e-06
.global lbl_80640810
lbl_80640810:
	.float -9.999999747378752e-06, 0.0
.global lbl_80640818
lbl_80640818:
	.skip 0x8
.global lbl_80640820
lbl_80640820:
	.skip 0x4
.global lbl_80640824
lbl_80640824:
	.incbin "baserom.dol", 0x472844, 0x4
.global lbl_80640828
lbl_80640828:
	.incbin "baserom.dol", 0x472848, 0x4
.global lbl_8064082C
lbl_8064082C:
	.float 65536.0
.global lbl_80640830
lbl_80640830:
	.float 1.0
.global lbl_80640834
lbl_80640834:
	.ascii "C"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640838
lbl_80640838:
	.float 255.0
.global lbl_8064083C
lbl_8064083C:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640840
lbl_80640840:
	.float 0.009999999776482582
.global lbl_80640844
lbl_80640844:
	.float -1.0
.global lbl_80640848
lbl_80640848:
	.float 3.1415927410125732
.global lbl_8064084C
lbl_8064084C:
	.float -10.0
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
	.float 20.0
.global lbl_80640860
lbl_80640860:
	.float 0.25
.global lbl_80640864
lbl_80640864:
	.float 0.20000000298023224
.global lbl_80640868
lbl_80640868:
	.float 176.0, -0.0
.global lbl_80640870
lbl_80640870:
	.float 9.999999747378752e-06
.global lbl_80640874
lbl_80640874:
	.float -9.999999747378752e-06
.global lbl_80640878
lbl_80640878:
	.float 6.2831854820251465
.global lbl_8064087C
lbl_8064087C:
	.float 1.5707963705062866
.global lbl_80640880
lbl_80640880:
	.float 4.71238899230957
.global lbl_80640884
lbl_80640884:
	.float 0.5235987901687622
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
	.float 1.333299994468689
.global lbl_80640894
lbl_80640894:
	.ascii "@P"
	.byte 0x00
	.byte 0x00
.global lbl_80640898
lbl_80640898:
	.float 0.10000000149011612
.global lbl_8064089C
lbl_8064089C:
	.float 0.49998998641967773
.global lbl_806408A0
lbl_806408A0:
	.float -0.49998998641967773
.global lbl_806408A4
lbl_806408A4:
	.float -1.5707963705062866
.global lbl_806408A8
lbl_806408A8:
	.float 4.0
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
	.float 0.25
.global lbl_806408B8
lbl_806408B8:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806408BC
lbl_806408BC:
	.float 1.0
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
	.float 35.0
.global lbl_806408CC
lbl_806408CC:
	.float 5.0
.global lbl_806408D0
lbl_806408D0:
	.float 20.0
.global lbl_806408D4
lbl_806408D4:
	.float 0.8999999761581421
.global lbl_806408D8
lbl_806408D8:
	.float -0.8999999761581421
.global lbl_806408DC
lbl_806408DC:
	.float 1.5707963705062866
.global lbl_806408E0
lbl_806408E0:
	.float -1.0
.global lbl_806408E4
lbl_806408E4:
	.float 4.71238899230957
.global lbl_806408E8
lbl_806408E8:
	.float 0.9999899864196777
.global lbl_806408EC
lbl_806408EC:
	.float 6.2831854820251465
.global lbl_806408F0
lbl_806408F0:
	.float 1.2566370964050293
.global lbl_806408F4
lbl_806408F4:
	.float 5.026548385620117
.global lbl_806408F8
lbl_806408F8:
	.float 1.8849557638168335
.global lbl_806408FC
lbl_806408FC:
	.float 4.398229598999023
.global lbl_80640900
lbl_80640900:
	.float 6.0, 0.0
.global lbl_80640908
lbl_80640908:
	.float 1.6527162790298462, 2.0
.global lbl_80640910
lbl_80640910:
	.float 0.699999988079071
.global lbl_80640914
lbl_80640914:
	.ascii "A@"
	.byte 0x00
	.byte 0x00
.global lbl_80640918
lbl_80640918:
	.float 0.44999998807907104, 0.0
.global lbl_80640920
lbl_80640920:
	.float 1.5277162790298462, 2.0
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
	.float -0.1745329201221466
.global lbl_80640948
lbl_80640948:
	.float 176.0, -0.0
.global lbl_80640950
lbl_80640950:
	.float 9.999999747378752e-06
.global lbl_80640954
lbl_80640954:
	.float 1.7999999523162842
.global lbl_80640958
lbl_80640958:
	.float 0.009999999776482582
.global lbl_8064095C
lbl_8064095C:
	.float 0.01745329238474369
.global lbl_80640960
lbl_80640960:
	.float -0.10471975803375244
.global lbl_80640964
lbl_80640964:
	.float 0.3490658402442932
.global lbl_80640968
lbl_80640968:
	.float 0.8726646304130554
.global lbl_8064096C
lbl_8064096C:
	.float -9.999999747378752e-06
.global lbl_80640970
lbl_80640970:
	.float -50.0, 0.0
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
	.float 1.0
.global lbl_80640990
lbl_80640990:
	.ascii "?`"
	.byte 0x00
	.byte 0x00
.global lbl_80640994
lbl_80640994:
	.float 1.399999976158142
.global lbl_80640998
lbl_80640998:
	.float 1.7999999523162842
.global lbl_8064099C
lbl_8064099C:
	.float 2.4000000953674316
.global lbl_806409A0
lbl_806409A0:
	.float 70.0
.global lbl_806409A4
lbl_806409A4:
	.ascii "B "
	.byte 0x00
	.byte 0x00
.global lbl_806409A8
lbl_806409A8:
	.float 3.1415927410125732
.global lbl_806409AC
lbl_806409AC:
	.float 30.0
.global lbl_806409B0
lbl_806409B0:
	.float -15.0
.global lbl_806409B4
lbl_806409B4:
	.float 9.999999747378752e-06
.global lbl_806409B8
lbl_806409B8:
	.float -9.999999747378752e-06, 0.0
.global lbl_806409C0
lbl_806409C0:
	.skip 0x4
.global lbl_806409C4
lbl_806409C4:
	.incbin "baserom.dol", 0x4729E4, 0x4
.global lbl_806409C8
lbl_806409C8:
	.incbin "baserom.dol", 0x4729E8, 0x4
.global lbl_806409CC
lbl_806409CC:
	.float 0.4000000059604645
.global lbl_806409D0
lbl_806409D0:
	.skip 0x4
.global lbl_806409D4
lbl_806409D4:
	.incbin "baserom.dol", 0x4729F4, 0x4
.global lbl_806409D8
lbl_806409D8:
	.float 9.999999747378752e-06
.global lbl_806409DC
lbl_806409DC:
	.float -9.999999747378752e-06
.global lbl_806409E0
lbl_806409E0:
	.float 1.0, 0.0
.global lbl_806409E8
lbl_806409E8:
	.float 176.0, -0.0
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
	.float 255.0
.global lbl_80640A00
lbl_80640A00:
	.float 1.0
.global lbl_80640A04
lbl_80640A04:
	.float 3.1415927410125732
.global lbl_80640A08
lbl_80640A08:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640A0C
lbl_80640A0C:
	.float 65536.0
.global lbl_80640A10
lbl_80640A10:
	.float 6.2831854820251465
.global lbl_80640A14
lbl_80640A14:
	.float 1.0000000116860974e-07
.global lbl_80640A18
lbl_80640A18:
	.float -1.0000000116860974e-07
.global lbl_80640A1C
lbl_80640A1C:
	.float 0.8999999761581421
.global lbl_80640A20
lbl_80640A20:
	.float 9.999999747378752e-06
.global lbl_80640A24
lbl_80640A24:
	.float 0.0010000000474974513
.global lbl_80640A28
lbl_80640A28:
	.float 0.10000000149011612
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
	.float 9.999999747378752e-06
.global lbl_80640A38
lbl_80640A38:
	.float -9.999999747378752e-06
.global lbl_80640A3C
lbl_80640A3C:
	.float 0.009999999776482582
.global lbl_80640A40
lbl_80640A40:
	.float 1.0, 0.0
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
	.float 1.0
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
	.float 20.0
.global lbl_80640A70
lbl_80640A70:
	.float 255.0
.global lbl_80640A74
lbl_80640A74:
	.float 1.5707963705062866
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
	.float 9.999999747378752e-06
.global lbl_80640A84
lbl_80640A84:
	.float -9.999999747378752e-06
.global lbl_80640A88
lbl_80640A88:
	.skip 0x4
.global lbl_80640A8C
lbl_80640A8C:
	.float 1.0
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
	.float 176.0, -0.0
.global lbl_80640AA8
lbl_80640AA8:
	.float 1.5707963705062866
.global lbl_80640AAC
lbl_80640AAC:
	.float 0.009999999776482582
.global lbl_80640AB0
lbl_80640AB0:
	.skip 0x4
.global lbl_80640AB4
lbl_80640AB4:
	.float 0.10000000149011612
.global lbl_80640AB8
lbl_80640AB8:
	.float 255.0
.global lbl_80640ABC
lbl_80640ABC:
	.float 7.0
.global lbl_80640AC0
lbl_80640AC0:
	.float 176.0, -0.0
.global lbl_80640AC8
lbl_80640AC8:
	.ascii "A@"
	.byte 0x00
	.byte 0x00
.global lbl_80640ACC
lbl_80640ACC:
	.float 1.0
.global lbl_80640AD0
lbl_80640AD0:
	.float 320.0
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
	.float 480.0, 0.0
.global lbl_80640AE8
lbl_80640AE8:
	.skip 0x4
.global lbl_80640AEC
lbl_80640AEC:
	.float 1.0
.global lbl_80640AF0
lbl_80640AF0:
	.float 2.049999952316284, 4.17232506322307e-08
.global lbl_80640AF8
lbl_80640AF8:
	.float 3.1953125, 0.0
.global lbl_80640B00
lbl_80640B00:
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640B04
lbl_80640B04:
	.float 608.0
.global lbl_80640B08
lbl_80640B08:
	.float 448.0
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
	.float 480.0
.global lbl_80640B28
lbl_80640B28:
	.float 100000.0, 0.0
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
	.float 255.0
.global lbl_80640B3C
lbl_80640B3C:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_80640B40
lbl_80640B40:
	.float 120.0
.global lbl_80640B44
lbl_80640B44:
	.float 30.0
.global lbl_80640B48
lbl_80640B48:
	.float 9.999999747378752e-06
.global lbl_80640B4C
lbl_80640B4C:
	.float -9.999999747378752e-06
.global lbl_80640B50
lbl_80640B50:
	.float 0.30000001192092896
.global lbl_80640B54
lbl_80640B54:
	.float 0.800000011920929
.global lbl_80640B58
lbl_80640B58:
	.float 0.6000000238418579, 0.0
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
	.float 1.0
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
	.float 28.0
.global lbl_80640B78
lbl_80640B78:
	.ascii "B`"
	.byte 0x00
	.byte 0x00
.global lbl_80640B7C
lbl_80640B7C:
	.float 0.6000000238418579
.global lbl_80640B80
lbl_80640B80:
	.float 0.8500000238418579
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
	.float 480.0
.global lbl_80640B90
lbl_80640B90:
	.float 100000.0, 0.0
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
	.float -106.5
.global lbl_80640BA4
lbl_80640BA4:
	.float 746.5
.global lbl_80640BA8
lbl_80640BA8:
	.float 176.0, -0.0
.global lbl_80640BB0
lbl_80640BB0:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640BB4
lbl_80640BB4:
	.float 255.0
.global lbl_80640BB8
lbl_80640BB8:
	.float 20.0
.global lbl_80640BBC
lbl_80640BBC:
	.float 4.0
.global lbl_80640BC0
lbl_80640BC0:
	.skip 0x4
.global lbl_80640BC4
lbl_80640BC4:
	.float 1.0
.global lbl_80640BC8
lbl_80640BC8:
	.skip 0x4
.global lbl_80640BCC
lbl_80640BCC:
	.float 1.0
.global lbl_80640BD0
lbl_80640BD0:
	.float 0.20000000298023224
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
	.float 1.0
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
	.float 0.6000000238418579, 0.0
.global lbl_80640BF8
lbl_80640BF8:
	.skip 0x8
.global lbl_80640C00
lbl_80640C00:
	.float 2.3125, 0.0
.global lbl_80640C08
lbl_80640C08:
	.float -72.0, 0.0
.global lbl_80640C10
lbl_80640C10:
	.float 2.125, 0.0
.global lbl_80640C18
lbl_80640C18:
	.skip 0x4
.global lbl_80640C1C
lbl_80640C1C:
	.float -410.0
.global lbl_80640C20
lbl_80640C20:
	.float 1.0
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
	.float -77.0, 0.0
.global lbl_80640C38
lbl_80640C38:
	.float 2.375, 0.0
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
	.float 24.0
.global lbl_80640C4C
lbl_80640C4C:
	.float 20.0
.global lbl_80640C50
lbl_80640C50:
	.float -520.0
.global lbl_80640C54
lbl_80640C54:
	.float -438.0
.global lbl_80640C58
lbl_80640C58:
	.float -127.0
.global lbl_80640C5C
lbl_80640C5C:
	.float -30.0
.global lbl_80640C60
lbl_80640C60:
	.float 150.0, 0.0
.global lbl_80640C68
lbl_80640C68:
	.float 130.0
.global lbl_80640C6C
lbl_80640C6C:
	.float -110.0
.global lbl_80640C70
lbl_80640C70:
	.float -228.0
.global lbl_80640C74
lbl_80640C74:
	.skip 0x4
.global lbl_80640C78
lbl_80640C78:
	.float -60.0, 0.0
.global lbl_80640C80
lbl_80640C80:
	.float -60.0
.global lbl_80640C84
lbl_80640C84:
	.float 25.0
.global lbl_80640C88
lbl_80640C88:
	.skip 0x4
.global lbl_80640C8C
lbl_80640C8C:
	.float -50.0
.global lbl_80640C90
lbl_80640C90:
	.ascii "A"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640C94
lbl_80640C94:
	.float 1.0
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
	.float 2.375, 0.0
.global lbl_80640CB0
lbl_80640CB0:
	.float 28.0
.global lbl_80640CB4
lbl_80640CB4:
	.float 20.0
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
	.float 5.0
.global lbl_80640CC4
lbl_80640CC4:
	.float 64.0
.global lbl_80640CC8
lbl_80640CC8:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80640CCC
lbl_80640CCC:
	.float 4.5
.global lbl_80640CD0
lbl_80640CD0:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640CD4
lbl_80640CD4:
	.float 30.0
.global lbl_80640CD8
lbl_80640CD8:
	.float 1.0
.global lbl_80640CDC
lbl_80640CDC:
	.skip 0x4
.global lbl_80640CE0
lbl_80640CE0:
	.float 300.0
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
	.float 364.0
.global lbl_80640CF0
lbl_80640CF0:
	.ascii "Cj"
	.byte 0x00
	.byte 0x00
.global lbl_80640CF4
lbl_80640CF4:
	.float 148.0
.global lbl_80640CF8
lbl_80640CF8:
	.skip 0x4
.global lbl_80640CFC
lbl_80640CFC:
	.float 1.0
.global lbl_80640D00
lbl_80640D00:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640D04
lbl_80640D04:
	.float 30.0
.global lbl_80640D08
lbl_80640D08:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80640D0C
lbl_80640D0C:
	.float -10.0
.global lbl_80640D10
lbl_80640D10:
	.ascii "AP"
	.byte 0x00
	.byte 0x00
.global lbl_80640D14
lbl_80640D14:
	.float 16.0
.global lbl_80640D18
lbl_80640D18:
	.ascii "B "
	.byte 0x00
	.byte 0x00
.global lbl_80640D1C
lbl_80640D1C:
	.float 1.2799999713897705
.global lbl_80640D20
lbl_80640D20:
	.float 6.0, 0.0
.global lbl_80640D28
lbl_80640D28:
	.incbin "baserom.dol", 0x472D48, 0x8
.global lbl_80640D30
lbl_80640D30:
	.float -160.0
.global lbl_80640D34
lbl_80640D34:
	.float -80.0
.global lbl_80640D38
lbl_80640D38:
	.float 20.0
.global lbl_80640D3C
lbl_80640D3C:
	.float -20.0
.global lbl_80640D40
lbl_80640D40:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640D44
lbl_80640D44:
	.float -1.0
.global lbl_80640D48
lbl_80640D48:
	.float 0.6000000238418579
.global lbl_80640D4C
lbl_80640D4C:
	.float -3.5
.global lbl_80640D50
lbl_80640D50:
	.float 0.800000011920929
.global lbl_80640D54
lbl_80640D54:
	.ascii "@`"
	.byte 0x00
	.byte 0x00
.global lbl_80640D58
lbl_80640D58:
	.float -0.800000011920929
.global lbl_80640D5C
lbl_80640D5C:
	.float 120.0
.global lbl_80640D60
lbl_80640D60:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80640D64
lbl_80640D64:
	.float 312.0
.global lbl_80640D68
lbl_80640D68:
	.float 176.0, -0.0
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
	.float 1.0
.global lbl_80640D7C
lbl_80640D7C:
	.skip 0x4
.global lbl_80640D80
lbl_80640D80:
	.float 176.0, -0.0
.global lbl_80640D88
lbl_80640D88:
	.skip 0x4
.global lbl_80640D8C
lbl_80640D8C:
	.float 1.0
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
	.float 176.0, -0.0
.global lbl_80640DA0
lbl_80640DA0:
	.float 17.0
.global lbl_80640DA4
lbl_80640DA4:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640DA8
lbl_80640DA8:
	.float 5.0
.global lbl_80640DAC
lbl_80640DAC:
	.float 4.0
.global lbl_80640DB0
lbl_80640DB0:
	.float -100.0, 0.0
.global lbl_80640DB8
lbl_80640DB8:
	.float -18.0
.global lbl_80640DBC
lbl_80640DBC:
	.skip 0x4
.global lbl_80640DC0
lbl_80640DC0:
	.float 1.0
.global lbl_80640DC4
lbl_80640DC4:
	.float 5.5
.global lbl_80640DC8
lbl_80640DC8:
	.float 7.5
.global lbl_80640DCC
lbl_80640DCC:
	.float 2.517229502882207e-38, 2.524354896707238e-29
.global lbl_80640DD4
lbl_80640DD4:
	.float -150.0
.global lbl_80640DD8
lbl_80640DD8:
	.ascii "CH"
	.byte 0x00
	.byte 0x00
.global lbl_80640DDC
lbl_80640DDC:
	.float -84.0
.global lbl_80640DE0
lbl_80640DE0:
	.float 96.0
.global lbl_80640DE4
lbl_80640DE4:
	.float -95.0
.global lbl_80640DE8
lbl_80640DE8:
	.float -68.0
.global lbl_80640DEC
lbl_80640DEC:
	.float 144.0
.global lbl_80640DF0
lbl_80640DF0:
	.float -100.0
.global lbl_80640DF4
lbl_80640DF4:
	.float 64.0
.global lbl_80640DF8
lbl_80640DF8:
	.float 1280.0, 0.0
.global lbl_80640E00
lbl_80640E00:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640E04
lbl_80640E04:
	.float 30.0
.global lbl_80640E08
lbl_80640E08:
	.float -20.0
.global lbl_80640E0C
lbl_80640E0C:
	.float 1.0
.global lbl_80640E10
lbl_80640E10:
	.float 20.0, 0.0
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
	.float 30.0
.global lbl_80640E24
lbl_80640E24:
	.float -30.0
.global lbl_80640E28
lbl_80640E28:
	.float -10.0
.global lbl_80640E2C
lbl_80640E2C:
	.float 1.0
.global lbl_80640E30
lbl_80640E30:
	.float 150.0
.global lbl_80640E34
lbl_80640E34:
	.float 320.0
.global lbl_80640E38
lbl_80640E38:
	.float 270.0
.global lbl_80640E3C
lbl_80640E3C:
	.float 400.0
.global lbl_80640E40
lbl_80640E40:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80640E44
lbl_80640E44:
	.float 65536.0
.global lbl_80640E48
lbl_80640E48:
	.float 6.2831854820251465
.global lbl_80640E4C
lbl_80640E4C:
	.float 80.0
.global lbl_80640E50
lbl_80640E50:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640E54
lbl_80640E54:
	.float 20.0
.global lbl_80640E58
lbl_80640E58:
	.float 120.0, 0.0
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
	.float 0.00039999998989515007
.global lbl_80640E6C
lbl_80640E6C:
	.float -6.2831854820251465
.global lbl_80640E70
lbl_80640E70:
	.float 0.800000011920929
.global lbl_80640E74
lbl_80640E74:
	.float 4.0
.global lbl_80640E78
lbl_80640E78:
	.float 9.999999747378752e-06
.global lbl_80640E7C
lbl_80640E7C:
	.float -9.999999747378752e-06
.global lbl_80640E80
lbl_80640E80:
	.float 57.295780181884766
.global lbl_80640E84
lbl_80640E84:
	.ascii "C4"
	.byte 0x00
	.byte 0x00
.global lbl_80640E88
lbl_80640E88:
	.float 360.0, 0.0
.global lbl_80640E90
lbl_80640E90:
	.float 176.0, -0.0
.global lbl_80640E98
lbl_80640E98:
	.float 312.0
.global lbl_80640E9C
lbl_80640E9C:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640EA0
lbl_80640EA0:
	.float 30.0
.global lbl_80640EA4
lbl_80640EA4:
	.float 1.0
.global lbl_80640EA8
lbl_80640EA8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80640EAC
lbl_80640EAC:
	.float 120.0
.global lbl_80640EB0
lbl_80640EB0:
	.float 5.0
.global lbl_80640EB4
lbl_80640EB4:
	.float 4.0
.global lbl_80640EB8
lbl_80640EB8:
	.float 1.875, 0.0
.global lbl_80640EC0
lbl_80640EC0:
	.float 25.0, 0.0
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
	.float -52.0
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
	.float 1.0, 0.0
.global lbl_80640EE8
lbl_80640EE8:
	.float 1.625, 0.0
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
	.float 0.25
.global lbl_80640EFC
lbl_80640EFC:
	.float 480.0
.global lbl_80640F00
lbl_80640F00:
	.ascii "Dp"
	.byte 0x00
	.byte 0x00
.global lbl_80640F04
lbl_80640F04:
	.float 0.01745329238474369
.global lbl_80640F08
lbl_80640F08:
	.float 90.0
.global lbl_80640F0C
lbl_80640F0C:
	.float 5.0
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
	.float 176.0, -0.0
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
	.float 9.0
.global lbl_80640F30
lbl_80640F30:
	.float 0.009999999776482582
.global lbl_80640F34
lbl_80640F34:
	.float 100.0
.global lbl_80640F38
lbl_80640F38:
	.float 1.0
.global lbl_80640F3C
lbl_80640F3C:
	.float 480.0
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
	.incbin "baserom.dol", 0x472F70, 0x2
.global lbl_80640F52
lbl_80640F52:
	.incbin "baserom.dol", 0x472F72, 0x2
.global lbl_80640F54
lbl_80640F54:
	.incbin "baserom.dol", 0x472F74, 0x2
.global lbl_80640F56
lbl_80640F56:
	.incbin "baserom.dol", 0x472F76, 0x2
.global lbl_80640F58
lbl_80640F58:
	.incbin "baserom.dol", 0x472F78, 0x2
.global lbl_80640F5A
lbl_80640F5A:
	.incbin "baserom.dol", 0x472F7A, 0x2
.global lbl_80640F5C
lbl_80640F5C:
	.incbin "baserom.dol", 0x472F7C, 0x2
.global lbl_80640F5E
lbl_80640F5E:
	.incbin "baserom.dol", 0x472F7E, 0x2
.global lbl_80640F60
lbl_80640F60:
	.float -45.0
.global lbl_80640F64
lbl_80640F64:
	.float 4.0
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
	.float 11.489999771118164
.global lbl_80640F80
lbl_80640F80:
	.float 8.789999961853027
.global lbl_80640F84
lbl_80640F84:
	.float 7.619999885559082
.global lbl_80640F88
lbl_80640F88:
	.float 9.479999542236328
.global lbl_80640F8C
lbl_80640F8C:
	.float 8.039999961853027
.global lbl_80640F90
lbl_80640F90:
	.float 75.8499984741211
.global lbl_80640F94
lbl_80640F94:
	.float 25.0
.global lbl_80640F98
lbl_80640F98:
	.float 1.0
.global lbl_80640F9C
lbl_80640F9C:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
.global lbl_80640FA0
lbl_80640FA0:
	.float 500.0
.global lbl_80640FA4
lbl_80640FA4:
	.float 0.30000001192092896
.global lbl_80640FA8
lbl_80640FA8:
	.float 1.649999976158142, 4.17232506322307e-08
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
	.float 2.5941998958587646
.global lbl_80640FBC
lbl_80640FBC:
	.float -50.0
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
	.float 5.0
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
	.float 100.0
.global lbl_80640FD8
lbl_80640FD8:
	.float 2.125, 0.0
.global lbl_80640FE0
lbl_80640FE0:
	.float 37.0
.global lbl_80640FE4
lbl_80640FE4:
	.ascii "Cv"
	.byte 0x00
	.byte 0x00
.global lbl_80640FE8
lbl_80640FE8:
	.float 104.0
.global lbl_80640FEC
lbl_80640FEC:
	.float 375.0
.global lbl_80640FF0
lbl_80640FF0:
	.float 0.05000000074505806
.global lbl_80640FF4
lbl_80640FF4:
	.float 30.0
.global lbl_80640FF8
lbl_80640FF8:
	.float 0.15000000596046448
.global lbl_80640FFC
lbl_80640FFC:
	.float -0.15000000596046448
.global lbl_80641000
lbl_80641000:
	.float 0.8500000238418579
.global lbl_80641004
lbl_80641004:
	.float 0.10000000149011612
.global lbl_80641008
lbl_80641008:
	.float -0.8500000238418579
.global lbl_8064100C
lbl_8064100C:
	.float 0.699999988079071
.global lbl_80641010
lbl_80641010:
	.float 176.0, -0.0
.global lbl_80641018
lbl_80641018:
	.float 320.0
.global lbl_8064101C
lbl_8064101C:
	.float 1.0625
.global lbl_80641020
lbl_80641020:
	.float 1.334375023841858
.global lbl_80641024
lbl_80641024:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_80641028
lbl_80641028:
	.float 12.35789966583252
.global lbl_8064102C
lbl_8064102C:
	.float 20.0
.global lbl_80641030
lbl_80641030:
	.float 1.2799999713897705
.global lbl_80641034
lbl_80641034:
	.float 24.0
.global lbl_80641038
lbl_80641038:
	.float 1.0, 0.0
.global lbl_80641040
lbl_80641040:
	.float 1.75, 0.0
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
	.float 1.625, 0.0
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
	.float 90.0
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
	.float 0.01745329238474369
.global lbl_80641074
lbl_80641074:
	.ascii "Cp"
	.byte 0x00
	.byte 0x00
.global lbl_80641078
lbl_80641078:
	.float 0.25
.global lbl_8064107C
lbl_8064107C:
	.float 480.0
.global lbl_80641080
lbl_80641080:
	.float 21.0
.global lbl_80641084
lbl_80641084:
	.float 0.7599999904632568
.global lbl_80641088
lbl_80641088:
	.float 100000.0
.global lbl_8064108C
lbl_8064108C:
	.float 320.0
.global lbl_80641090
lbl_80641090:
	.float 1.0625
.global lbl_80641094
lbl_80641094:
	.float 1.334375023841858
.global lbl_80641098
lbl_80641098:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_8064109C
lbl_8064109C:
	.float 4.0
.global lbl_806410A0
lbl_806410A0:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806410A4
lbl_806410A4:
	.float 0.7894737124443054
.global lbl_806410A8
lbl_806410A8:
	.float 360.0
.global lbl_806410AC
lbl_806410AC:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
.global lbl_806410B0
lbl_806410B0:
	.float 255.0
.global lbl_806410B4
lbl_806410B4:
	.float 0.6000000238418579
.global lbl_806410B8
lbl_806410B8:
	.float 0.33500000834465027
.global lbl_806410BC
lbl_806410BC:
	.float 0.6399999856948853
.global lbl_806410C0
lbl_806410C0:
	.float 0.36000001430511475
.global lbl_806410C4
lbl_806410C4:
	.float 5.0
.global lbl_806410C8
lbl_806410C8:
	.float 1.0
.global lbl_806410CC
lbl_806410CC:
	.skip 0x4
.global lbl_806410D0
lbl_806410D0:
	.skip 0x1
.global lbl_806410D1
lbl_806410D1:
	.incbin "baserom.dol", 0x4730F1, 0x1
.global lbl_806410D2
lbl_806410D2:
	.incbin "baserom.dol", 0x4730F2, 0x1
.global lbl_806410D3
lbl_806410D3:
	.incbin "baserom.dol", 0x4730F3, 0x1
.global lbl_806410D4
lbl_806410D4:
	.incbin "baserom.dol", 0x4730F4, 0x1
.global lbl_806410D5
lbl_806410D5:
	.incbin "baserom.dol", 0x4730F5, 0x1
.global lbl_806410D6
lbl_806410D6:
	.incbin "baserom.dol", 0x4730F6, 0x1
.global lbl_806410D7
lbl_806410D7:
	.incbin "baserom.dol", 0x4730F7, 0x1
.global lbl_806410D8
lbl_806410D8:
	.incbin "baserom.dol", 0x4730F8, 0x1
.global lbl_806410D9
lbl_806410D9:
	.incbin "baserom.dol", 0x4730F9, 0x1
.global lbl_806410DA
lbl_806410DA:
	.incbin "baserom.dol", 0x4730FA, 0x1
.global lbl_806410DB
lbl_806410DB:
	.incbin "baserom.dol", 0x4730FB, 0x5
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
	.float 0.800000011920929
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
	.float 1.75, 0.0
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
	.float 9.999999747378752e-06
.global lbl_8064110C
lbl_8064110C:
	.float -9.999999747378752e-06
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
	.float 150.0
.global lbl_8064111C
lbl_8064111C:
	.float 491.0
.global lbl_80641120
lbl_80641120:
	.float 134.0
.global lbl_80641124
lbl_80641124:
	.float 347.0
.global lbl_80641128
lbl_80641128:
	.float -1000.0
.global lbl_8064112C
lbl_8064112C:
	.float -900.0
.global lbl_80641130
lbl_80641130:
	.skip 0x4
.global lbl_80641134
lbl_80641134:
	.float 1.0
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
	.float 9.0
.global lbl_80641144
lbl_80641144:
	.float 18.0
.global lbl_80641148
lbl_80641148:
	.ascii "D "
	.byte 0x00
	.byte 0x00
.global lbl_8064114C
lbl_8064114C:
	.float 480.0
.global lbl_80641150
lbl_80641150:
	.float 100000.0
.global lbl_80641154
lbl_80641154:
	.float 320.0
.global lbl_80641158
lbl_80641158:
	.float 1.0625
.global lbl_8064115C
lbl_8064115C:
	.float 1.334375023841858
.global lbl_80641160
lbl_80641160:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_80641164
lbl_80641164:
	.float 4.0
.global lbl_80641168
lbl_80641168:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8064116C
lbl_8064116C:
	.float 0.7894737124443054
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
	.incbin "baserom.dol", 0x473198, 0x1
.global lbl_80641179
lbl_80641179:
	.incbin "baserom.dol", 0x473199, 0x1
.global lbl_8064117A
lbl_8064117A:
	.incbin "baserom.dol", 0x47319A, 0x1
.global lbl_8064117B
lbl_8064117B:
	.incbin "baserom.dol", 0x47319B, 0x1
.global lbl_8064117C
lbl_8064117C:
	.incbin "baserom.dol", 0x47319C, 0x1
.global lbl_8064117D
lbl_8064117D:
	.ascii " "
	.byte 0x00
	.byte 0x00
.global lbl_80641180
lbl_80641180:
	.float 1.0, 0.0
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
	.float -640.0
.global lbl_806411A4
lbl_806411A4:
	.float 0.01745329238474369
.global lbl_806411A8
lbl_806411A8:
	.float 90.0
.global lbl_806411AC
lbl_806411AC:
	.ascii "D "
	.byte 0x00
	.byte 0x00
.global lbl_806411B0
lbl_806411B0:
	.float -1.0
.global lbl_806411B4
lbl_806411B4:
	.float -480.0
.global lbl_806411B8
lbl_806411B8:
	.float 480.0
.global lbl_806411BC
lbl_806411BC:
	.float 0.30000001192092896
.global lbl_806411C0
lbl_806411C0:
	.float 0.9318181872367859
.global lbl_806411C4
lbl_806411C4:
	.float 0.9444444179534912
.global lbl_806411C8
lbl_806411C8:
	.float 360.0
.global lbl_806411CC
lbl_806411CC:
	.ascii "Dz"
	.byte 0x00
	.byte 0x00
.global lbl_806411D0
lbl_806411D0:
	.float 255.0
.global lbl_806411D4
lbl_806411D4:
	.float 0.6499999761581421
.global lbl_806411D8
lbl_806411D8:
	.float 0.3499999940395355
.global lbl_806411DC
lbl_806411DC:
	.float 0.32499998807907104
.global lbl_806411E0
lbl_806411E0:
	.float 0.17499999701976776
.global lbl_806411E4
lbl_806411E4:
	.float 4.0
.global lbl_806411E8
lbl_806411E8:
	.float 5.0
.global lbl_806411EC
lbl_806411EC:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_806411F0
lbl_806411F0:
	.incbin "baserom.dol", 0x473210, 0x1
.global lbl_806411F1
lbl_806411F1:
	.incbin "baserom.dol", 0x473211, 0x1
.global lbl_806411F2
lbl_806411F2:
	.incbin "baserom.dol", 0x473212, 0x1
.global lbl_806411F3
lbl_806411F3:
	.incbin "baserom.dol", 0x473213, 0x1
.global lbl_806411F4
lbl_806411F4:
	.incbin "baserom.dol", 0x473214, 0x1
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
	.incbin "baserom.dol", 0x473219, 0x1
.global lbl_806411FA
lbl_806411FA:
	.incbin "baserom.dol", 0x47321A, 0x6
.global lbl_80641200
lbl_80641200:
	.float 1.75, 0.0
.global lbl_80641208
lbl_80641208:
	.float 1.0
.global lbl_8064120C
lbl_8064120C:
	.skip 0x4
.global lbl_80641210
lbl_80641210:
	.float 20.0
.global lbl_80641214
lbl_80641214:
	.float 320.0
.global lbl_80641218
lbl_80641218:
	.float 1.0625
.global lbl_8064121C
lbl_8064121C:
	.float 1.334375023841858
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
	.float -5.5
.global lbl_8064123C
lbl_8064123C:
	.float -3.0
.global lbl_80641240
lbl_80641240:
	.float 7.0
.global lbl_80641244
lbl_80641244:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80641248
lbl_80641248:
	.float 255.0
.global lbl_8064124C
lbl_8064124C:
	.float 0.9350000023841858
.global lbl_80641250
lbl_80641250:
	.float 0.3349999785423279
.global lbl_80641254
lbl_80641254:
	.float 500.0
.global lbl_80641258
lbl_80641258:
	.float 0.36000001430511475
.global lbl_8064125C
lbl_8064125C:
	.float 0.6000000238418579
.global lbl_80641260
lbl_80641260:
	.float 0.6399999856948853
.global lbl_80641264
lbl_80641264:
	.float 7.5
.global lbl_80641268
lbl_80641268:
	.float 1.0
.global lbl_8064126C
lbl_8064126C:
	.skip 0x4
.global lbl_80641270
lbl_80641270:
	.float 11.489999771118164
.global lbl_80641274
lbl_80641274:
	.float 8.789999961853027
.global lbl_80641278
lbl_80641278:
	.float 7.619999885559082
.global lbl_8064127C
lbl_8064127C:
	.float 9.479999542236328
.global lbl_80641280
lbl_80641280:
	.float 8.039999961853027
.global lbl_80641284
lbl_80641284:
	.float 75.8499984741211
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
	.float 5.0, 0.0
.global lbl_80641298
lbl_80641298:
	.float 2.25, 0.0
.global lbl_806412A0
lbl_806412A0:
	.float 2.375, 0.0
.global lbl_806412A8
lbl_806412A8:
	.ascii "Ap"
	.byte 0x00
	.byte 0x00
.global lbl_806412AC
lbl_806412AC:
	.float 150.0
.global lbl_806412B0
lbl_806412B0:
	.float 491.0
.global lbl_806412B4
lbl_806412B4:
	.float 104.0
.global lbl_806412B8
lbl_806412B8:
	.float 317.0, 0.0
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
	.float 1.875, 0.0
.global lbl_806412D8
lbl_806412D8:
	.float 1.90625, 0.0
.global lbl_806412E0
lbl_806412E0:
	.float 2.0625, 0.0
.global lbl_806412E8
lbl_806412E8:
	.float 6.2831854820251465, 0.0
.global lbl_806412F0
lbl_806412F0:
	.float 176.0, -0.0
.global lbl_806412F8
lbl_806412F8:
	.float 1.75, 0.0
.global lbl_80641300
lbl_80641300:
	.float 1.0, 0.0
.global lbl_80641308
lbl_80641308:
	.float 2.0625, 0.0
.global lbl_80641310
lbl_80641310:
	.float 1.0, 0.0
.global lbl_80641318
lbl_80641318:
	.float 1.875, 0.0
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
	.float -1.0, 0.0
.global lbl_80641330
lbl_80641330:
	.float 1.0, 0.0
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
	.float 2.3125, 0.0
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
	.float 2.25, 0.0
.global lbl_80641358
lbl_80641358:
	.skip 0x4
.global lbl_8064135C
lbl_8064135C:
	.float 320.0
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
	.float 20.0, 0.0
.global lbl_80641378
lbl_80641378:
	.float 176.0, -0.0
.global lbl_80641380
lbl_80641380:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641384
lbl_80641384:
	.float 5.0
.global lbl_80641388
lbl_80641388:
	.float 4.0
.global lbl_8064138C
lbl_8064138C:
	.float 9.700142218308165e-38, 1.6263032587282567e-19, 0.0
.global lbl_80641398
lbl_80641398:
	.float 89.0
.global lbl_8064139C
lbl_8064139C:
	.ascii "Cz"
	.byte 0x00
	.byte 0x00
.global lbl_806413A0
lbl_806413A0:
	.float 142.0
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
	.float 1.0
.global lbl_806413B4
lbl_806413B4:
	.float 4.0
.global lbl_806413B8
lbl_806413B8:
	.float 176.0, -0.0
.global lbl_806413C0
lbl_806413C0:
	.float 1.0
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
	.float 300.0
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
	.float 100.0
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
	.float 1.0
.global lbl_806413F0
lbl_806413F0:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806413F4
lbl_806413F4:
	.float 120.0
.global lbl_806413F8
lbl_806413F8:
	.float 30.0
.global lbl_806413FC
lbl_806413FC:
	.float 10800.0
.global lbl_80641400
lbl_80641400:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80641404
lbl_80641404:
	.float 300.0
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
	.float 1.0
.global lbl_80641418
lbl_80641418:
	.float 2.125, 0.0
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
	.float 1.875, 0.0
.global lbl_80641438
lbl_80641438:
	.float 2.3125, 0.0
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
	.float 20.0
.global lbl_80641450
lbl_80641450:
	.float 24.0
.global lbl_80641454
lbl_80641454:
	.float 23.0
.global lbl_80641458
lbl_80641458:
	.float 176.0, -0.0
.global lbl_80641460
lbl_80641460:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641464
lbl_80641464:
	.float 5.0
.global lbl_80641468
lbl_80641468:
	.float 4.0
.global lbl_8064146C
lbl_8064146C:
	.ascii "@@"
	.byte 0x00
	.byte 0x00
.global lbl_80641470
lbl_80641470:
	.incbin "baserom.dol", 0x473490, 0x2
.global lbl_80641472
lbl_80641472:
	.incbin "baserom.dol", 0x473492, 0x2
.global lbl_80641474
lbl_80641474:
	.skip 0x2
.global lbl_80641476
lbl_80641476:
	.skip 0x2
.global lbl_80641478
lbl_80641478:
	.float 9.700142218308165e-38, 1.6263032587282567e-19
.global lbl_80641480
lbl_80641480:
	.float 9.700142218308165e-38, 1.6263032587282567e-19
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
	.float 1.0, 0.0
.global lbl_80641498
lbl_80641498:
	.float 1.875, 0.0
.global lbl_806414A0
lbl_806414A0:
	.float 2.3125, 0.0
.global lbl_806414A8
lbl_806414A8:
	.ascii "@"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806414AC
lbl_806414AC:
	.float 5.0
.global lbl_806414B0
lbl_806414B0:
	.float 4.0
.global lbl_806414B4
lbl_806414B4:
	.float 9.700142218308165e-38, 1.6263032587282567e-19
.global lbl_806414BC
lbl_806414BC:
	.float 355.0
.global lbl_806414C0
lbl_806414C0:
	.float 324.0
.global lbl_806414C4
lbl_806414C4:
	.float 293.0
.global lbl_806414C8
lbl_806414C8:
	.float 262.0
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
	.float 607.0
.global lbl_806414D8
lbl_806414D8:
	.float 432.0
.global lbl_806414DC
lbl_806414DC:
	.float 31.0
.global lbl_806414E0
lbl_806414E0:
	.float 16.0, 0.0
.global lbl_806414E8
lbl_806414E8:
	.skip 0x4
.global lbl_806414EC
lbl_806414EC:
	.float 0.10000000149011612
.global lbl_806414F0
lbl_806414F0:
	.float 0.20000000298023224
.global lbl_806414F4
lbl_806414F4:
	.float 0.6600000262260437
.global lbl_806414F8
lbl_806414F8:
	.float 0.33000001311302185
.global lbl_806414FC
lbl_806414FC:
	.float 1.0
.global lbl_80641500
lbl_80641500:
	.float 9.999999747378752e-06
.global lbl_80641504
lbl_80641504:
	.float -9.999999747378752e-06
.global lbl_80641508
lbl_80641508:
	.float 30.0, 0.0
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
	.float -2.200000047683716
.global lbl_80641520
lbl_80641520:
	.float 2.200000047683716
.global lbl_80641524
lbl_80641524:
	.float -0.20000004768371582
.global lbl_80641528
lbl_80641528:
	.float 4.199999809265137
.global lbl_8064152C
lbl_8064152C:
	.ascii "A "
	.byte 0x00
	.byte 0x00
.global lbl_80641530
lbl_80641530:
	.float 0.25
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
	.float 1.0
.global lbl_80641550
lbl_80641550:
	.float 1.5, 0.0
.global lbl_80641558
lbl_80641558:
	.skip 0x8
.global lbl_80641560
lbl_80641560:
	.float 1.0, 0.0
.global lbl_80641568
lbl_80641568:
	.float 2.46875, 0.0
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
	.float -150.0
.global lbl_8064157C
lbl_8064157C:
	.float -55.0
.global lbl_80641580
lbl_80641580:
	.ascii "A@"
	.byte 0x00
	.byte 0x00
.global lbl_80641584
lbl_80641584:
	.float 35.0
.global lbl_80641588
lbl_80641588:
	.float -165.0
.global lbl_8064158C
lbl_8064158C:
	.float 85.0
.global lbl_80641590
lbl_80641590:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_80641594
lbl_80641594:
	.float -65.0
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
	.float 1.0, 0.0
.global lbl_806415A8
lbl_806415A8:
	.float 176.0, -0.0
.global lbl_806415B0
lbl_806415B0:
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806415B4
lbl_806415B4:
	.float 488.0
.global lbl_806415B8
lbl_806415B8:
	.float 324.0
.global lbl_806415BC
lbl_806415BC:
	.float 432.0
.global lbl_806415C0
lbl_806415C0:
	.float 607.0
.global lbl_806415C4
lbl_806415C4:
	.float 510.0
.global lbl_806415C8
lbl_806415C8:
	.float 340.0
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
	.float 292.0
.global lbl_806415D8
lbl_806415D8:
	.float 20.0
.global lbl_806415DC
lbl_806415DC:
	.float 600.0
.global lbl_806415E0
lbl_806415E0:
	.ascii "C4"
	.byte 0x00
	.byte 0x00
.global lbl_806415E4
lbl_806415E4:
	.float 350.0
.global lbl_806415E8
lbl_806415E8:
	.ascii "Bp"
	.byte 0x00
	.byte 0x00
.global lbl_806415EC
lbl_806415EC:
	.float 560.0
.global lbl_806415F0
lbl_806415F0:
	.ascii "Cz"
	.byte 0x00
	.byte 0x00
.global lbl_806415F4
lbl_806415F4:
	.float 308.0
.global lbl_806415F8
lbl_806415F8:
	.ascii "A"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806415FC
lbl_806415FC:
	.float 16.0
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
	.float 30.0
.global lbl_80641614
lbl_80641614:
	.float 1.0
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
	.float 120.0
.global lbl_80641638
lbl_80641638:
	.float 30.0, 0.0
.global lbl_80641640
lbl_80641640:
	.skip 0x4
.global lbl_80641644
lbl_80641644:
	.float 5.0
.global lbl_80641648
lbl_80641648:
	.float 20.0
.global lbl_8064164C
lbl_8064164C:
	.float 35.0
.global lbl_80641650
lbl_80641650:
	.float 0.10000000149011612
.global lbl_80641654
lbl_80641654:
	.float 100000.0
.global lbl_80641658
lbl_80641658:
	.float 1.5
.global lbl_8064165C
lbl_8064165C:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80641660
lbl_80641660:
	.float 30.0, 0.0
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
	.float 1.0
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
	.incbin "baserom.dol", 0x4736A8, 0x2
.global lbl_8064168A
lbl_8064168A:
	.incbin "baserom.dol", 0x4736AA, 0x2
.global lbl_8064168C
lbl_8064168C:
	.incbin "baserom.dol", 0x4736AC, 0x2
.global lbl_8064168E
lbl_8064168E:
	.incbin "baserom.dol", 0x4736AE, 0x2
.global lbl_80641690
lbl_80641690:
	.float 1.75, 0.0
.global lbl_80641698
lbl_80641698:
	.float 1.625, 0.0
.global lbl_806416A0
lbl_806416A0:
	.float 1.75, 0.0
.global lbl_806416A8
lbl_806416A8:
	.float 176.0, -0.0
.global lbl_806416B0
lbl_806416B0:
	.float 6.061233830827601e-39, 6.244907625740512e-39
.global lbl_806416B8
lbl_806416B8:
	.incbin "baserom.dol", 0x4736D8, 0x2
.global lbl_806416BA
lbl_806416BA:
	.incbin "baserom.dol", 0x4736DA, 0x2
.global lbl_806416BC
lbl_806416BC:
	.incbin "baserom.dol", 0x4736DC, 0x2
.global lbl_806416BE
lbl_806416BE:
	.incbin "baserom.dol", 0x4736DE, 0x2
.global lbl_806416C0
lbl_806416C0:
	.float 1.0
.global lbl_806416C4
lbl_806416C4:
	.float 0.25
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
	.float 6.061233830827601e-39, 6.244907625740512e-39
.global lbl_806416D8
lbl_806416D8:
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_806416DC
lbl_806416DC:
	.float 0.25
.global lbl_806416E0
lbl_806416E0:
	.float 0.10000000149011612
.global lbl_806416E4
lbl_806416E4:
	.float 0.30000001192092896
.global lbl_806416E8
lbl_806416E8:
	.float 0.800000011920929, 0.0
.global lbl_806416F0
lbl_806416F0:
	.incbin "baserom.dol", 0x473710, 0x1
.global lbl_806416F1
lbl_806416F1:
	.incbin "baserom.dol", 0x473711, 0x1
.global lbl_806416F2
lbl_806416F2:
	.incbin "baserom.dol", 0x473712, 0x1
.global lbl_806416F3
lbl_806416F3:
	.incbin "baserom.dol", 0x473713, 0x5
.global lbl_806416F8
lbl_806416F8:
	.skip 0x8
.global lbl_80641700
lbl_80641700:
	.float 1.875, 0.0
.global lbl_80641708
lbl_80641708:
	.float -1.875, 0.0
.global lbl_80641710
lbl_80641710:
	.float 2.3125, 0.0
.global lbl_80641718
lbl_80641718:
	.incbin "baserom.dol", 0x473738, 0x8
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
	.incbin "baserom.dol", 0x473748, 0x20
.global lbl_80641748
lbl_80641748:
	.skip 0x10
.global lbl_80641758
lbl_80641758:
	.incbin "baserom.dol", 0x473778, 0x1
.global lbl_80641759
lbl_80641759:
	.incbin "baserom.dol", 0x473779, 0x1
.global lbl_8064175A
lbl_8064175A:
	.incbin "baserom.dol", 0x47377A, 0x1
.global lbl_8064175B
lbl_8064175B:
	.incbin "baserom.dol", 0x47377B, 0x1
.global lbl_8064175C
lbl_8064175C:
	.skip 0x4
.global lbl_80641760
lbl_80641760:
	.skip 0x8
.global lbl_80641768
lbl_80641768:
	.float 1.4693679385278594e-39, 0.0
.global lbl_80641770
lbl_80641770:
	.incbin "baserom.dol", 0x473790, 0x8
.global lbl_80641778
lbl_80641778:
	.skip 0x8
.global lbl_80641780
lbl_80641780:
	.float 1.4693679385278594e-39, 0.0
.global lbl_80641788
lbl_80641788:
	.incbin "baserom.dol", 0x4737A8, 0x8
.global lbl_80641790
lbl_80641790:
	.skip 0x8
.global lbl_80641798
lbl_80641798:
	.incbin "baserom.dol", 0x4737B8, 0x8
.global lbl_806417A0
lbl_806417A0:
	.incbin "baserom.dol", 0x4737C0, 0x8
.global lbl_806417A8
lbl_806417A8:
	.incbin "baserom.dol", 0x4737C8, 0x8
.global lbl_806417B0
lbl_806417B0:
	.float -1.662782907485962, 1.3837655076222867e-36
.global lbl_806417B8
lbl_806417B8:
	.float 1.5762125253677368, 3.359238982446559e-30
.global lbl_806417C0
lbl_806417C0:
	.float -1.285222053527832, -8.663516268825333e-07
.global lbl_806417C8
lbl_806417C8:
	.incbin "baserom.dol", 0x4737E8, 0x8
.global lbl_806417D0
lbl_806417D0:
	.float 0.508756697177887, 1.5651800380351343e-30
.global lbl_806417D8
lbl_806417D8:
	.float 1.875, 0.0
.global lbl_806417E0
lbl_806417E0:
	.float -2.050424337387085, 9.143781920596354e-22
.global lbl_806417E8
lbl_806417E8:
	.float 2.0026180744171143, -7.197864773114323e-22
.global lbl_806417F0
lbl_806417F0:
	.float -1.7970709800720215, 2.3327364176434744e-22
.global lbl_806417F8
lbl_806417F8:
	.float 1.4040762186050415, -2.5403612546881504e-09
.global lbl_80641800
lbl_80641800:
	.float 0.01777942106127739, 3.4542633642331566e-08
.global lbl_80641808
lbl_80641808:
	.float 1.75, 0.0
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
	.incbin "baserom.dol", 0x473838, 0x8
.global lbl_80641820
lbl_80641820:
	.float 0.01777942106127739, 3.4542633642331566e-08
.global lbl_80641828
lbl_80641828:
	.incbin "baserom.dol", 0x473848, 0x8
.global lbl_80641830
lbl_80641830:
	.float 1.875, 0.0
.global lbl_80641838
lbl_80641838:
	.incbin "baserom.dol", 0x473858, 0x8
.global lbl_80641840
lbl_80641840:
	.float -1.662782907485962, 1.3837655076222867e-36
.global lbl_80641848
lbl_80641848:
	.float 1.5762125253677368, 3.359238982446559e-30
.global lbl_80641850
lbl_80641850:
	.float -1.285222053527832, -8.663516268825333e-07
.global lbl_80641858
lbl_80641858:
	.incbin "baserom.dol", 0x473878, 0x8
.global lbl_80641860
lbl_80641860:
	.float 0.508756697177887, 1.5651800380351343e-30
.global lbl_80641868
lbl_80641868:
	.float -2.050424337387085, 9.143781920596354e-22
.global lbl_80641870
lbl_80641870:
	.float 2.0026180744171143, -7.197864773114323e-22
.global lbl_80641878
lbl_80641878:
	.float -1.7970709800720215, 2.3327364176434744e-22
.global lbl_80641880
lbl_80641880:
	.float 1.4040762186050415, -2.5403612546881504e-09
.global lbl_80641888
lbl_80641888:
	.float 1.75, 0.0
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
	.incbin "baserom.dol", 0x4738B8, 0x8
.global lbl_806418A0
lbl_806418A0:
	.incbin "baserom.dol", 0x4738C0, 0x8
.global lbl_806418A8
lbl_806418A8:
	.incbin "baserom.dol", 0x4738C8, 0x8
.global lbl_806418B0
lbl_806418B0:
	.incbin "baserom.dol", 0x4738D0, 0x8
.global lbl_806418B8
lbl_806418B8:
	.incbin "baserom.dol", 0x4738D8, 0x8
.global lbl_806418C0
lbl_806418C0:
	.incbin "baserom.dol", 0x4738E0, 0x8
.global lbl_806418C8
lbl_806418C8:
	.incbin "baserom.dol", 0x4738E8, 0x8
.global lbl_806418D0
lbl_806418D0:
	.incbin "baserom.dol", 0x4738F0, 0x8
.global lbl_806418D8
lbl_806418D8:
	.incbin "baserom.dol", 0x4738F8, 0x8
.global lbl_806418E0
lbl_806418E0:
	.skip 0x8
.global lbl_806418E8
lbl_806418E8:
	.incbin "baserom.dol", 0x473908, 0x8
.global lbl_806418F0
lbl_806418F0:
	.float 0.01973254606127739, 3.4542633642331566e-08
.global lbl_806418F8
lbl_806418F8:
	.float 1.875, 0.0
.global lbl_80641900
lbl_80641900:
	.skip 0x8
.global lbl_80641908
lbl_80641908:
	.incbin "baserom.dol", 0x473928, 0x8
.global lbl_80641910
lbl_80641910:
	.float 1.75, 0.0
.global lbl_80641918
lbl_80641918:
	.incbin "baserom.dol", 0x473938, 0x8
.global lbl_80641920
lbl_80641920:
	.float 1.625, 0.0
.global lbl_80641928
lbl_80641928:
	.incbin "baserom.dol", 0x473948, 0x8
.global lbl_80641930
lbl_80641930:
	.incbin "baserom.dol", 0x473950, 0x8
.global lbl_80641938
lbl_80641938:
	.incbin "baserom.dol", 0x473958, 0x8
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
	.float 1.774999976158142, 4.172308010197412e-08
.global lbl_80641950
lbl_80641950:
	.incbin "baserom.dol", 0x473970, 0x8
.global lbl_80641958
lbl_80641958:
	.incbin "baserom.dol", 0x473978, 0x8
.global lbl_80641960
lbl_80641960:
	.float 1.6363639831542969, -3.491738487433095e-14
.global lbl_80641968
lbl_80641968:
	.float 1.6056606769561768, -5.09558731344685e-27
.global lbl_80641970
lbl_80641970:
	.incbin "baserom.dol", 0x473990, 0x8
.global lbl_80641978
lbl_80641978:
	.float 2.125, 0.0
.global lbl_80641980
lbl_80641980:
	.incbin "baserom.dol", 0x4739A0, 0x8
.global lbl_80641988
lbl_80641988:
	.float -0.1857295036315918, 1.1057060403938557e-26
.global lbl_80641990
lbl_80641990:
	.incbin "baserom.dol", 0x4739B0, 0x8
.global lbl_80641998
lbl_80641998:
	.float -1.875, 0.0
.global lbl_806419A0
lbl_806419A0:
	.incbin "baserom.dol", 0x4739C0, 0x8
.global lbl_806419A8
lbl_806419A8:
	.incbin "baserom.dol", 0x4739C8, 0x8
.global lbl_806419B0
lbl_806419B0:
	.float 6.076944348430532e-38, -124.47528839111328
.global lbl_806419B8
lbl_806419B8:
	.float 1.79828679561615, 0.0
.global lbl_806419C0
lbl_806419C0:
	.incbin "baserom.dol", 0x4739E0, 0x8
.global lbl_806419C8
lbl_806419C8:
	.float -0.1566023975610733, 2.5949632594543513e-31
.global lbl_806419D0
lbl_806419D0:
	.incbin "baserom.dol", 0x4739F0, 0x8
.global lbl_806419D8
lbl_806419D8:
	.float -0.9013888835906982, 3.0815793695807764e-25
.global lbl_806419E0
lbl_806419E0:
	.float 0.5677248239517212, -1.5085593885189041e-10
.global lbl_806419E8
lbl_806419E8:
	.float -0.36667826771736145, -6733.49267578125
.global lbl_806419F0
lbl_806419F0:
	.incbin "baserom.dol", 0x473A10, 0x8
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
	.float 176.0, -0.0
.global lbl_80641A08
lbl_80641A08:
	.skip 0x8
.global lbl_80641A10
lbl_80641A10:
	.incbin "baserom.dol", 0x473A30, 0x8
.global lbl_80641A18
lbl_80641A18:
	.float 0.10190654546022415, 4.681583078911117e-23
.global lbl_80641A20
lbl_80641A20:
	.float 0.10190654546022415, 4.632211430296955e-23
.global lbl_80641A28
lbl_80641A28:
	.float 0.004977409727871418, 2.988582645246929e-11
.global lbl_80641A30
lbl_80641A30:
	.float 1.75, 0.0
.global lbl_80641A38
lbl_80641A38:
	.incbin "baserom.dol", 0x473A58, 0x8
.global lbl_80641A40
lbl_80641A40:
	.float 0.004977409727871418, 2.9103830456733704e-11
.global lbl_80641A48
lbl_80641A48:
	.float 0.00023986250744201243, 1.3902776603247439e-16
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
	.float 176.0, -0.0
.global lbl_80641A60
lbl_80641A60:
	.float 1.875, 0.0
.global lbl_80641A68
lbl_80641A68:
	.incbin "baserom.dol", 0x473A88, 0x8
.global lbl_80641A70
lbl_80641A70:
	.float -0.8388888835906982, 3.123224322843525e-25
.global lbl_80641A78
lbl_80641A78:
	.float 0.4882936477661133, 2.0998417067926717e-23
.global lbl_80641A80
lbl_80641A80:
	.float -0.28611990809440613, -1.4355995882644064e-38
.global lbl_80641A88
lbl_80641A88:
	.float 0.15813681483268738, -0.08822968602180481
.global lbl_80641A90
lbl_80641A90:
	.float -0.08250982314348221, -0.2660585641860962
.global lbl_80641A98
lbl_80641A98:
	.float 1.75, 0.0
.global lbl_80641AA0
lbl_80641AA0:
	.float 1.640625, 0.0
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
	.float 1.5, 0.0
.global lbl_80641AD0
lbl_80641AD0:
	.float 1.75, 0.0
.global lbl_80641AD8
lbl_80641AD8:
	.float 1.875, 0.0
.global lbl_80641AE0
lbl_80641AE0:
	.float 176.0, -0.0
.global lbl_80641AE8
lbl_80641AE8:
	.float 1.0083333253860474, 1.1436217750607586e-28
.global lbl_80641AF0
lbl_80641AF0:
	.float -0.6640872955322266, 1.9995246320584313e-23
.global lbl_80641AF8
lbl_80641AF8:
	.incbin "baserom.dol", 0x473B18, 0x8
.global lbl_80641B00
lbl_80641B00:
	.float -0.2137676179409027, -8.262863501984735e-33
.global lbl_80641B08
lbl_80641B08:
	.incbin "baserom.dol", 0x473B28, 0x8
.global lbl_80641B10
lbl_80641B10:
	.incbin "baserom.dol", 0x473B30, 0x8
.global lbl_80641B18
lbl_80641B18:
	.float 1.75, 0.0
.global lbl_80641B20
lbl_80641B20:
	.float 1.875, 0.0
.global lbl_80641B28
lbl_80641B28:
	.float -1.875, 0.0
.global lbl_80641B30
lbl_80641B30:
	.incbin "baserom.dol", 0x473B50, 0x8
.global lbl_80641B38
lbl_80641B38:
	.float 0.01582629606127739, 3.4542633642331566e-08
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
	.float 176.0, -0.0
.global lbl_80641B58
lbl_80641B58:
	.incbin "baserom.dol", 0x473B78, 0x8
.global lbl_80641B60
lbl_80641B60:
	.float 1.875, 0.0
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
	.float 1.9375, 0.0
.global lbl_80641B78
lbl_80641B78:
	.float -1.875, 0.0
.global lbl_80641B80
lbl_80641B80:
	.skip 0x8
.global lbl_80641B88
lbl_80641B88:
	.incbin "baserom.dol", 0x473BA8, 0x8
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
	.float 6.076944348430532e-38, -124.47528839111328
.global lbl_80641BB8
lbl_80641BB8:
	.incbin "baserom.dol", 0x473BD8, 0x8
.global lbl_80641BC0
lbl_80641BC0:
	.float 0.017578125, 0.0
.global lbl_80641BC8
lbl_80641BC8:
	.skip 0x8
.global lbl_80641BD0
lbl_80641BD0:
	.skip 0x8
.global lbl_80641BD8
lbl_80641BD8:
	.float 1.875, 0.0
