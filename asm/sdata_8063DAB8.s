	.include "macros.inc"

	.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

# Continuation of sdata_8063DAA8.s after OSPlayRecord.c's state (0x8063DAB8).
	.balign 8

.global lbl_8063DAB8
lbl_8063DAB8:
	.8byte 0x80433F2800000000
.global lbl_8063DAC0
lbl_8063DAC0:
	.8byte 0x80433F7000000000
.global lbl_8063DAC8
lbl_8063DAC8:
	.4byte lbl_80434090
.global lbl_8063DACC
lbl_8063DACC:
	.2byte 0x0000, 0x0001
.global lbl_8063DAD0
lbl_8063DAD0:
	.2byte 0x0000, 0x03E7
.global lbl_8063DAD4
lbl_8063DAD4:
	.2byte 0x0000, 0x03E7
.global lbl_8063DAD8
lbl_8063DAD8:
	.2byte 0x0000, 0x0001
.global lbl_8063DADC
lbl_8063DADC:
	.2byte 0x0000, 0x0001
.global lbl_8063DAE0
lbl_8063DAE0:
	.ascii "vi.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DAE8
lbl_8063DAE8:
	.8byte 0x0000000100000000
.global lbl_8063DAF0
lbl_8063DAF0:
	.byte 0xFF
.global lbl_8063DAF1
lbl_8063DAF1:
	.byte 0xFF
.global lbl_8063DAF2
lbl_8063DAF2:
	.byte 0xFF
.global lbl_8063DAF3
lbl_8063DAF3:
	.byte 0xFF
.global lbl_8063DAF4
lbl_8063DAF4:
	.byte 0xFF
.global lbl_8063DAF5
lbl_8063DAF5:
	.byte 0xFF
.global lbl_8063DAF6
lbl_8063DAF6:
	.byte 0xFF
.global lbl_8063DAF7
lbl_8063DAF7:
	.byte 0xFF
.global lbl_8063DAF8
lbl_8063DAF8:
	.byte 0xFF
.global lbl_8063DAF9
lbl_8063DAF9:
	.byte 0xFF
.global lbl_8063DAFA
lbl_8063DAFA:
	.2byte 0xFF00
.global lbl_8063DAFC
lbl_8063DAFC:
	.2byte 0x0000, 0x00FF
.global lbl_8063DB00
lbl_8063DB00:
	.ascii "\xff"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DB08
lbl_8063DB08:
	.8byte 0x000000003F800000
.global lbl_8063DB10
lbl_8063DB10:
	.8byte 0x80434AA000000000
.global lbl_8063DB18
lbl_8063DB18:
	.2byte 0x0004, 0x0102
.global lbl_8063DB1C
lbl_8063DB1C:
	.2byte 0x0008, 0x0102
.global lbl_8063DB20
lbl_8063DB20:
	.8byte 0x000C010200000000
.global lbl_8063DB28
lbl_8063DB28:
	.8byte 0x80818283A0A1A2A3
.global lbl_8063DB30
lbl_8063DB30:
	.8byte 0x84858687A4A5A6A7
.global lbl_8063DB38
lbl_8063DB38:
	.8byte 0x88898A8BA8A9AAAB
.global lbl_8063DB40
lbl_8063DB40:
	.8byte 0x8C8D8E8FACADAEAF
.global lbl_8063DB48
lbl_8063DB48:
	.8byte 0x90919293B0B1B2B3
.global lbl_8063DB50
lbl_8063DB50:
	.8byte 0x94959697B4B5B6B7
.global lbl_8063DB58
lbl_8063DB58:
	.8byte 0x98999A9BB8B9BABB
.global lbl_8063DB60
lbl_8063DB60:
	.8byte 0x0004010502060000
.global lbl_8063DB68
lbl_8063DB68:
	.8byte 0x0000000100000000
.global lbl_8063DB70
lbl_8063DB70:
	.ascii "dvdfs.c"
	.byte 0x00
.global lbl_8063DB78
lbl_8063DB78:
	.4byte 0x80435EF8
.global lbl_8063DB7C
lbl_8063DB7C:
	.2byte 0x0000, 0x0001
.global lbl_8063DB80
lbl_8063DB80:
	.4byte 0x80288240
.global lbl_8063DB84
lbl_8063DB84:
	.ascii "dvd.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DB8C
lbl_8063DB8C:
	.4byte 0xFFFFFFFF
.global lbl_8063DB90
lbl_8063DB90:
	.ascii "\xff\xff\xff\xff"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8063DB98
lbl_8063DB98:
	.ascii "/dev/di"
	.byte 0x00
