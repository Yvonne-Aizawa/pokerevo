	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

# Continuation of data_8043BEC0.s after TPL.c's string (0x8043BEF0).
	.balign 8

.global lbl_8043BEF0
lbl_8043BEF0:
	.ascii "<< RVL_SDK - THP \trelease build: Nov 30 2006 03:09:42 (0x4199_60831) >>"
	.byte 0x00
	.ascii "<< RVL_SDK - KPAD \trelease build: May 17 2007 15:52:00 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043BF84
lbl_8043BF84:
	.2byte 0x0001, 0x0302, 0x0004, 0x0105, 0x0007, 0x0108
.global lbl_8043BF90
lbl_8043BF90:
	.ascii "APP ERROR: Not enough IPC arena\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043BFB8
lbl_8043BFB8:
	.ascii "<< RVL_SDK - WPAD \trelease build: May 17 2007 01:52:03 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C004
lbl_8043C004:
	.ascii "No Alloc: Nothing to do!!!\n"
	.byte 0x00
.global lbl_8043C020
lbl_8043C020:
	.ascii "No Free: Nothing to do!!!\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043C03C
lbl_8043C03C:
	.ascii "Deregister allocators because of fatal error.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C070
lbl_8043C070:
	.float -3.890054983710408e-39, 1.7796490496925177e-43, 0.0, 0.0
.global lbl_8043C080
lbl_8043C080:
	.ascii "Check the update of WiFi using channel\n"
	.byte 0x00
.global lbl_8043C0A8
lbl_8043C0A8:
	.ascii "WiFi uses channel = %d\n"
	.byte 0x00
.global lbl_8043C0C0
lbl_8043C0C0:
	.ascii "WPADInit()\n"
	.byte 0x00
.global lbl_8043C0CC
lbl_8043C0CC:
	.ascii " ==>this error means that the firmware is for NDEV %s\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043C104
lbl_8043C104:
	.ascii "2.1 or later"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "connection is opened\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "connection is closed\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "clean up command queue\n"
	.byte 0x00
	.ascii "WARNING: disconnection for device handle not assigned to channel.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C1A8
lbl_8043C1A8:
	.ascii "HID Parser reports: %d\n"
	.byte 0x00
.global lbl_8043C1C0
lbl_8043C1C0:
	.ascii "WPADiRecvCallback(): Unknown channel %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C1EC
lbl_8043C1EC:
	.ascii "WPADSetSamplingCallback()\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043C208
lbl_8043C208:
	.ascii "WPADSetConnectCallback()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C224
lbl_8043C224:
	.ascii "WPADSetExtensionCallback()\n"
	.byte 0x00
.global lbl_8043C240
lbl_8043C240:
	.ascii "WPADSetAutoSamplingBuf()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C25C
lbl_8043C25C:
	.ascii "handle = %d, repid = %02x\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043C278
lbl_8043C278:
	.4byte 0x802ACA04, 0x802ACA10, 0x802ACA1C, 0x802ACA28
	.4byte 0x802ACA34, 0x802ACA40, 0x802ACA4C, 0x802ACA58
	.4byte 0x802ACA64, 0x802ACA70
.global lbl_8043C2A0
lbl_8043C2A0:
	.4byte 0x802AE2D8, 0x802AE6E8, 0x802AEA78, 0x802B1C6C
	.4byte 0x802B1C6C, 0x802B1C6C, 0x802B1C6C, 0x802B1C6C
	.4byte 0x802B1C6C, 0x802B1C6C, 0x802B1C6C, 0x802B1C6C
	.4byte 0x802B1C6C, 0x802B1C6C, 0x802B1C6C, 0x802B1C6C
	.4byte 0x802AEF94, 0x802AF14C, 0x802AF38C, 0x802AFB44
	.4byte 0x802AFDB8, 0x802AFDBC, 0x802B0628, 0x802B0834
	.4byte 0x802B1C6C, 0x802B1C6C, 0x802B1C6C, 0x802B1C6C
	.4byte 0x802B1C6C, 0x802B1090, 0x802B1094, 0x802B1678
.global lbl_8043C320
lbl_8043C320:
	.ascii "\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Dpd Setting is ok.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Dpd Setting is broken.\n"
	.byte 0x00
	.ascii "Old Firmware uses default values because it has no Dpd Setting.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Acc is ok.\n"
	.byte 0x00
	.ascii "Acc is broken.\n"
	.byte 0x00
	.ascii "0G:  accX = %d,  accY = %d,  accZ = %d\n"
	.byte 0x00
	.ascii "1G:  accX = %d,  accY = %d,  accZ = %d\n"
	.byte 0x00
	.ascii "Volume: %d,   Motor: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "check sum error.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "0G:  fsaccX = %d,  fsaccY = %d,  fsaccZ = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "1G:  fsaccX = %d,  fsaccY = %d,  fsaccZ = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "FS:  X = %d,  X max = %d,  X min = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "FS:  Y = %d,  Y max = %d,  Y min = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "CL:  X = %d,  X max = %d,  X min = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "CL:  Y = %d,  Y max = %d,  Y min = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "CR:  X = %d,  X max = %d,  X min = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "CR:  Y = %d,  Y max = %d,  Y min = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "LR:  L = %d,  R = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C5B0
lbl_8043C5B0:
	.ascii "type : %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043C5BC
lbl_8043C5BC:
	.ascii "mode : %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "Received report 20\n"
	.byte 0x00
	.ascii "initialize attachment\n"
	.byte 0x00
	.byte 0x00
	.ascii "already initialized\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "already disconnected\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "read error happens!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "base addr: %08x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "length   : %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "received data is out of range!\n"
	.byte 0x00
	.ascii "Received ack!\n"
	.byte 0x00
	.byte 0x00
	.ascii "ack --> report ID = %02x, error code = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "ack error --> report ID = %d, error code = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "invalid ack!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043C700
lbl_8043C700:
	.2byte 0xA877, 0xA6E0, 0xF743, 0x5A35, 0x85E2, 0x7297, 0x8FB7, 0x1A62
	.2byte 0x8738, 0x0D67, 0xC7BE, 0x4F3E, 0x2076, 0x378F, 0x68B7, 0xA926
	.2byte 0x3F2B, 0x10E3, 0x307E, 0x900E, 0x850A, 0x0000, 0x0000, 0x0000
	.2byte 0x7051, 0x0386, 0x400D, 0x4FEB, 0x3ECC, 0xD187, 0x35BD, 0xF50B
	.2byte 0x5ED0, 0xF8F2, 0xD5E2, 0x6C31, 0x0CAD, 0xFC21, 0xC378, 0xC106
	.2byte 0xC24C, 0x55E6, 0x4A34, 0x4811, 0x1EDA, 0xE71A, 0x84A0, 0x96A7
	.2byte 0xE37F, 0xAF63, 0x9CFA, 0x235B, 0x79C8, 0x9EBA, 0xB2C9, 0x2212
	.2byte 0x4BB3, 0xA1B6, 0x3249, 0xA2E1, 0x8939, 0x1066, 0xC507, 0x8F54
	.2byte 0xEA91, 0xCA3F, 0xF919, 0xF0D7, 0x46BC, 0x281B, 0x61E8, 0x2F6A
	.2byte 0xAE9D, 0xF64E, 0x0914, 0x774D, 0xDB1F, 0x2E7B, 0x7CF1, 0x43A3
	.2byte 0x00B8, 0x138C, 0x85B9, 0x2975, 0x88FD, 0xD256, 0x1C50, 0x9741
	.2byte 0xE53B, 0x60B5, 0xC064, 0xEE98, 0xD62D, 0x25A4, 0xAACD, 0x7DA8
	.2byte 0x83C6, 0xABBE, 0x4499, 0x263C, 0xCE9F, 0xBFD3, 0xCB76, 0x7A7E
	.2byte 0x8201, 0x8A9A, 0x801D, 0x0EB0, 0x5CD4, 0x3862, 0xF430, 0xE08E
	.2byte 0x53B7, 0x0257, 0xACA6, 0x520A, 0x6D92, 0x6517, 0x2433, 0x4572
	.2byte 0x74B1, 0xB4F7, 0x5DED, 0x2CFF, 0x4737, 0x5A90, 0xBBDF, 0x2A16
	.2byte 0x5995, 0xD9C4, 0x2767, 0x73C7, 0x68FE, 0xA5DD, 0x6B5F, 0x93D8
	.2byte 0xEC05, 0x3A8D, 0x6EFB, 0x3DA9, 0x6936, 0xF394, 0xDEEF, 0x156F
	.2byte 0x8B9B, 0x080F, 0xDC81, 0x1820, 0x04E4, 0x71CF, 0xE92B, 0x4258
	.2byte 0x01A0, 0xA962, 0xD63F, 0x85A7, 0xB6D4, 0xFA15, 0x6617, 0x09BD
	.2byte 0x5D14, 0x3426, 0x5972, 0x9154, 0x064F, 0xF8B0, 0x5B74, 0x9399
	.2byte 0x8CF2, 0x45CD, 0xEA4E, 0xAD10, 0x4AE5, 0xCAEE, 0xDFC6, 0x6F9F
	.2byte 0x888E, 0x02CC, 0x08A8, 0x7794, 0x6D21, 0xB128, 0xE439, 0x7996
	.2byte 0x6071, 0x8116, 0x2EE6, 0x78B9, 0xC446, 0x9A42, 0xAEB7, 0x7C43
	.2byte 0xB322, 0x1A86, 0xC232, 0x3D2D, 0x9CD2, 0x29E9, 0x639B, 0xD131
	.2byte 0x385E, 0x1E36, 0x41BB, 0x0318, 0x2B3E, 0xBF68, 0x61FC, 0x52C0
	.2byte 0xDEE0, 0x0A58, 0x135A, 0x00BE, 0x1C90, 0x0E53, 0x12FD, 0xE26E
	.2byte 0xBACE, 0x2427, 0x447F, 0x87A3, 0xA1D5, 0x5040, 0xE3F9, 0x83F7
	.2byte 0xC7A2, 0x35C8, 0xDB19, 0xAB2F, 0x1125, 0xED33, 0x9E55, 0xE148
	.2byte 0xAF73, 0x84DA, 0x2AAA, 0x51EB, 0x9D95, 0xB2CB, 0xE770, 0x80FE
	.2byte 0x4C65, 0x04EF, 0xC5F1, 0xC33A, 0xB4F5, 0x5F23, 0x89DD, 0x30A5
	.2byte 0x8BD3, 0xF6DC, 0x4D64, 0xD7F0, 0x8FEC, 0x5637, 0x5CA4, 0x0D07
	.2byte 0x768A, 0x2C0B, 0xB5D8, 0xC11F, 0xE83B, 0xF44B, 0x1B47, 0x6C49
	.2byte 0x677B, 0x92CF, 0x757E, 0x20D9, 0x7D3C, 0x977A, 0xD005, 0x6B0F
	.2byte 0x1DFB, 0x8298, 0x578D, 0xF36A, 0xBCAC, 0xC9A6, 0xFFB8, 0x690C
	.2byte 0x4C4D, 0x7207, 0x5A49, 0x338D, 0xA2AB, 0x463D, 0x630D, 0xA097
	.2byte 0xFFF0, 0xF5FA, 0xC0E9, 0xDB62, 0xE4E1, 0x7443, 0xDC86, 0x1829
	.2byte 0x37F4, 0x06E2, 0xED6F, 0x9048, 0x1E2D, 0x1DEA, 0x7394, 0x54DF
	.2byte 0x25F6, 0x4727, 0xD911, 0x77C9, 0x841C, 0x5B5C, 0x5181, 0xA622
	.2byte 0x3E24, 0x96C8, 0x8AEC, 0x827C, 0x09B8, 0x454A, 0x57BB, 0x2F50
	.2byte 0x758E, 0x6170, 0x8C6C, 0xAFD0, 0xFDB4, 0x1BAE, 0xDEFE, 0x3BB5
	.2byte 0x36BD, 0x5501, 0x0E9C, 0x4156, 0x5FB3, 0x2603, 0x83BA, 0x134B
	.2byte 0xCAC5, 0x0AF8, 0x60A5, 0xB9C7, 0xC398, 0x32FB, 0x12F9, 0xA792
	.2byte 0xAA68, 0xF378, 0x7E05, 0x2021, 0x02E8, 0xBFF2, 0xB059, 0x8FD2
	.2byte 0xCB87, 0x6515, 0xF11A, 0xB230, 0xADEE, 0x58A3, 0x8B66, 0x1F2C
	.2byte 0xD75D, 0x1985, 0xA8E6, 0xD36B, 0xA10C, 0x9193, 0x6A5E, 0x0B79
	.2byte 0xE3DD, 0x004F, 0x3C89, 0x6E71, 0x69A9, 0xAC40, 0xE599, 0x28C6
	.2byte 0x314E, 0x7ACD, 0x089E, 0x7DEF, 0x17FC, 0x88D8, 0xA46D, 0x4495
	.2byte 0xD1B7, 0xD49B, 0xBE2A, 0x3464, 0x2BCF, 0x2EEB, 0x38CE, 0x23E0
	.2byte 0x3A3F, 0xF77B, 0x9F10, 0x53BC, 0x5267, 0x16E7, 0x8076, 0x04C4
	.2byte 0xB6C1, 0xC27F, 0x9ADA, 0xD539, 0x4214, 0x9DB1, 0x0F35, 0xD6CC
	.2byte 0xB9DA, 0x380C, 0xA29C, 0x091F, 0x06B1, 0xB6FD, 0x1A69, 0x2330
	.2byte 0xC4DE, 0x01D1, 0xF458, 0x2937, 0x1C7D, 0xD5BF, 0xFFBD, 0xC8C9
	.2byte 0xCF65, 0xBE7B, 0x7897, 0x9867, 0x08B3, 0x2657, 0xF7FA, 0x40AD
	.2byte 0x8E75, 0xA67C, 0xDB91, 0x8B51, 0x99D4, 0x177A, 0x908D, 0xCE63
	.2byte 0xCB4E, 0xA0AB, 0x183A, 0x5B50, 0x7F21, 0x74C1, 0xBBB8, 0xB7BA
	.2byte 0x0B35, 0x9531, 0x599A, 0x4D04, 0x071E, 0x5A76, 0x13F3, 0x7183
	.2byte 0xF086, 0x03A8, 0x3942, 0xAA28, 0xE6E4, 0xD85D, 0xD3D0, 0x6E6F
	.2byte 0x96FB, 0x5EBC, 0x56C2, 0x5F85, 0x9BE7, 0xAFD2, 0x3B84, 0x6AA7
	.2byte 0x53C5, 0x4449, 0xA5F9, 0x3672, 0x3D2C, 0xD91B, 0xA1F5, 0x4F93
	.2byte 0x9D68, 0x4741, 0x16CA, 0x2A4C, 0xA387, 0xD6E5, 0x192E, 0x7715
	.2byte 0x6D70, 0xC0DF, 0xB200, 0x46ED, 0xC66C, 0x4360, 0x922D, 0xA922
	.2byte 0x458F, 0x3455, 0xAEA4, 0x0A66, 0x32E0, 0xDC02, 0xACE8, 0x208C
	.2byte 0x8962, 0x4AFE, 0xEEC3, 0xE33C, 0xF179, 0x05E9, 0xF627, 0x33CC
	.2byte 0xF29E, 0x1181, 0x7E80, 0x108A, 0x829F, 0x480D, 0xD7B4, 0xFC2F
	.2byte 0xB5C7, 0xDD88, 0x146B, 0x2B54, 0xEA1D, 0x945C, 0xB0EF, 0x1224
	.2byte 0xCDEB, 0xE1E2, 0x6473, 0x3F0E, 0x5261, 0x253E, 0xF80F, 0x4BEC
	.2byte 0xC000, 0x30F6, 0x0249, 0x3D10, 0x6E20, 0xC9A6, 0x2FFE, 0x2C2B
	.2byte 0x752E, 0x4526, 0xAB48, 0xA980, 0xFC04, 0xCCD3, 0xB5BA, 0xA338
	.2byte 0x317D, 0x01D9, 0xA77B, 0x96B6, 0x6369, 0x4EF7, 0xDEE0, 0x78CA
	.2byte 0x50AA, 0x4191, 0x6588, 0xE421, 0x85DA, 0x3A27, 0xBE1C, 0x3E42
	.2byte 0x5E17, 0x527F, 0x1F89, 0x246F, 0x8F5C, 0x6774, 0x0E12, 0x878D
	.2byte 0xE934, 0xED73, 0xC4F8, 0x615B, 0x05DF, 0x594C, 0x9779, 0x8318
	.2byte 0xA455, 0x95EB, 0xBD53, 0xF5F1, 0x5766, 0x469F, 0xB281, 0x0951
	.2byte 0x8622, 0x16DD, 0x2393, 0x7629, 0xC2D7, 0x1DD4, 0xBF36, 0x3FEA
	.2byte 0x4B11, 0x32B9, 0x6254, 0x60D6, 0x6D43, 0x9A0D, 0x929C, 0xB0EF
	.2byte 0x586C, 0x9D77, 0x2D70, 0xFAF3, 0xB30B, 0xE240, 0x7EF4, 0x8AE5
	.2byte 0x8C3C, 0x5671, 0xD164, 0xE182, 0x0ACB, 0x1315, 0x90EC, 0x0399
	.2byte 0xAF14, 0x5D0F, 0x334A, 0x94A5, 0xA835, 0x1BE3, 0x6AC6, 0x28FF
	.2byte 0x4DE7, 0x2584, 0xAC08, 0xAEC5, 0xA22A, 0xB837, 0x0C7A, 0xA0C3
	.2byte 0xCEAD, 0x061A, 0x9E8B, 0xFBD5, 0xF0C1, 0x1ED0, 0xB49B, 0xB144
	.2byte 0xF247, 0xC768, 0xCF72, 0xBB4F, 0x5AF9, 0xDC6B, 0xDBD2, 0xE87C
	.2byte 0xC8EE, 0x98A1, 0xE6D8, 0x3907, 0x5FFD, 0x8E19, 0xB73B, 0xBCCD
	.2byte 0x7CE3, 0x8173, 0xB211, 0xBF6F, 0x2098, 0xFE75, 0x96EF, 0x6CDA
	.2byte 0x50E1, 0x0972, 0x5445, 0xBA34, 0x805B, 0xED3E, 0x532C, 0x87A4
	.2byte 0x57F3, 0x333F, 0x3CB7, 0x67B4, 0xA325, 0x604F, 0x076B, 0x1B47
	.2byte 0x150F, 0xE40A, 0xEAD1, 0x3278, 0x3649, 0x8D4B, 0xD2BC, 0xA5DC
	.2byte 0x1D0D, 0x4DCD, 0x9A82, 0x5FFC, 0x9465, 0xBEE2, 0xF4C9, 0x1E44
	.2byte 0xCB9E, 0x0C64, 0x7126, 0x63B3, 0x14E8, 0x4070, 0x8A0E, 0x1942
	.2byte 0x6DAC, 0x8810, 0x5CDF, 0x41A9, 0xADE5, 0xFB74, 0xCCD5, 0x068E
	.2byte 0x5986, 0xCE1F, 0x3D76, 0xE08F, 0xB977, 0x277B, 0xA6D8, 0x29D3
	.2byte 0xECB8, 0x13F7, 0xFAC3, 0x516A, 0xDE4A, 0x5AEB, 0xC28B, 0x2348
	.2byte 0x92CF, 0x62A8, 0x99F8, 0xD02E, 0x8561, 0x43C8, 0xBDF0, 0x0593
	.2byte 0xCA4E, 0xF17D, 0x30FD, 0xC469, 0x662F, 0x08B1, 0x52F9, 0x21E6
	.2byte 0x7A2B, 0xDD39, 0x84FF, 0xC091, 0xD637, 0xD47F, 0x2D9B, 0x5DA1
	.2byte 0x3B6E, 0xB5C5, 0x4604, 0xF590, 0xEE7E, 0x831C, 0x0356, 0xB6AA
	.2byte 0x0017, 0x0135, 0x5579, 0x0B12, 0xBB1A, 0x31E7, 0x0228, 0x16C1
	.2byte 0xF6A2, 0xDB18, 0x9C89, 0x6838, 0x97AB, 0xC72A, 0xD73A, 0xF2C6
	.2byte 0x244C, 0xB058, 0xA022, 0x5E9D, 0xD9A7, 0xE9AE, 0xAF8C, 0x959F
	.2byte 0x28B7, 0x20D7, 0xB030, 0xC309, 0x19C0, 0x67D6, 0x003C, 0x7EE7
	.2byte 0xE9F4, 0x085A, 0xF8B8, 0x2E05, 0xA625, 0x9E5C, 0xD815, 0x0DE1
	.2byte 0xF611, 0x546B, 0xCD21, 0x4666, 0x5E84, 0xAD06, 0x3829, 0x44C5
	.2byte 0xA2CE, 0xF1AA, 0xC140, 0x7186, 0xB5EF, 0xFC36, 0xA8CB, 0x0A48
	.2byte 0x2745, 0x64A3, 0xAF8C, 0xB2C6, 0x9F07, 0x89DC, 0x17D3, 0x4979
	.2byte 0xFBFE, 0x1DD0, 0xB988, 0x4352, 0xBC01, 0x782B, 0x7D94, 0xC70E
	.2byte 0xDEA5, 0xD59B, 0xCCF7, 0x617A, 0xC274, 0x8139, 0x03AB, 0x96A0
	.2byte 0x37BD, 0x2D72, 0x753F, 0xC9D4, 0x8E6F, 0xF98D, 0xED62, 0xDB1C
	.2byte 0xDF04, 0xAC1B, 0x6C14, 0x4B63, 0xF0BF, 0xB482, 0xEC7B, 0x1A59
	.2byte 0x92D2, 0x1060, 0xB63D, 0x5FE6, 0x806E, 0x70C4, 0xF235, 0xD97C
	.2byte 0xEEE5, 0x41A4, 0x5B50, 0xDDBB, 0x4CF3, 0x1F9D, 0x5D57, 0x5551
	.2byte 0x97E3, 0x5842, 0x4D9C, 0x73BA, 0xC877, 0x3169, 0x26AE, 0xEA8A
	.2byte 0xDA22, 0xB387, 0x56FA, 0x930B, 0x3416, 0x33E8, 0xE453, 0xBEA9
	.2byte 0xB13A, 0x3EF5, 0x906A, 0xCF3B, 0x12FD, 0x8F9A, 0xA747, 0x9199
	.2byte 0xEB0F, 0x24FF, 0x2318, 0x854E, 0x7F0C, 0xE0A1, 0xE2D1, 0x2C2A
	.2byte 0x4A02, 0x4F1E, 0x9568, 0x8B98, 0x836D, 0x76CA, 0x6532, 0x132F
	.2byte 0xC382, 0x9AA4, 0xBA81, 0x6037, 0x3435, 0xFC80, 0xA851, 0x6567
	.2byte 0xED30, 0x5F10, 0xD34A, 0x272F, 0x13B9, 0x2AD2, 0xCCE1, 0xEFAE
	.2byte 0xEBBE, 0xF4BD, 0xCF43, 0xB3C5, 0x8884, 0xB7DD, 0x3940, 0xCE48
	.2byte 0x6D9B, 0x7261, 0x7EE7, 0xA14E, 0x532E, 0x773B, 0xE2C9, 0x3622
	.2byte 0x1B6E, 0x73B1, 0x03B2, 0x4C87, 0xA9D4, 0x4D0F, 0xD815, 0x6CAA
	.2byte 0x18F6, 0x4957, 0x5DFB, 0x7A14, 0x9463, 0xA011, 0xB09E, 0xDE05
	.2byte 0x46C8, 0xEE47, 0xDBDC, 0x2489, 0x9C91, 0x9729, 0xE97B, 0xC107
	.2byte 0x1EB8, 0xFDFE, 0xACC6, 0x6298, 0x4FF1, 0x79E0, 0xE86B, 0x7856
	.2byte 0xB68D, 0x0450, 0x86CA, 0x6F20, 0xE6EA, 0xE576, 0x171C, 0x747F
	.2byte 0xBC0D, 0x2C85, 0xF766, 0x96E4, 0x8B75, 0x3F4B, 0xD938, 0xAF7C
	.2byte 0xDA0B, 0x832D, 0x3132, 0xA2F5, 0x1D59, 0x4145, 0xBF3C, 0x1FF8
	.2byte 0xF98A, 0xD016, 0x2569, 0x1299, 0x9D21, 0x95AB, 0x01A6, 0xD7B5
	.2byte 0xC07D, 0xFF58, 0x0E3A, 0x92D1, 0x55E3, 0x089F, 0xD63E, 0x528E
	.2byte 0xFAA3, 0xC702, 0xCDDF, 0x8F64, 0x198C, 0xF3A7, 0x0C5E, 0x0A6A
	.2byte 0x09F0, 0x935B, 0x42C2, 0x0623, 0xEC71, 0xADB4, 0xCBBB, 0x7028
	.2byte 0xD51A, 0x5C33, 0x685A, 0x0044, 0x90A5, 0xC426, 0x3D2B, 0xF254
	.2byte 0x96AD, 0xDA1F, 0xED33, 0xE181, 0x6908, 0x0D0A, 0xDB35, 0x779A
	.2byte 0x64D1, 0xFC78, 0xAA1B, 0xD067, 0xA0DD, 0xFA6C, 0x6371, 0x0584
	.2byte 0x176A, 0x894F, 0x667F, 0xC650, 0x5592, 0x6FBD, 0xE7D2, 0x4072
	.2byte 0x8DBB, 0xEC06, 0x428A, 0xE488, 0x9D7E, 0x7A82, 0x2713, 0x411A
	.2byte 0xAFC8, 0xA476, 0xB4C2, 0xFE6D, 0x1CD9, 0x6130, 0xB37C, 0xEAF7
	.2byte 0x290F, 0xF23B, 0x51C1, 0xDE5F, 0xE52A, 0x2F99, 0x0B5D, 0xA32B
	.2byte 0x4AAB, 0x95A5, 0xD358, 0x56EE, 0x2831, 0x00CC, 0x1546, 0xCAE6
	.2byte 0x8638, 0x3C65, 0xF5E3, 0x9FD6, 0x5B09, 0x4983, 0x702D, 0x53A9
	.2byte 0x7DE2, 0xC4AC, 0x8E5E, 0xB825, 0xF4B9, 0x57F3, 0xF168, 0x47B2
	.2byte 0xA259, 0x20CE, 0x3479, 0x5C90, 0x0E1E, 0xBED5, 0x2223, 0xB1C9
	.2byte 0x1862, 0x162E, 0x913E, 0x078F, 0xD83F, 0x933D, 0xD49B, 0xDF85
	.2byte 0x21FB, 0x1174, 0x97C7, 0xD7DC, 0x4C19, 0x4598, 0xE943, 0x024B
	.2byte 0xBCC3, 0x049C, 0x6BF0, 0x7552, 0xA726, 0xF6C5, 0xBACF, 0xB0B7
	.2byte 0xAE5A, 0xA1BF, 0x038B, 0x8012, 0x6E0C, 0xEBF9, 0xC044, 0x24EF
	.2byte 0x10F8, 0xA88C, 0xE87B, 0xFF9E, 0x2CCD, 0x6036, 0x87B5, 0x94A6
	.2byte 0x5473, 0x3A14, 0x4E01, 0x1DB6, 0xFD37, 0x484D, 0x39CB, 0xE032
	.2byte 0x5429, 0x284E, 0x0FFC, 0xA46C, 0x8750, 0x493C, 0xF2B4, 0xB1F9
	.2byte 0xC358, 0x2E83, 0x5F71, 0x8A9B, 0x82CA, 0xC2BE, 0xBA75, 0x9160
	.2byte 0x78A8, 0x2A4C, 0x255B, 0x8BB0, 0xDAAF, 0x0000, 0x0000, 0x0000
	.2byte 0xA438, 0x3369, 0xD4F5, 0x6AA8, 0xD7EC, 0x74A6, 0x7BC7, 0x3C41
	.2byte 0xB721, 0x984A, 0x8DC8, 0x28F3, 0xF832, 0x91AB, 0xAD34, 0x8630
	.2byte 0x4CBC, 0xFFCE, 0x141E, 0x2EF9, 0x3159, 0x8587, 0xFCC2, 0xFD3E
	.2byte 0xBB56, 0x888B, 0xBF47, 0x6192, 0xB194, 0x7A51, 0x9C8F, 0xB049
	.2byte 0x9BB9, 0x0536, 0x103B, 0xD5D3, 0x0C96, 0xCB79, 0x604E, 0xA2B5
	.2byte 0xD1EE, 0x17BA, 0x1F09, 0x7893, 0xB435, 0x3A9D, 0x1D39, 0xC93F
	.2byte 0x7C2F, 0xCA0B, 0x37E6, 0x1BD0, 0x67D9, 0x1884, 0xE142, 0x5A7E
	.2byte 0xB897, 0xDF54, 0x7003, 0x6EDB, 0x63AE, 0x555D, 0xC44B, 0x89CC
	.2byte 0x13B3, 0x90F6, 0xE9B2, 0xA3BE, 0x2D19, 0x7323, 0x207F, 0x4002
	.2byte 0x9EC3, 0x6B1A, 0x52DA, 0x2980, 0x0D5F, 0xD68E, 0x0E22, 0xE36D
	.2byte 0xDC58, 0x75E0, 0x010A, 0x2650, 0x08A9, 0xFE4D, 0x15F7, 0x6CCF
	.2byte 0x4FF0, 0x645E, 0xC668, 0x8AAC, 0xDEB6, 0x4866, 0xED6F, 0x7145
	.2byte 0x3DEB, 0x9F04, 0x255C, 0xBD65, 0xDD53, 0xCD24, 0xEF72, 0xE89A
	.2byte 0xE716, 0xC100, 0x772C, 0x7DA5, 0x2A44, 0x6227, 0xF4C0, 0x071C
	.2byte 0x5B99, 0x8257, 0x06FA, 0xFB12, 0xAFA7, 0xD2AA, 0x2B8C, 0xF2D8
	.2byte 0x83A0, 0x7611, 0xC543, 0x8146, 0xE5F1, 0xEA95, 0xE2E4, 0x0FA1
	.2byte 0x2BD2, 0xA58E, 0x2609, 0x0FF7, 0x455B, 0x3CFD, 0x8C72, 0x22BF
	.2byte 0xCADA, 0xE7AF, 0x16B2, 0x5E8A, 0x6F94, 0xB7D6, 0x1CB1, 0x294C
	.2byte 0xB543, 0x189C, 0x31CE, 0xB684, 0x7160, 0x7F2A, 0x6E35, 0xF8A6
	.2byte 0x54EA, 0x7488, 0xAC03, 0x191B, 0x3D79, 0xFCEE, 0x429F, 0x93DB
	.2byte 0x80AD, 0x8B15, 0x415D, 0x48CD, 0x7CA3, 0x2C32, 0x1F63, 0xD1ED
	.2byte 0x4F04, 0x661E, 0x469B, 0xBB38, 0x067E, 0x95C8, 0x5F4A, 0x516B
	.2byte 0x97BE, 0x2E98, 0xBDEC, 0x0E05, 0x0AA0, 0x0152, 0x85C0, 0xD83B
	.2byte 0xFE12, 0x64E1, 0xF324, 0x4BF5, 0x497A, 0xE44E, 0x3425, 0x0853
	.2byte 0x1AE3, 0xEF86, 0xDFF1, 0x91EB, 0xC6D9, 0xD383, 0x141D, 0xB0A7
	.2byte 0x0B10, 0x4089, 0xB4D4, 0x3A02, 0x0CDD, 0x2F5A, 0x5628, 0xAE2D
	.2byte 0x55F6, 0xC1D5, 0xA844, 0xCF58, 0x9DB3, 0x23C5, 0xA43E, 0x7D30
	.2byte 0x136A, 0x61D0, 0xF03F, 0x67CB, 0x0DFF, 0x9268, 0xE081, 0x6962
	.2byte 0xAB75, 0x5911, 0xF2C9, 0x07E9, 0xC7A1, 0xC278, 0x3317, 0x6CF9
	.2byte 0xC4B8, 0xB9DC, 0x2790, 0xBCFB, 0x70AA, 0xE896, 0x7339, 0xF4C3
	.2byte 0x7787, 0xDE00, 0xA29A, 0xE27B, 0xFA36, 0x656D, 0x20D7, 0x575C
	.2byte 0x378F, 0x4D9E, 0x47A9, 0xE5CC, 0x998D, 0x7650, 0xBAE6, 0x8221
	.2byte 0xB00D, 0xEB75, 0x6D22, 0xCEE7, 0x632C, 0xDEE2, 0xF545, 0xBA44
	.2byte 0x951F, 0xE539, 0xD7A5, 0xB58D, 0x0793, 0xFDBC, 0x627E, 0x89B3
	.2byte 0x4859, 0x7FD3, 0xBED0, 0xF236, 0x539F, 0xE6B1, 0x82C0, 0x94B8
	.2byte 0x2F03, 0x243C, 0x000A, 0x4265, 0xE85C, 0x96D5, 0xA990, 0xB985
	.2byte 0xE9EA, 0x0E16, 0x7B84, 0x294E, 0x5E87, 0x9D35, 0x0686, 0xE1E0
	.2byte 0xE3EC, 0xEFC8, 0x525F, 0x64E4, 0x4630, 0x5ACD, 0xEDD1, 0x5181
	.2byte 0x0C3A, 0x66FE, 0x0467, 0x1ED6, 0xF78C, 0xBD33, 0xB291, 0xD4A8
	.2byte 0x4A14, 0x0B79, 0x5888, 0xB6C1, 0x1956, 0xF827, 0xAC23, 0x99B4
	.2byte 0xC312, 0xF320, 0x7834, 0x49DC, 0xD805, 0xBB55, 0x8A71, 0x1121
	.2byte 0xC7DB, 0xF19B, 0xF69E, 0x17F9, 0xFAFB, 0xA760, 0x8E6E, 0x8BCA
	.2byte 0x15AB, 0xDD3D, 0xA6C6, 0x80C2, 0xDA4C, 0x1D4F, 0x5D92, 0x6998
	.2byte 0xA232, 0x9C2B, 0x6A41, 0x1A6C, 0xA3C5, 0x72AA, 0xCC6B, 0x105B
	.2byte 0x4D57, 0x2868, 0xEE09, 0x40F0, 0xAD26, 0x2E2D, 0x9AA0, 0x7ACB
	.2byte 0x743E, 0x1B70, 0xFC43, 0xC477, 0x08B7, 0xCF1C, 0x7D18, 0x0F13
	.2byte 0x25BF, 0x6101, 0x37AE, 0xD22A, 0x7C97, 0xAF3F, 0x50DF, 0x6FA1
	.2byte 0xA4FF, 0x38C9, 0x838F, 0x5473, 0x0247, 0xD931, 0x763B, 0x4BF4
	.2byte 0x9C49, 0xC7B6, 0x1421, 0x5F52, 0xF3B7, 0xD5F2, 0x95A0, 0x2554
	.2byte 0xD9E7, 0xB0BF, 0x6913, 0x78F0, 0x33E0, 0x8C94, 0xDBE6, 0xA7B5
	.2byte 0xECC2, 0x63E3, 0x18B9, 0x4B74, 0xE501, 0x8EB1, 0x2735, 0xB43D
	.2byte 0x2648, 0x1FFA, 0xBB90, 0xD398, 0xDFA4, 0x3767, 0x5D80, 0xD262
	.2byte 0xE16F, 0x962D, 0xA86A, 0x9730, 0x89EA, 0x3ABE, 0x2219, 0x41AC
	.2byte 0x79F1, 0x85EE, 0x70C0, 0x0A1B, 0x7FC1, 0xD0A6, 0xF416, 0xFCBA
	.2byte 0x4E4A, 0xC912, 0x8A1A, 0x9DC5, 0x38D4, 0xDEAD, 0xC443, 0x03B3
	.2byte 0xF7A9, 0x596D, 0xA320, 0x364D, 0x865B, 0xAE61, 0x17A5, 0x93DC
	.2byte 0x502C, 0xEF2A, 0x6875, 0x7A8B, 0xD6FB, 0x009E, 0x2E02, 0xCDED
	.2byte 0x47AB, 0x82BD, 0x7111, 0xB266, 0x5E3C, 0x7C08, 0x6EF6, 0x0945
	.2byte 0x3F5A, 0x0F84, 0xCCDD, 0x730D, 0xF892, 0xE80B, 0xE9CF, 0x4F1C
	.2byte 0xDA10, 0x0E9F, 0xA258, 0xFF40, 0x8777, 0x2F60, 0x4CC3, 0x2888
	.2byte 0x1581, 0x0656, 0xD155, 0x8D9B, 0x5783, 0x6591, 0x34CE, 0x5342
	.2byte 0x040C, 0x467D, 0x0729, 0xFE24, 0x2B6C, 0x0532, 0xCB72, 0x1E7E
	.2byte 0xAAE4, 0x996B, 0xE2A1, 0xD81D, 0x3EC6, 0xC85C, 0x8FD7, 0x6439
	.2byte 0xB844, 0x2331, 0x7B51, 0xCA3B, 0xF5F9, 0xFD76, 0xEB9A, 0xAFBC
	.2byte 0x94C5, 0x263F, 0xF6F8, 0x936E, 0x7384, 0x82E7, 0x542C, 0x57AA
	.2byte 0x466D, 0x7A7E, 0xF7E6, 0x9A9F, 0xD6ED, 0xE1F0, 0xF567, 0xDEF4
	.2byte 0xD141, 0xFC4A, 0x53C8, 0x4D30, 0x4E36, 0x4031, 0x8D98, 0x0CA2
	.2byte 0xC0EA, 0x6C0A, 0x1858, 0x8FEE, 0x0062, 0x83E2, 0x0D5B, 0x8BC7
	.2byte 0xD704, 0x90A1, 0xE9CD, 0x1615, 0x5678, 0x9277, 0xD512, 0xE3CE
	.2byte 0x19BE, 0x3450, 0x514B, 0x32C1, 0x0607, 0x3735, 0x60AC, 0xAD2B
	.2byte 0x27EB, 0x089B, 0xDB7B, 0x4F03, 0x7911, 0x17D3, 0xF1D9, 0xA666
	.2byte 0xF3CF, 0x7299, 0x3ACA, 0x3D0B, 0x8947, 0x24DF, 0x6514, 0x3861
	.2byte 0xC26F, 0x13AF, 0x913E, 0x2A33, 0xDAE0, 0xA53B, 0x1B1D, 0xA022
	.2byte 0x6AC4, 0x95FA, 0xB6B2, 0x699C, 0xF280, 0x4421, 0xEF9D, 0xA7CB
	.2byte 0xA996, 0x1E43, 0x768A, 0x7F3C, 0xD0A8, 0x5920, 0xDC81, 0xC9CC
	.2byte 0x97A4, 0xBCBD, 0x7DAB, 0xA3B4, 0x52E4, 0xB08C, 0xB92F, 0x9EB7
	.2byte 0x4CE8, 0x4563, 0x0964, 0x5D88, 0xD21C, 0x7487, 0x485E, 0x556B
	.2byte 0xB3EC, 0x3905, 0x2D28, 0x10B1, 0xC6FE, 0x7029, 0x5AFB, 0x4923
	.2byte 0xDD86, 0x01E5, 0xD425, 0x42AE, 0x8575, 0xFF68, 0x2E5C, 0x1F02
	.2byte 0xBAB5, 0xBF7C, 0xFD71, 0xF98E, 0x5FB8, 0x0E0F, 0xC31A, 0xBBD8
	.2byte 0xAAF3, 0xC7A9, 0x4320, 0xC6D0, 0xF407, 0x009F, 0x898E, 0xBAE0
	.2byte 0x5A24, 0x1F2A, 0xDDD4, 0xE30D, 0xB0ED, 0xBEB2, 0x2B75, 0x2E66
	.2byte 0x176E, 0x7C52, 0x7691, 0x0159, 0x613C, 0x862C, 0xFD2D, 0xF60B
	.2byte 0xABE5, 0x2241, 0x6772, 0xC2AD, 0xBDFE, 0x96FA, 0x7B9E, 0x405F
	.2byte 0x7198, 0x4C88, 0xFBEB, 0x6BC9, 0xCEBB, 0xC003, 0x5B3A, 0xAE15
	.2byte 0x3E56, 0x4DD8, 0x3B50, 0x3584, 0x9734, 0xC454, 0xCC4E, 0x5ECD
	.2byte 0xE668, 0x4FB3, 0xB49D, 0x5DA5, 0xA378, 0xE938, 0x7E08, 0x606C
	.2byte 0xDB7F, 0xBF82, 0x30E2, 0x4819, 0x6D1A, 0xA2DF, 0x5895, 0x6951
	.2byte 0x31DA, 0x0C4B, 0xA40A, 0x4527, 0xD71E, 0x6587, 0x1BB7, 0xB542
	.2byte 0x8C26, 0x6F25, 0xEAFC, 0xEF8A, 0xA710, 0xBCF5, 0xA021, 0x4457
	.2byte 0x02D2, 0x2F63, 0x3DD5, 0x799C, 0x05F2, 0xE4CF, 0x29F1, 0x530E
	.2byte 0x7AB1, 0x1412, 0xF9F7, 0x118B, 0x36A6, 0xB6D6, 0xA118, 0x39EC
	.2byte 0x04C1, 0xE88D, 0x2899, 0x7390, 0x70D3, 0x1D8F, 0xCBF8, 0xF0B9
	.2byte 0xDE77, 0x9232, 0xE7EE, 0x8533, 0x13A8, 0x9A3F, 0xC8E1, 0x809B
	.2byte 0x0623, 0x3709, 0xD1FF, 0xAC81, 0x9464, 0xAF4A, 0x467D, 0x16C3
	.2byte 0x5547, 0xCAD9, 0x0F1C, 0x6A74, 0xDC49, 0x83C5, 0xB85C, 0x9362
	.2byte 0xDC2F, 0xD4F0, 0x8618, 0xB18C, 0x4FB9, 0xD597, 0x1B43, 0x4C1D
	.2byte 0xEA5B, 0xC311, 0x82FC, 0xA24A, 0xA07F, 0x47AF, 0xA30A, 0x59AD
	.2byte 0xE506, 0x2A4E, 0x6EE3, 0x40DB, 0x5383, 0x49B4, 0xBA71, 0x959B
	.2byte 0x51B3, 0xACD1, 0xAEC4, 0xCF4B, 0x4D69, 0x16EC, 0x0BA5, 0x9173
	.2byte 0x073B, 0x1984, 0xC26D, 0x8DB2, 0xBD25, 0x4896, 0xC520, 0x1AA1
	.2byte 0x8BC6, 0xE13F, 0x28A7, 0xE712, 0x76B0, 0x1C8E, 0xD045, 0x90CA
	.2byte 0x98D6, 0xA636, 0x3272, 0x8AA8, 0x0D3A, 0x9F37, 0x3C89, 0xDD67
	.2byte 0x2281, 0xE915, 0x4142, 0xF52E, 0x66D2, 0x6180, 0x0F54, 0x93AA
	.2byte 0xED5D, 0xE47D, 0x30C9, 0x3DE0, 0xE226, 0xF208, 0xA963, 0x242D
	.2byte 0x8F79, 0x9CDA, 0xBF55, 0x625C, 0x00B6, 0x276A, 0x0E92, 0x01D7
	.2byte 0xFFEB, 0x1F74, 0x1499, 0xF744, 0x8733, 0x6C94, 0x1350, 0x7568
	.2byte 0x1017, 0xBB2C, 0x6B04, 0xDFBC, 0x356F, 0xB7F1, 0x57C1, 0xE67C
	.2byte 0xB877, 0x653E, 0x5FD3, 0x64CB, 0x021E, 0x38AB, 0x8860, 0x5E9D
	.2byte 0xBEC8, 0xA4D8, 0x527B, 0x29F4, 0x0570, 0xCE78, 0x8539, 0x23F3
	.2byte 0x3458, 0x9EFB, 0x31CC, 0x46EF, 0x9A5A, 0xFE7A, 0x56FD, 0xEEDE
	.2byte 0x0CF9, 0xCDC0, 0x2BD9, 0xB509, 0xF6C7, 0x21FA, 0xF803, 0xE87E
	.2byte 0x9FBD, 0x7991, 0xCC78, 0x7FD5, 0x1BEE, 0xBBB7, 0xDCED, 0x6D9B
	.2byte 0xEF58, 0xFB5D, 0x6769, 0x1F4E, 0xAF62, 0x4BB8, 0xA8AE, 0x0860
	.2byte 0x8CAD, 0x24A1, 0x482F, 0x8A00, 0x90B1, 0x5307, 0x2612, 0x729D
	.2byte 0x561C, 0x5134, 0x462E, 0x81CF, 0xB3F3, 0x37F1, 0xFA3C, 0xBA06
	.2byte 0x5485, 0x1459, 0x365E, 0xA555, 0x0C52, 0x89CB, 0x97E2, 0x3B11
	.2byte 0xBED9, 0x1DFC, 0x137D, 0xA005, 0x41C3, 0xC5FD, 0x7633, 0x82CD
	.2byte 0x8816, 0x1A29, 0x871E, 0x406F, 0xE803, 0x3A50, 0xA6E4, 0xF44F
	.2byte 0xD698, 0x3971, 0xD0F2, 0xF03E, 0xEA8D, 0x2CA2, 0xA957, 0x0B8B
	.2byte 0x0DAA, 0xE931, 0xC235, 0x5CD1, 0x38FF, 0x01A7, 0xEC80, 0xF923
	.2byte 0xDF30, 0xEB2A, 0xB017, 0xD219, 0x6EDA, 0x259E, 0xB64C, 0xC693
	.2byte 0xDB75, 0x6B3F, 0x1573, 0xFE3D, 0x6566, 0xB57A, 0x9A32, 0xCA68
	.2byte 0x8E22, 0xC044, 0x43A3, 0x0E21, 0xB902, 0x4DC8, 0xB40A, 0xF6D3
	.2byte 0x4596, 0x5A84, 0x7018, 0xD4BF, 0xC4A4, 0x9CC1, 0xE047, 0xC7E5
	.2byte 0xE67E, 0x63DD, 0x6ACE, 0x2894, 0xE710, 0xBC5F, 0x0464, 0x2D8F
	.2byte 0x6CF7, 0x2B92, 0x83D8, 0x99E3, 0xDED7, 0x5BAB, 0x4A74, 0x77C9
	.2byte 0xF57B, 0x0F20, 0xF861, 0x4286, 0x7C49, 0x95AC, 0x27E1, 0x09B2
	.2byte 0x0BD3, 0x6F0A, 0x3977, 0x2117, 0x8FC7, 0xD5E5, 0xB5B9, 0x11A4
	.2byte 0xDCA3, 0xCDBB, 0x1A81, 0x8AB7, 0xD95B, 0x4761, 0x8E88, 0xB80C
	.2byte 0x3B3A, 0x9A54, 0xFD2D, 0x53B4, 0xC35F, 0x6960, 0xB1AB, 0x2656
	.2byte 0x837E, 0xB33D, 0x4A0D, 0x5A1D, 0x1E59, 0xD635, 0x8CF3, 0x9B18
	.2byte 0x66BF, 0xE262, 0x927B, 0xFF2E, 0x5CCF, 0x25C4, 0xAFD2, 0x2963
	.2byte 0xA5B2, 0xF96A, 0xC1FB, 0x1487, 0x5573, 0x2C44, 0x3179, 0xF42A
	.2byte 0x4101, 0x2480, 0x1965, 0x4D9D, 0x9CE8, 0x13A2, 0xC0C5, 0xFE6B
	.2byte 0xCE50, 0xF804, 0x48A8, 0x0616, 0xBE67, 0xBAEA, 0xC60F, 0xD774
	.2byte 0x85B6, 0xD80E, 0x4C93, 0x15BD, 0xE678, 0x0305, 0x32F7, 0x34E4
	.2byte 0xAD30, 0x98A1, 0x279E, 0xF643, 0x643C, 0x49BC, 0xF099, 0xDD12
	.2byte 0xD1C9, 0x5D7C, 0x2275, 0x1F28, 0x2F09, 0xC284, 0x6DFA, 0x233F
	.2byte 0x7D91, 0x8982, 0x8658, 0xDF76, 0xE9AA, 0xDBAC, 0x2BF5, 0x9042
	.2byte 0x20E1, 0xA0ED, 0xD452, 0x10EF, 0x3EE3, 0x1CDA, 0x96B0, 0x7238
	.2byte 0x9F7A, 0x1BDE, 0x02A6, 0x4E97, 0x3336, 0x6EE0, 0xC84F, 0xFC37
	.2byte 0x71EC, 0x9400, 0x95D0, 0xA7CB, 0xF170, 0xA98B, 0x40F2, 0x4B46
	.2byte 0x45EE, 0x518D, 0xCC6C, 0xCAEB, 0x7F68, 0x07AE, 0x5E57, 0x08E7
	.2byte 0x616E, 0x7320, 0x3A20, 0x2564, 0x2025, 0x6420, 0x2564, 0x2025
	.2byte 0x6420, 0x2564, 0x2025, 0x640A, 0x0000, 0x0000, 0x7261, 0x6E64
	.2byte 0x3A20, 0x2564, 0x2025, 0x6420, 0x2564, 0x2025, 0x6420, 0x2564
	.2byte 0x2025, 0x6420, 0x2564, 0x2025, 0x6420, 0x2564, 0x2025, 0x640A
	.2byte 0x0000, 0x0000, 0x7430, 0x2020, 0x3A20, 0x2564, 0x2025, 0x6420
	.2byte 0x2564, 0x2025, 0x6420, 0x2564, 0x2025, 0x6420, 0x2564, 0x2025
	.2byte 0x6420, 0x2564, 0x2025, 0x640A, 0x0000, 0x0000, 0x6B65, 0x7920
	.2byte 0x3A20, 0x2564, 0x2025, 0x6420, 0x2564, 0x2025, 0x6420, 0x2564
	.2byte 0x2025, 0x6420, 0x0A00, 0x0000, 0x6674, 0x2020, 0x3A20, 0x2564
	.2byte 0x2025, 0x6420, 0x2564, 0x2025, 0x6420, 0x2564, 0x2025, 0x6420
	.2byte 0x2564, 0x2025, 0x640A, 0x0000, 0x7362, 0x2020, 0x3A20, 0x2564
	.2byte 0x2025, 0x6420, 0x2564, 0x2025, 0x6420, 0x2564, 0x2025, 0x6420
	.2byte 0x2564, 0x2025, 0x640A, 0x0000
.global lbl_8043DA28
lbl_8043DA28:
	.ascii "USB ERR: "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Library is already initialized. Heap Id = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "iusb size: %d lo: %x hi: %x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Not enough IPC arena\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Not enough heaps\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "_intrBlkCtrlCb returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "_intrBlkCtrlCb: nclean = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__intBlkCtrlCb: got invalid nclean\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Freeing clean[%d] = %x\n"
	.byte 0x00
	.ascii "iosFree(%d, 0x%x) failed: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "cb = %x cbArg = %x\n"
	.byte 0x00
	.ascii "iosAllocAligned(%d, %u) failed: %d\n"
	.byte 0x00
	.ascii "OpenDeviceIds: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/dev/usb/%s/%x/%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "OpenDevice - %s\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "OpenDevice returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "OpenDevice\n"
	.byte 0x00
	.ascii "OpenDeviceIdsAsync: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.ascii "CloseDevice\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "CloseDevice returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "CloseDeviceAsync: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "openDevice: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.ascii "getDeviceList: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__IntrBlkMsgInt: Not enough memory\n"
	.byte 0x00
	.ascii "intr/blk ioctl returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "IntBlkMsgInt (async): Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "intrblkmsg: cb = 0x%x cbArg = 0x%x\n"
	.byte 0x00
	.ascii "ctrlmsg: bad data buffer\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Ctrl Msg: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "CtrlMsgInt (async): Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.ascii "ctrlmsgint: cb = 0x%x cbArg = 0x%x\n"
	.byte 0x00
	.ascii "Ctrl Msg async returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GetStrCb returned: %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "GetStrCb: buf = 0x%x buflen = %u\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Failed to convert buffer from unicode 2 ascii\n"
	.byte 0x00
	.byte 0x00
	.ascii "calling cb 0x%x with arg 0x%x\n"
	.byte 0x00
	.byte 0x00
	.ascii "Failed __CtrlMsg: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Failed to convert unicode 2 ascii\n"
	.byte 0x00
	.byte 0x00
	.ascii "GetStr - _GetStrCb\n"
	.byte 0x00
	.ascii " GetAsciiStrAsync: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "__CtrlMsgInt failed %d\n"
	.byte 0x00
	.ascii "GetDescrCb returned: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GetDevDescr\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GetDevDescr: Not enough memory\n"
	.byte 0x00
	.ascii "GetDevDescr: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GetDevDescr - _GetDescrCb\n"
	.byte 0x00
	.byte 0x00
	.ascii "GetDevDescrAsync: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "DeviceRemovalNotifyAsync\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Invalid parameters for ISO transfer request\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "IUSB_IsoMsgAsync: Not enough memory\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Open(%s) failed\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E048
lbl_8043E048:
	.float 6.067207476497916e-36, -4.388300683073444e-19, 2.5880156636097823e-26, 1.0747831703211093e-38
	.float 2.461262763255845e-38, 1.5595988848969782e-33, -6.845234930089163e-36, 1.5595988848969782e-33
	.float -6.892255421586868e-36, 1.5595988848969782e-33, -6.939274478154946e-36, 1.5595988848969782e-33
	.float -6.986294252187837e-36, 1.5595988848969782e-33, -7.033314026220729e-36, 1.5595988848969782e-33
	.float -7.080348149549895e-36, 1.5595988848969782e-33, -7.12735716161058e-36, 1.5595988848969782e-33
	.float -7.174387697615678e-36, 1.5595988848969782e-33, -7.221393122352295e-36, 1.5595988848969782e-33
	.float -7.268412896385186e-36, 1.5595988848969782e-33, -7.550535127906604e-36, 1.558846568512452e-33
	.float -7.597565663911701e-36, 1.558846568512452e-33, -7.64457324104276e-36, 1.558846568512452e-33
	.float -8.302848642573613e-36, 1.558846568512452e-33, -8.349870569000946e-36, 1.558846568512452e-33
	.float -8.396893930357906e-36, 1.558846568512452e-33, -8.443918726644493e-36, 1.558846568512452e-33
	.float -8.49094137053664e-36, 1.558846568512452e-33, -8.537961144569531e-36, 1.558846568512452e-33
	.float -8.584980918602423e-36, 1.558846568512452e-33, -8.632000692635314e-36, 1.558846568512452e-33
	.float -8.914119336832663e-36, 1.558846568512452e-33, -8.961139110865555e-36, 1.558846568512452e-33
	.float -9.008158884898446e-36, 1.558846568512452e-33, -2.0
.global lbl_8043E124
lbl_8043E124:
	.ascii "App_MEMalloc\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E134
lbl_8043E134:
	.ascii "App_MEMfree\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E144
lbl_8043E144:
	.ascii "SyncFlushCallback() : %d, Sync: %d\n"
	.byte 0x00
.global lbl_8043E168
lbl_8043E168:
	.ascii "DeleteFlushCallback() : %d, Delete: %d\n"
	.byte 0x00
.global lbl_8043E190
lbl_8043E190:
	.ascii "ShutFlushCallback() : %d, Shutdown: %d\n"
	.byte 0x00
.global lbl_8043E1B8
lbl_8043E1B8:
	.ascii "%d devices is stored into SC.\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E1D8
lbl_8043E1D8:
	.ascii "Pairing Done\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Nintendo RVL-CNT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "write stored link key\n"
	.byte 0x00
	.byte 0x00
	.ascii "addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "key  : %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.ascii "Cancel searching because 4 connections exist.\n"
	.byte 0x00
	.byte 0x00
	.ascii "WARNING: Illigal status\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E2E4
lbl_8043E2E4:
	.2byte 0x802B, 0x5D24, 0x802B, 0x5C58, 0x802B, 0x5C70, 0x802B, 0x5C7C
	.2byte 0x802B, 0x5D24, 0x802B, 0x5C88, 0x802B, 0x5D24, 0x802B, 0x5D24
	.2byte 0x802B, 0x5CD0, 0x6863, 0x695F, 0x7665, 0x7273, 0x696F, 0x6E20
	.2byte 0x2020, 0x3A20, 0x2530, 0x3278, 0x0A00, 0x0000, 0x6863, 0x695F
	.2byte 0x7265, 0x7669, 0x7369, 0x6F6E, 0x2020, 0x3A20, 0x2530, 0x3478
	.2byte 0x0A00, 0x0000, 0x6C6D, 0x705F, 0x7665, 0x7273, 0x696F, 0x6E20
	.2byte 0x2020, 0x3A20, 0x2530, 0x3278, 0x0A00, 0x0000, 0x6C6D, 0x705F
	.2byte 0x7375, 0x6276, 0x6572, 0x7369, 0x6F6E, 0x3A20, 0x2530, 0x3478
	.2byte 0x0A00, 0x0000, 0x6D61, 0x6E75, 0x6661, 0x6374, 0x7572, 0x6572
	.2byte 0x2020, 0x3A20, 0x2530, 0x3478, 0x0A00, 0x0000, 0x203D, 0x3D3E
	.2byte 0x2032, 0x3034, 0x3520, 0x6669, 0x726D, 0x7761, 0x7265, 0x2076
	.2byte 0x6572, 0x2E30, 0x3032, 0x2E30, 0x3033, 0x2E30, 0x3134, 0x2E25
	.2byte 0x640A, 0x0000, 0x5755, 0x4469, 0x4170, 0x7065, 0x6E64, 0x5275
	.2byte 0x6E74, 0x696D, 0x6550, 0x6174, 0x6368, 0x2829, 0x0A00, 0x0000
	.2byte 0x4E69, 0x6E74, 0x656E, 0x646F, 0x2052, 0x564C, 0x2D43, 0x4E54
	.2byte 0x2D30, 0x3100, 0x6E61, 0x6D65, 0x203A, 0x2025, 0x730A, 0x0000
.global lbl_8043E3E4
lbl_8043E3E4:
	.ascii "InitCore\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E3F0
lbl_8043E3F0:
	.ascii "BTA_Init() is started\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E408
lbl_8043E408:
	.ascii "BTA_Init() is done\n"
	.byte 0x00
.global lbl_8043E41C
lbl_8043E41C:
	.ascii "WUDShutdown()\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E42C
lbl_8043E42C:
	.ascii "WUDSetSyncDeviceCallback\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDSetClearDeviceCallback\n"
	.byte 0x00
	.byte 0x00
	.ascii "WUDStartSyncDevice()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E47C
lbl_8043E47C:
	.ascii "WUDStartSyncSimple()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDCancelSyncDevice()\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E4AC
lbl_8043E4AC:
	.ascii "WUDStopSyncSimple()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDStartClearDevice()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E4E0
lbl_8043E4E0:
	.ascii "WUDSetDisableChannel()\n"
	.byte 0x00
.global lbl_8043E4F8
lbl_8043E4F8:
	.ascii "BTM_SetAfhChannels() : %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E514
lbl_8043E514:
	.ascii "WUDSetHidRecvCallback()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E530
lbl_8043E530:
	.ascii "WUDSetHidConnCallback()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E54C
lbl_8043E54C:
	.2byte 0x7099, 0x0800, 0xB400, 0x0000, 0x8843, 0xD107, 0x090C, 0x0843
	.2byte 0xA062, 0x1923, 0xDB01, 0x3380, 0x7CF7, 0x88F8, 0x2876, 0x80F7
	.2byte 0x17FF, 0x4378, 0xEB70, 0x1923, 0xDB01, 0x3387, 0x7CF7, 0xBCFB
	.2byte 0x0B60, 0xA37B, 0x0149, 0x0B60, 0x90F7, 0x96FB, 0xD81D, 0x0800
	.2byte 0x00F0, 0x04F8, 0x0023, 0x79F7, 0xE3FA, 0x0000, 0x00B5, 0x0023
	.2byte 0x1149, 0x0B60, 0x1D21, 0xC903, 0x0B60, 0x7D20, 0x8001, 0x0138
	.2byte 0xFDD1, 0x0E4B, 0x0E4A, 0x1360, 0x4720, 0x0021, 0x96F7, 0x96FF
	.2byte 0x4620, 0x0021, 0x96F7, 0x92FF, 0x0A4A, 0x1368, 0x0A48, 0x0340
	.2byte 0x1360, 0x0A4A, 0x1368, 0x0A48, 0x0340, 0x1360, 0x094A, 0x1368
	.2byte 0x0948, 0x0340, 0x1360, 0x00BD, 0x2480, 0x0E00, 0x8103, 0x0FFE
	.2byte 0x5C00, 0x0F00, 0x60FC, 0x0E00, 0xFEFF, 0x0000, 0xFCFC, 0x0E00
	.2byte 0xFF9F, 0x0000, 0x30FC, 0x0E00, 0x7FFF, 0x0000
.global lbl_8043E608
lbl_8043E608:
	.2byte 0x0720, 0xBC65, 0x0100, 0x8442, 0x09D2, 0x8442, 0x09D1, 0x2184
	.2byte 0x5A00, 0x0083, 0xF074, 0xFF09, 0x0C08, 0x4322, 0x0061, 0x0000
	.2byte 0x83F0, 0x40FC, 0x0000, 0x0000, 0x23CC, 0x9F01, 0x006F, 0xF0E4
	.2byte 0xFC03, 0x287D, 0xD124, 0x3C62, 0x0100, 0x2820, 0x00E0, 0x608D
	.2byte 0x2368, 0x2504, 0x1201, 0x0020, 0x1C20, 0x1C24, 0xE0B0, 0x2126
	.2byte 0x742F, 0x0000, 0x86F0, 0x18FD, 0x214F, 0x3B60
.global lbl_8043E664
lbl_8043E664:
	.ascii "start WUDiInitSub()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDiAutoSync()\n"
	.byte 0x00
	.ascii "WUDiCancelSync()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDiDeleteAllLinkKeys()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DmAddDevice(): %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HhAddDev()\n"
	.byte 0x00
	.ascii "WUDiRemoveDevice : \n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " handle : %d,  addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "remove device info from database.\n"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HhRemoveDev()\n"
	.byte 0x00
	.byte 0x00
	.ascii " handle : %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DmRemoveDevice(): %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043E79C
lbl_8043E79C:
	.ascii "new entry index is %d\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043E7B4
lbl_8043E7B4:
	.ascii "WARNING: USB_CLOSE_FAILURE!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WUDSecurityCallback: "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_ENABLE_EVT\n"
	.byte 0x00
	.ascii "host : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DISABLE_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_PIN_REQ_EVT\n"
	.byte 0x00
	.ascii "BTA_DM_AUTH_CMPL_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "  addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.ascii "  key  : %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "  result = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_AUTHORIZE_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_LINK_UP_EVT\n"
	.byte 0x00
	.ascii "   addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s --> %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "not paired"
	.byte 0x00
	.byte 0x00
	.ascii "4 links exist"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_LINK_DOWN_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "result: %d\n"
	.byte 0x00
	.ascii "this device in not paired\n"
	.byte 0x00
	.byte 0x00
	.ascii "WARNING: link num count is reset.\n"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_SIG_STRENGTH_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_DM_BUSY_LEVEL_EVT\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043EA30
lbl_8043EA30:
	.2byte 0x802B, 0x809C, 0x802B, 0x8148, 0x802B, 0x8164, 0x802B, 0x8204
	.2byte 0x802B, 0x8310, 0x802B, 0x8320, 0x802B, 0x840C, 0x802B, 0x8560
	.2byte 0x802B, 0x8570, 0x494E, 0x5155, 0x4952, 0x5920, 0x5245, 0x5355
	.2byte 0x4C54, 0x3A20, 0x2530, 0x3278, 0x3A25, 0x3032, 0x783A, 0x2530
	.2byte 0x3278, 0x3A25, 0x3032, 0x783A, 0x2530, 0x3278, 0x3A25, 0x3032
	.2byte 0x7820, 0x2020, 0x2530, 0x3278, 0x2530, 0x3278, 0x2530, 0x3278
	.2byte 0x2020, 0x2025, 0x640A, 0x0000, 0x494E, 0x5155, 0x4952, 0x595F
	.2byte 0x434F, 0x4D50, 0x4C45, 0x5445, 0x440A, 0x0000, 0x4449, 0x5343
	.2byte 0x4F56, 0x4552, 0x2052, 0x4553, 0x554C, 0x543A, 0x2020, 0x2530
	.2byte 0x3278, 0x3A25, 0x3032, 0x783A, 0x2530, 0x3278, 0x3A25, 0x3032
	.2byte 0x783A, 0x2530, 0x3278, 0x3A25, 0x3032, 0x7820, 0x2020, 0x2573
	.2byte 0x2028, 0x2530, 0x3478, 0x290A, 0x0000, 0x0000, 0x4449, 0x5343
	.2byte 0x4F56, 0x4552, 0x2043, 0x4F4D, 0x504C, 0x4554, 0x4544, 0x0A00
	.2byte 0x5345, 0x4152, 0x4348, 0x2043, 0x414E, 0x4345, 0x4C0A, 0x0A00
	.2byte 0x5761, 0x726E, 0x696E, 0x673A, 0x2053, 0x6561, 0x7263, 0x6820
	.2byte 0x4361, 0x6C6C, 0x6261, 0x636B, 0x2072, 0x6574, 0x7572, 0x6E73
	.2byte 0x2069, 0x6E76, 0x616C, 0x6964, 0x2065, 0x7665, 0x6E74, 0x0A00
	.2byte 0x5653, 0x453A, 0x2D20, 0x494E, 0x4954, 0x4941, 0x5445, 0x5F50
	.2byte 0x4149, 0x5249, 0x4E47, 0x0A00, 0x5653, 0x453A, 0x2D20, 0x4445
	.2byte 0x4C45, 0x5445, 0x5F41, 0x4C4C, 0x5F4B, 0x4559, 0x530A, 0x0000
	.2byte 0x5653, 0x453A, 0x2D20, 0x5349, 0x5F50, 0x4F52, 0x545F, 0x5354
	.2byte 0x4154, 0x5553, 0x2020, 0x7374, 0x6174, 0x7573, 0x203D, 0x2025
	.2byte 0x640A, 0x0000, 0x5653, 0x453A, 0x2D20, 0x5741, 0x5443, 0x485F
	.2byte 0x444F, 0x475F, 0x5245, 0x5345, 0x5420, 0x2048, 0x5720, 0x6572
	.2byte 0x726F, 0x7220, 0x3D20, 0x2564, 0x0A00, 0x0000, 0x4D4F, 0x4455
	.2byte 0x4C45, 0x2046, 0x4154, 0x414C, 0x2045, 0x5252, 0x4F52, 0x0A00
.global lbl_8043EBD0
lbl_8043EBD0:
	.ascii "WUDDeviceStatusCallback\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043EBEC
lbl_8043EBEC:
	.ascii "---- WARNING: USB FATAL ERROR! ----\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_CB_EVT_RETURN_LINK_KEYS\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BD_ADDR:  %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "LINKKEY: %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "this device is not stored in NAND\n"
	.byte 0x00
	.byte 0x00
	.ascii "   LAST: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.ascii "BTM_CB_EVT_READ_STORED_LINK_KEYS\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "  status: %d  max_keys: %d  num_keys: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_CB_EVT_WRITE_STORED_LINK_KEYS\n"
	.byte 0x00
	.byte 0x00
	.ascii "  status: %d  num_keys: %d\n"
	.byte 0x00
	.ascii "BTM_CB_EVT_DELETE_STORED_LINK_KEYS\n"
	.byte 0x00
	.ascii "WARNING: no entry is deleted\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Unknown event\n"
	.byte 0x00
	.byte 0x00
	.ascii "WUDPowerManagerCallback\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "hci_status = %d"
	.byte 0x00
	.ascii " addr = %02x:%02x:%02x:%02x:%02x:%02x,  status = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "_WUDEnableTestMode\n"
	.byte 0x00
	.ascii "_WUDStartSyncDevice()\n"
	.byte 0x00
	.byte 0x00
	.ascii "_WUDDeleteStoreDevice()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "dev number = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043EEB0
lbl_8043EEB0:
	.ascii "BTA_HH_ENABLE_EVT\n"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_DISABLE_EVT\n"
	.byte 0x00
	.ascii "BTA_HH_OPEN_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "handle: %d, addr: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "error code: %d\n"
	.byte 0x00
	.ascii "BTA_HH_CLOSE_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "device handle : %d   status = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_SET_RPT_EVT\n"
	.byte 0x00
	.ascii "BTA_HH_GET_RPT_EVT\n"
	.byte 0x00
	.ascii "BTA_HH_SET_PROTO_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_PROTO_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_SET_IDLE_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_IDLE_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_DCSP_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_ADD_DEV_EVT\n"
	.byte 0x00
	.ascii "result: %d, handle: %d, addr: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_RMV_DEV_EVT\n"
	.byte 0x00
	.ascii "BTA_HH_VS_UNPLUG_EVT\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "WARNING: link num count is modified.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F0B0
lbl_8043F0B0:
	.4byte 0x802B907C, 0x802B9098, 0x802B90A8, 0x802B9294
	.4byte 0x802B9370, 0x802B9360, 0x802B9390, 0x802B9380
	.4byte 0x802B93B0, 0x802B93A0, 0x802B93C0, 0x802B93D0
	.4byte 0x802B9420, 0x802B9460, 0x802B94FC, 0x802B9470
.global lbl_8043F0F0
lbl_8043F0F0:
	.ascii "Invalid app_id [%d]\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F108
lbl_8043F108:
	.ascii "bta_hh_co_open()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F11C
lbl_8043F11C:
	.ascii "bta_hh_co_close()\n"
	.byte 0x00
	.byte 0x00
.global lbl_8043F130
lbl_8043F130:
	.ascii "getbuf: Size is zero"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F148
lbl_8043F148:
	.ascii "getbuf: Size is too big"
	.byte 0x00
	.ascii "Free - Buf Corrupted"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Freeing Linked Buf"
	.byte 0x00
	.byte 0x00
	.ascii "Bad Buf QId"
	.byte 0x00
	.ascii "Sending to unknown dest"
	.byte 0x00
	.ascii "Send - Buffer corrupted"
	.byte 0x00
	.ascii "Send - buffer linked"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F1E0
lbl_8043F1E0:
	.ascii "Enqueue - Buffer corrupted"
	.byte 0x00
	.byte 0x00
.global lbl_8043F1FC
lbl_8043F1FC:
	.ascii "Eneueue - buf already linked"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F21C
lbl_8043F21C:
	.ascii "Eneueue head - buf already linked"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "GKI_get_buf_start:: bad addr"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F260
lbl_8043F260:
	.ascii "Deleting bad pool"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCIS: Unable to allocate buffer for incoming HCI message."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F2B4
lbl_8043F2B4:
	.ascii "HCIS: Invalid length for incoming HCI message."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F2E8
lbl_8043F2E8:
	.ascii "HCISU_LOG: uusb_ReadIntrDataCB called\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_ReadIntrDataCB: usb_state != UUSB_PPC_OPENED_ST\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: ************\n* uusb_ReadIntrDataCB(): usb_state != UUSB_PPC_OPENED_ST - stop reading\n************\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_ReadIntrDataCB(): Got Error code %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: uusb_ReadIntrDataCB: len(%d) offset (%d) cp_len(%d) data = "
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_readBulkDataCB: usb_state != UUSB_PPC_OPENED_ST\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: ****\n* uusb_readBulkDataCB(): usb_state != UUSB_PPC_OPENED_ST - stop reading\n****\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_ReadBulkDataCB(): Got Error code %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: uusb_ReadBulkDataCB: len(%d) offset(%d) cp_len(%d) data = "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: ****\n* uusb_issue_bulk_read(): unable to get buffer - try again\n****\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_issue_bulk_read: IUSB_ReadBlkMsgAsync failed with err = %d\n"
	.byte 0x00
	.ascii "HCISU_ERR: ****\n* uusb_issue_bulk_read: IUSB_ReadBlkMsgAsync failed with err = %d\n****\n"
	.byte 0x00
	.ascii "HCISU_ERR: ****\n* uusb_issue_intr_read(): unable to get buffer - try again\n****\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: IUSB_ReadIntrMsgAsync failed with err = %d\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: ****\n* uusb_issue_intr_read(): IUSB_ReadIntrMsgAsync failed with err = %d\n****\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: uusb_WriteCtrlDataCB called with err = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_WriteCtrlDataCB(): Got error (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_WriteCtrlDataCB(): error - unable to write data packet\n"
	.byte 0x00
	.ascii "HCISU_LOG: uusb_WriteBulkDataCB called with err = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_WriteBulkDataCB(): Got error (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: uusb_WriteBulkDataCB(): error - unable to write data packet\n"
	.byte 0x00
.global lbl_8043F8B8
lbl_8043F8B8:
	.ascii "HCISU_ERR: ERROR from IUSB_OpenDeviceIds (%d) : Device (vendor 0x%x product 0x%x) not found\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8043F918
lbl_8043F918:
	.ascii "HCISU_ERR: No suitable Bluetooth Device was found. Exiting...\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Register: ERROR - failed IPCCltInit\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Register: ERROR - failed IUSB_OpenLib\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Register: Error returned from get_devId()\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Register: uusb_get_dev_id returned with usb.devId = %d\n"
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Register: Unable to create memory pools\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Register: hci_cmd_usb_pool_id (%d) hci_acl_usb_pool_id(%d)\n"
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Open: USB is not in registered state, unable to open\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Open: USB Buffer Pool's Invalid\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Open: hci_cmd_usb_pool_id = %d\n"
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Open: hci_acl_usb_pool_id = %d\n"
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Write: usb_state != UUSB_PPC_OPENED_ST\n"
	.byte 0x00
	.ascii "HCISU_LOG: buffer size = %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_LOG: UUSB_Write: ep(%d) len(%d) data = "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Write: Unable to get buffer from hci_cmd_usb_pool\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_WRITE(): Ctrl Queue count =  %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: *************************************************************************************\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteCtrlMsgAsync error...  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteCtrlMsgAsync error... IOS_ERROR_FAIL_ALLOC  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteCtrlMsgAsync error... IOS_ERROR_QFULL  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Write: Unable to get buffer from hci_acl_usb_pool\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_Write - writing mem data\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: UUSB_WRITE(): Bulk Queue count =  %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteBlkMsgAsync error...  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteBlkMsgAsync error... IOS_ERROR_FAIL_ALLOC  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.byte 0x00
	.ascii "HCISU_ERR: * UUSB_Write(): IUSB_WriteBlkMsgAsync error... IOS_ERROR_QFULL  (%d), writes outstanding (%d)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440030
lbl_80440030:
	.ascii "BTA got event 0x%x"
	.byte 0x00
	.byte 0x00
.global lbl_80440044
lbl_80440044:
	.ascii "BTA got unregistered event id %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440068
lbl_80440068:
	.ascii " bta_dm_disable_timer_cback  "
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440088
lbl_80440088:
	.ascii " bta_dm_search_timer_cback  "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804400A8
lbl_804400A8:
	.ascii " bta_dm_pin_cback() -> Failed to start Remote Name Request  "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804400E8
lbl_804400E8:
	.ascii " timer stopped  "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804400FC
lbl_804400FC:
	.ascii "bta_dm_l2cap_server_compress_cback, BTA ID %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044012C
lbl_8044012C:
	.ascii "bta_dm_compress_cback open app_id %d, BTA id %d, state %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440168
lbl_80440168:
	.ascii "bta_dm_compress_cback close app_id %d, BTA id %d, state %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804401A8
lbl_804401A8:
	.ascii "bta_dm_act no more connected service cbs"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804401D4
lbl_804401D4:
	.ascii "bta_dm_act no more pm timers"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804401F8
lbl_804401F8:
	.ascii "bta_hh_sdp_cback: p_cb: %d result 0x%02x,                             attr_mask 0x%02x"
	.byte 0x00
	.byte 0x00
.global lbl_80440250
lbl_80440250:
	.ascii "bta_hh_start_sdp:: skip SDP for known devices"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440280
lbl_80440280:
	.ascii "bta_hh_start_sdp:  HID_HostGetSDPRecord failed:                 Status 0x%2X"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804402D0
lbl_804402D0:
	.ascii "bta_hh_sdp_cmpl:  status 0x%2X"
	.byte 0x00
	.byte 0x00
.global lbl_804402F0
lbl_804402F0:
	.ascii "bta_hh_sdp_cmpl:  HID_HostOpenDev failed:                     Status 0x%2X"
	.byte 0x00
	.byte 0x00
.global lbl_8044033C
lbl_8044033C:
	.ascii "bta_hh_open_act:  Device[%d] connected"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_RPT_EVT"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_SET_RPT_EVT"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_PROTO_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_SET_PROTO_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_GET_IDLE_EVT"
	.byte 0x00
	.ascii "BTA_HH_SET_IDLE_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_OPEN_EVT"
	.byte 0x00
	.ascii "Unknown event"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HANDSHAKE received for: event = %s data= %d"
	.byte 0x00
	.ascii "unknown transaction type"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440450
lbl_80440450:
	.4byte 0x802C1C24, 0x802C1C24, 0x802C1BB8, 0x802C1C24
	.4byte 0x802C1AC8, 0x802C1B48, 0x802C1AC8, 0x802C1B48
	.4byte 0x802C1AC8, 0x802C1B48
.global lbl_80440478
lbl_80440478:
	.float -4.050290660509022e-39, -4.050290660509022e-39, -4.0502794501213075e-39, -4.050290660509022e-39
	.float -4.05021218779502e-39, -4.0502233981827345e-39, -4.050234608570449e-39, -4.0502458189581637e-39
	.float -4.050257029345878e-39, -4.050268239733593e-39, 244.44696044921875, 1.6623461029566063e-19
	.float 10.027928352355957, 4.2319036543007216e+21, 6.733115179739552e+22, 1.7334384949663217e-07
	.float 1.1633556993434852e+33, 4.657021442641101e+16, 0.0, 1.801771085296472e+25
	.float 1.1286101716572237e+27, 2.0705448718498936e-19, 1.8830647676342819e+28, 7.397859073501567e+31
	.float 2.0707784211259692e-19, 4.734176272172499e+22, 3.174407390782105e+30, 3317891596288.0
	.float 2.8756579613951184e+20, 2.6312787477870202e+20, 2.0805404687962437e-07, 6.945023024982614e+31
	.float 5.764607523034235e+17
.global lbl_804404FC
lbl_804404FC:
	.4byte 0x802C1DE8, 0x802C1DE8, 0x802C1DE0, 0x802C1DE8
	.4byte 0x802C1DB0, 0x802C1DB8, 0x802C1DC0, 0x802C1DC8
	.4byte 0x802C1DD0, 0x802C1DD8
.global lbl_80440524
lbl_80440524:
	.float -4.051170675944618e-39, -4.051170675944618e-39, -4.0511594655569035e-39, -4.051170675944618e-39
	.float -4.051092203230616e-39, -4.0511034136183305e-39, -4.051114624006045e-39, -4.0511258343937597e-39
	.float -4.051137044781474e-39, -4.051148255169189e-39, 0.0
.global lbl_80440550
lbl_80440550:
	.ascii "invalid command"
	.byte 0x00
.global lbl_80440560
lbl_80440560:
	.ascii "HID_HostWriteDev Error %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044057C
lbl_8044057C:
	.ascii "bta_hh_write_dev_act:: cmd type = %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_OPEN"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_CLOSE"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_RETRYING"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_INTR_DATA"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_INTR_DATC"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_CTRL_DATA"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_CTRL_DATC"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_HANDSHAKE"
	.byte 0x00
	.byte 0x00
	.ascii "HID_HDEV_EVT_VC_UNPLUG"
	.byte 0x00
	.byte 0x00
	.ascii "Unknown HID event"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "bta_hh_cback::HID_event [%s]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804406A8
lbl_804406A8:
	.4byte 0x802C25A0, 0x802C25A8, 0x802C270C, 0x802C25B0
	.4byte 0x802C25C8, 0x802C25C0, 0x802C25C8, 0x802C25B8
	.4byte 0x802C25D4
.global lbl_804406CC
lbl_804406CC:
	.4byte 0x802C2528, 0x802C2530, 0x802C2538, 0x802C2540
	.4byte 0x802C2548, 0x802C2550, 0x802C2558, 0x802C2560
	.4byte 0x802C2568
.global lbl_804406F0
lbl_804406F0:
	.ascii "No resource to send HID host Connect request."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440720
lbl_80440720:
	.ascii "wrong device handle: [%d]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_NULL_ST"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_IDLE_ST"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_W4_CONN_ST"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_CONN_ST"
	.byte 0x00
	.byte 0x00
	.ascii "unknown HID Host state"
	.byte 0x00
	.byte 0x00
	.ascii "bta_hh_sm_execute: State 0x%02x [%s], Event [%s]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HH State Change: [%s] -> [%s] after Event [%s]"
	.byte 0x00
	.byte 0x00
.global lbl_804407FC
lbl_804407FC:
	.ascii "bta_hh_hdl_event:: handle = %d dev_cb[%d] "
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_DISABLE_EVT"
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_ENABLE_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_OPEN_EVT"
	.byte 0x00
	.ascii "BTA_HH_API_CLOSE_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_INT_OPEN_EVT"
	.byte 0x00
	.ascii "BTA_HH_INT_CLOSE_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_INT_HANDSK_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_INT_DATA_EVT"
	.byte 0x00
	.ascii "BTA_HH_INT_CTRL_DATA"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_WRITE_DEV_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_SDP_CMPL_EVT"
	.byte 0x00
	.ascii "BTA_HH_DISC_CMPL_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_MAINT_DEV_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_GET_DSCP_EVT"
	.byte 0x00
	.ascii "BTA_HH_OPEN_CMPL_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HH_API_GET_ACL_Q_EVT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "unknown HID Host event code"
	.byte 0x00
.global lbl_804409C0
lbl_804409C0:
	.4byte 0x802C3008, 0x802C3010, 0x802C3018, 0x802C3020
	.4byte 0x802C3030, 0x802C3038, 0x802C3028, 0x802C3048
	.4byte 0x802C3040, 0x802C3060, 0x802C3058, 0x802C3068
	.4byte 0x802C3000, 0x802C2FF8, 0x802C3070, 0x802C3050
.global lbl_80440A00
lbl_80440A00:
	.ascii "found kdev_cb[%d] hid_handle = %d "
	.byte 0x00
	.byte 0x00
	.ascii "in_use ? [%d] kdev[%d].hid_handle = %d state = [%d]"
	.byte 0x00
	.ascii "bta_hh_find_cb:: index = %d while max = %d"
	.byte 0x00
	.byte 0x00
.global lbl_80440A84
lbl_80440A84:
	.ascii "subclass = 0x%2x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "bta_hh_parse_keybd_rpt:  (report=%p, report_len=%d) called"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Alt key pressed"
	.byte 0x00
	.ascii "Alt key not pressed"
	.byte 0x00
	.ascii "this_char = %02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTA_HhParseKeybdRpt:  Cannot interpret scan code                 0x%02x"
	.byte 0x00
	.ascii "bta_hh_parse_mice_rpt:  bta_keybd_rpt_rcvd(report=%p,                 report_len=%d) called"
	.byte 0x00
	.ascii "mice button: 0x%2x"
	.byte 0x00
	.byte 0x00
	.ascii "mice move: x = %d y = %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "bta_hh_trace_dev_db:: Device DB list********************"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "kdev[%d] in_use[%d]  handle[%d] "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\t\t\t attr_mask[%04x] state [%d] sub_class[%02x] index = %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "*********************************************************"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440CC0
lbl_80440CC0:
	.ascii "Duplicate btm_acl_created: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.byte 0x00
.global lbl_80440D00
lbl_80440D00:
	.ascii "SetPacketType Mask -> 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440D20
lbl_80440D20:
	.ascii "Role change request declined since the previous request for this device is not completed "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetLinkPolicy switch not supported (settings: 0x%04x)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetLinkPolicy hold not supported (settings: 0x%04x)"
	.byte 0x00
	.ascii "BTM_SetLinkPolicy sniff not supported (settings: 0x%04x)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetLinkPolicy park not supported (settings: 0x%04x)"
	.byte 0x00
	.ascii "BTM_ReadLinkPolicy: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
.global lbl_80440EA0
lbl_80440EA0:
	.ascii "BTM_ReadClockOffset: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440EDC
lbl_80440EDC:
	.ascii "Role Switch Event: new_role 0x%02x, HCI Status 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetQoS: BdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440F44
lbl_80440F44:
	.ascii "BTM: p_flow->delay_variation: 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440F6C
lbl_80440F6C:
	.ascii "BTM_ReadRSSI: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440FA0
lbl_80440FA0:
	.ascii "BTM_ReadLinkQuality: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80440FDC
lbl_80440FDC:
	.ascii "BTM RSSI Complete: rssi %d, hci status 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044100C
lbl_8044100C:
	.ascii "BTM Link Quality Complete: Link Quality %d, hci status 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "btm BEFORE SCO setting to 1 slot; hci hdl 0x%x"
	.byte 0x00
	.byte 0x00
	.ascii "btm last SCO removed; unsniffing hci hdl 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "btm last SCO removed; hci hdl 0x%x, types 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804410E0
lbl_804410E0:
	.ascii "BTM_SetAfhChannels first: %d (%d) last: %d (%d)"
	.byte 0x00
.global lbl_80441110
lbl_80441110:
	.ascii "btm_reset_complete"
	.byte 0x00
	.byte 0x00
	.ascii "Local supported ACL packet types: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Local supported SCO packet types: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044117C
lbl_8044117C:
	.ascii "BTM: BTM_VendorSpecificCommand: Opcode: 0x%04X, ParamLen: %i."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804411BC
lbl_804411BC:
	.ascii "BTM: Unable to send vendor specific command (controller is busy)."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441200
lbl_80441200:
	.ascii "BTM Event: Received a vendor specific event from controller"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441240
lbl_80441240:
	.ascii "BTM: BTM_WritePageTimeout: Timeout: %d."
	.byte 0x00
	.ascii "BTM: BTM_WriteVoiceSettings: Settings: 0x%04x."
	.byte 0x00
	.byte 0x00
	.ascii "BTM: BTM_EnableTestMode"
	.byte 0x00
.global lbl_804412B0
lbl_804412B0:
	.ascii "BTM: BTM_ReadStoredLinkKey: Read_All: %s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804412DC
lbl_804412DC:
	.ascii "BTM: BTM_WriteStoredLinkKey: num_keys: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441308
lbl_80441308:
	.ascii "BTM: BTM_DeleteStoredLinkKey: delete_all_flag: %s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441340
lbl_80441340:
	.ascii "BTM_SetDiscoverability: mode %d [NonDisc-0, Lim-1, Gen-2], window 0x%04x, interval 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044139C
lbl_8044139C:
	.ascii "BTM_SetConnectability: mode %d [NonConn-0, Conn-1], window 0x%04x, interval 0x%04x"
	.byte 0x00
	.byte 0x00
.global lbl_804413F0
lbl_804413F0:
	.ascii "BTM_CancelInquiry called"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044140C
lbl_8044140C:
	.ascii "BTM_StartInquiry: mode: %d, dur: %d, rsps: %d, flt: %d"
	.byte 0x00
	.byte 0x00
.global lbl_80441444
lbl_80441444:
	.ascii "BTM_ReadRemoteDeviceName: bd addr [%02x%02x%02x%02x%02x%02x]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441484
lbl_80441484:
	.ascii "BTM_CancelRemoteDeviceName()"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804414A4
lbl_804414A4:
	.ascii "BTM_InqDbRead: bd addr [%02x%02x%02x%02x%02x%02x]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804414D8
lbl_804414D8:
	.ascii "BTM Warning: Set Event Filter Failed (HCI returned 0x%x)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441514
lbl_80441514:
	.ascii "BTM Inq Compl Callback: status 0x%02x, num results %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441550
lbl_80441550:
	.ascii "btm mode change AFTER unsniffing; hci hdl 0x%x, types 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441590
lbl_80441590:
	.ascii "btm_esco_conn_rsp -> No Resources"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "TCS accept SCO: Packet Types 0x%04x"
	.byte 0x00
	.ascii "BTM_CreateSco -> (e)SCO Link for ACL handle 0x%04x, Desired Type %d"
	.byte 0x00
	.ascii "      txbw 0x%x, rxbw 0x%x, lat 0x%x, voice 0x%x, retrans 0x%02x, pkt 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "btm_sco_chk_pend_unpark -> (e)SCO Link for ACL handle 0x%04x, Desired Type %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804416BC
lbl_804416BC:
	.ascii "btm_sco_conn_req: No one wants this SCO connection; rejecting it"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetEScoMode -> mode %d"
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetEScoMode -> mode SCO (eSCO not supported)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "    txbw 0x%08x, rxbw 0x%08x, max_lat 0x%04x, voice 0x%04x, pkt 0x%04x, rtx effort 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_ReadEScoLinkParms -> sco_inx 0x%04x"
	.byte 0x00
	.ascii "BTM_ChangeEScoLinkParms -> SCO Link for handle 0x%04x, pkt 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_ChangeEScoLinkParms -> eSCO Link for handle 0x%04x"
	.byte 0x00
	.byte 0x00
.global lbl_80441854
lbl_80441854:
	.ascii "btm_esco_proc_conn_chg -> handle 0x%04x, status 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441890
lbl_80441890:
	.ascii "BTM_Sec: application registered"
	.byte 0x00
	.ascii "BTM_SetSecurityMode: mode:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SetSecurityMode: Authen Enable -> FALSE"
	.byte 0x00
	.ascii "BTM_SetSecurityMode: Authen Enable -> TRUE"
	.byte 0x00
	.byte 0x00
.global lbl_80441928
lbl_80441928:
	.ascii "BTM_SetPinType: pin type %d [variable-0, fixed-1], code %s, length %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SEC_REG[%d]: id %d, is_orig %d, psm 0x%04x, proto_id %d, chan_id %d"
	.byte 0x00
	.ascii "               : sec: 0x%x, service name [%s] (up to %d chars saved)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SEC_REG: Out of Service Records (%d)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441A30
lbl_80441A30:
	.ascii "Security Manager: Attempting Authorization of Unknown Device Address [%02x%02x%02x%02x%02x%02x]"
	.byte 0x00
.global lbl_80441A90
lbl_80441A90:
	.ascii "Security Manager: authorized status:%d State:%d"
	.byte 0x00
	.ascii "BTM_SecBond BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SecBond: Illegal Pin len:%d"
	.byte 0x00
	.ascii "BTM_SecBond: no device block"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SecBond -> Already Paired"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SecBond: Authen Enable -> TRUE"
	.byte 0x00
	.byte 0x00
	.ascii "BTM_SecBond: no buffer"
	.byte 0x00
	.byte 0x00
.global lbl_80441B8C
lbl_80441B8C:
	.ascii "btm_restore_mode: Authen Enable -> %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: BTM_SetEncryption not connected"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: BTM_SetEncryption already encrypted"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: BTM_SetEncryption busy"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: BTM_SetEncryption Handle:%d State:%d Flags:0x%x Required:0x%x"
	.byte 0x00
	.ascii "Security Manager: l2cap_access_req PSM:%d no resources"
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: l2cap_access_req PSM:%d no application registerd"
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: l2cap_access_req PSM:%d postponed for multiplexer"
	.byte 0x00
	.ascii "Security Manager: l2cap_access_req PSM:%d Handle:%d State:%d Flags:0x%x Required:0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: trusted:0x%04x%04x Flags:0x%x"
	.byte 0x00
.global lbl_80441DE8
lbl_80441DE8:
	.ascii "Security Manager: MX service not found PSM:%d Proto:%d SCN:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441E28
lbl_80441E28:
	.ascii "Security Manager: connect request from not paired device"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441E64
lbl_80441E64:
	.ascii "Security Manager: rmt_name_complete status:%d State:%d"
	.byte 0x00
	.byte 0x00
.global lbl_80441E9C
lbl_80441E9C:
	.ascii "Security Manager: auth_complete status:%d State:%d"
	.byte 0x00
	.byte 0x00
.global lbl_80441ED0
lbl_80441ED0:
	.ascii "Security Manager: mkey comp status:%d State:%d"
	.byte 0x00
	.byte 0x00
.global lbl_80441F00
lbl_80441F00:
	.ascii "Security Manager: encrypt_change status:%d State:%d"
	.byte 0x00
.global lbl_80441F34
lbl_80441F34:
	.ascii "Security Manager: btm_sec_connected handle:%d status:%d enc_mode:%d"
	.byte 0x00
.global lbl_80441F78
lbl_80441F78:
	.ascii "btm_sec_link_key_notification()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.byte 0x00
.global lbl_80441FBC
lbl_80441FBC:
	.ascii "                                TYPE: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80441FE8
lbl_80441FE8:
	.ascii "btm_sec_link_key_request()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.byte 0x00
	.byte 0x00
.global lbl_80442028
lbl_80442028:
	.ascii "btm_sec_pin_code_request_timeout()"
	.byte 0x00
	.byte 0x00
	.ascii "btm_sec_pin_code_request()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.byte 0x00
	.byte 0x00
	.ascii "btm_sec_pin_code_request bonding sending reply"
	.byte 0x00
	.byte 0x00
	.ascii "btm_sec_pin_code_request: Authen Enable -> %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "btm_sec_pin_code_request(): Pairing disabled:%d; PIN callback:%x, Dev Rec:%x!"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "btm_sec_execute_procedure: Required:0x%x Flags:0x%x State:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no LCB for L2CA_conn_req"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: Start get name"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: Start authentication"
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: Start encryption"
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: Start authorization"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: trusted:0x%04x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Manager: access granted"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442284
lbl_80442284:
	.ascii "btm_sec_collision_timeout()"
	.byte 0x00
.global lbl_804422A0
lbl_804422A0:
	.ascii "Ctlr H/w error event"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804422B8
lbl_804422B8:
	.ascii "Event mismatch opcode=%X cmd opcode=%X"
	.byte 0x00
	.byte 0x00
.global lbl_804422E0
lbl_804422E0:
	.ascii "Cmd timeout; no cmd in queue"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442300
lbl_80442300:
	.ascii "BTU HCI command timeout - cmd opcode = 0x%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442330
lbl_80442330:
	.ascii "WARNING: GAP Conn Indication for Unexpected Bd Addr...Disconnecting"
	.byte 0x00
.global lbl_80442374
lbl_80442374:
	.ascii "GAP_CONN - Rcvd L2CAP conn ind, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804423A0
lbl_804423A0:
	.ascii "GAP_CONN - Rcvd L2CAP disc, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804423C8
lbl_804423C8:
	.ascii "GAP_CONN - Rcvd L2CAP Is Congested (%d), CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442400
lbl_80442400:
	.ascii "   GAP Inquiry Complete Event (Status 0x%04x, Result(s) %d)"
	.byte 0x00
	.ascii "   GAP Discovery Complete Event(SDP Result: 0x%04x)"
	.byte 0x00
	.ascii "   GAP Discovery Successfully Completed"
	.byte 0x00
	.ascii "   GAP Remote Name Complete Event (status 0x%04x)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804424CC
lbl_804424CC:
	.float -4.13007498987382e-39, -4.1300862002615344e-39, -4.130097410649249e-39, -4.130153462587822e-39
	.float -4.1301086210369636e-39, -4.1301086210369636e-39, -4.130119831424678e-39, -4.130131041812393e-39
	.float -4.1301422522001074e-39, 49488.125, 976663.3125, 1.8320752811686115e+25
	.float 246371139584.0, 1.1820862497092395e+27, 225.42352294921875, 1.039420309054228e+21
	.float 1.4262708240855036e-19, 2.6331846852230722e+20, 1.8562325856480904e-19, 1.4443955365095462e-08
	.float 1.4443955365095462e-08, 1.4443955365095462e-08, 1.4443955365095462e-08, 1.4443955365095462e-08
	.float 1.4456682073671345e-08, 0.0, 1.3563156426940112e-19, 1.3563156426940112e-19
	.float 1.3563156426940112e-19, 1.3563156426940112e-19, 1.3563156426940112e-19, 1.3563156426940112e-19
	.float 1.3563156426940112e-19, 1.425242405939553e-19, 641.4241333007812, 6.492675841407447e-10
	.float 6.492675841407447e-10, 6.492706927652137e-10, 2.279255777171141e-12, 2.894168338370446e+26
	.float 1.4947532362457395e-19, 6.565437637995331e-10, 0.0
.global lbl_80442578
lbl_80442578:
	.ascii "   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x, Name [%s])"
	.byte 0x00
.global lbl_804425BC
lbl_804425BC:
	.ascii "   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804425F8
lbl_804425F8:
	.4byte 0x802CFB50, 0x802CFB58, 0x802CFB60, 0x802CFB88
	.4byte 0x802CFB68, 0x802CFB68, 0x802CFB70, 0x802CFB78
	.4byte 0x802CFB80
.global lbl_8044261C
lbl_8044261C:
	.4byte 0x802CFAB8, 0x802CFAC0, 0x802CFAC8, 0x802CFAF0
	.4byte 0x802CFAD0, 0x802CFAD0, 0x802CFAD8, 0x802CFAE0
	.4byte 0x802CFAE8
.global lbl_80442640
lbl_80442640:
	.ascii "   GAP: FindAddrByName Inq Cmpl Evt (Status 0x%04x, Result(s) %d)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442684
lbl_80442684:
	.4byte 0x802CFD04, 0x802CFD0C, 0x802CFD14, 0x802CFD3C
	.4byte 0x802CFD1C, 0x802CFD1C, 0x802CFD24, 0x802CFD2C
	.4byte 0x802CFD34
.global lbl_804426A8
lbl_804426A8:
	.4byte 0x802CFC94, 0x802CFC9C, 0x802CFCA4, 0x802CFCCC
	.4byte 0x802CFCAC, 0x802CFCAC, 0x802CFCB4, 0x802CFCBC
	.4byte 0x802CFCC4
.global lbl_804426CC
lbl_804426CC:
	.4byte 0x802CFDA8, 0x802CFDB0, 0x802CFDB8, 0x802CFDE0
	.4byte 0x802CFDC0, 0x802CFDC0, 0x802CFDC8, 0x802CFDD0
	.4byte 0x802CFDD8
.global lbl_804426F0
lbl_804426F0:
	.ascii "HID - Originate started"
	.byte 0x00
.global lbl_80442708
lbl_80442708:
	.ascii "HID - Originate failed"
	.byte 0x00
	.byte 0x00
.global lbl_80442720
lbl_80442720:
	.ascii "hidd_proc_repage_timeout"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442740
lbl_80442740:
	.ascii "HID_ERR_NOT_REGISTERED"
	.byte 0x00
	.byte 0x00
	.ascii "HID_ERR_INVALID_PARAM"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID_ERR_NO_CONNECTION dev_handle %d"
	.byte 0x00
	.ascii "Security Registration 1 failed"
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration 2 failed"
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration 3 failed"
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration 4 failed"
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration 5 failed"
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration 6 failed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442858
lbl_80442858:
	.ascii "HID Control Registration failed"
	.byte 0x00
.global lbl_80442878
lbl_80442878:
	.ascii "HID Interrupt Registration failed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044289C
lbl_8044289C:
	.ascii "HID - disconnect"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID - Rcvd L2CAP conn ind, PSM: 0x%04x  CID 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID - Rcvd INTR L2CAP conn ind, but no CTL channel"
	.byte 0x00
	.byte 0x00
	.ascii "HID - Rcvd INTR L2CAP conn ind, wrong state: %d"
	.byte 0x00
	.ascii "HID - Rcvd CTL L2CAP conn ind, wrong state: %d"
	.byte 0x00
	.byte 0x00
	.ascii "HID - Rcvd L2CAP conn ind, sent config req, PSM: 0x%04x  CID 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804429BC
lbl_804429BC:
	.ascii "HID - Originate failed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID - Originator security pass."
	.byte 0x00
	.ascii "HID - INTR Originate failed"
	.byte 0x00
	.ascii "HID - Rcvd unexpected conn cnf, CID 0x%x "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "HID - got CTRL conn cnf, sent cfg req, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442A74
lbl_80442A74:
	.ascii "HID - Rcvd L2CAP cfg ind, unknown CID: 0x%x"
	.byte 0x00
.global lbl_80442AA0
lbl_80442AA0:
	.ascii "HID - Rcvd cfg ind, sent cfg cfm, CID: 0x%x"
	.byte 0x00
	.ascii "HID - Rcvd cfg cfm, CID: 0x%x  Result: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442AF8
lbl_80442AF8:
	.ascii "HID - Rcvd L2CAP disc, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442B24
lbl_80442B24:
	.ascii "HID - Rcvd L2CAP disc, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442B48
lbl_80442B48:
	.ascii "HID - Rcvd L2CAP disc cfm, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442B78
lbl_80442B78:
	.ascii "HID - Rcvd L2CAP disc cfm, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442BA0
lbl_80442BA0:
	.ascii "HID - Rcvd L2CAP congestion status, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442BD8
lbl_80442BD8:
	.ascii "HID - Rcvd L2CAP congestion status, CID: 0x%x  Cong: %d"
	.byte 0x00
.global lbl_80442C10
lbl_80442C10:
	.ascii "HID - Rcvd L2CAP data, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442C40
lbl_80442C40:
	.ascii "L2CAP - L2CA_Register() called for PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no cb registering PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - invalid PSM value, PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no RCB available, PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442CE8
lbl_80442CE8:
	.ascii "L2CAP - L2CA_Deregister() called for PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442D1C
lbl_80442D1C:
	.ascii "L2CAP - PSM: 0x%04x not found for deregistration"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_ConnectReq()  PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_ConnectReq()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP connect req - BTU not ready"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no RCB for L2CA_conn_req, PSM: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no LCB for L2CA_conn_req"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP API - L2CA_conn_req rejected - link disconnecting"
	.byte 0x00
	.ascii "L2CAP - no CCB for L2CA_conn_req"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - L2CA_conn_req() returned CID: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_ConnectRsp()  CID: 0x%04x  Result: %d  Status: %d"
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_ConnectRsp()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no LCB for L2CA_conn_rsp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no CCB for L2CA_conn_rsp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - bad id in L2CA_conn_rsp. Exp: %d  Got: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442F98
lbl_80442F98:
	.ascii "L2CA_ConfigReq()  CID: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442FB8
lbl_80442FB8:
	.ascii "L2CAP - no CCB for L2CA_cfg_req, CID: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80442FE4
lbl_80442FE4:
	.ascii "L2CA_ConfigRsp()  CID: 0x%04x  Result: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443010
lbl_80443010:
	.ascii "L2CAP - no CCB for L2CA_cfg_rsp, CID: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044303C
lbl_8044303C:
	.ascii "L2CA_DisconnectReq()  CID: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443060
lbl_80443060:
	.ascii "L2CAP - no CCB for L2CA_disc_req, CID: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044308C
lbl_8044308C:
	.ascii "L2CA_DisconnectRsp()  CID: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804430B0
lbl_804430B0:
	.ascii "L2CAP - no CCB for L2CA_disc_rsp, CID: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_DataWrite()  CID: 0x%04x  Len: %d"
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - no CCB for L2CA_DataWrite, CID: %d"
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - cannot send message bigger than peer's mtu size"
	.byte 0x00
	.ascii "L2CA_Ping()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.byte 0x00
	.ascii "L2CAP - no LCB for L2CA_ping"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - rejected second L2CA_ping"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - L2CA_ping rejected - link disconnecting"
	.byte 0x00
.global lbl_80443210
lbl_80443210:
	.ascii "L2CAP - no CCB for L2CA_SetIdleTimeout, CID: %d"
	.byte 0x00
	.ascii "L2CA_SetAclPriority()  bdaddr: %02x%02x%02x%02x%02x%02x"
	.byte 0x00
	.ascii "L2CAP - no LCB for L2CA_SetAclPriority"
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_SetCompression() local cid %d, direction %d, pe_type %d, mem_level %d, wbits %d, enable %d"
	.byte 0x00
	.ascii "L2CAP - no CCB for L2CA_Flush, CID: %d"
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_Flush()  CID: 0x%04x flushed %d buffers"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_GetNumQueuedBufs()  CID: 0x%04x  abmormally returning 0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CA_GetNumQueuedBufs()  CID: 0x%04x  returning %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804433D0
lbl_804433D0:
	.float -4.168515409347178e-39, -4.1685210145410355e-39, -4.168526619734893e-39, -4.16853222492875e-39
	.float -4.1685378301226074e-39, -4.168543435316465e-39, -4.168549040510322e-39, -4.168554645704179e-39
	.float -4.1685602508980366e-39, 46730500.0, 10749247488.0, 1.9349660469676364e+31
	.float 204.3098602294922, 3138.024658203125, 1.2383782700592873e+33, 1.97758476261356e-16
.global lbl_80443410
lbl_80443410:
	.ascii "L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443490
lbl_80443490:
	.float -4.1688405105909016e-39, -4.168907772917189e-39, -4.169462687109062e-39, -4.1687452222953275e-39
	.float -4.169462687109062e-39, -4.169462687109062e-39, -4.169462687109062e-39, -4.16909274431448e-39
	.float -4.169143191059196e-39, -4.169462687109062e-39, -4.1692496897424844e-39, -4.169462687109062e-39
	.float -4.169462687109062e-39, -4.169462687109062e-39, -4.169462687109062e-39, -4.169462687109062e-39
	.float -4.169462687109062e-39, -4.169462687109062e-39, -4.169462687109062e-39, -4.169434661139775e-39
	.float -4.1690086664066206e-39, -4.169462687109062e-39, -4.169462687109062e-39, -4.169462687109062e-39
	.float -4.169462687109062e-39, -4.169462687109062e-39, -4.169451476721347e-39, -4.169462687109062e-39
	.float -4.169462687109062e-39, -4.169434661139775e-39, -4.169316952068772e-39, 46730500.0
	.float 10749247488.0, 1.9349660469676364e+31, 3528017664.0, 1.55071238705481e+19
	.float 847238856704.0, 207.302001953125, 1.9436247343522006e-19, 0.0006109087262302637
	.float 0.0
.global lbl_80443534
lbl_80443534:
	.4byte 0x802D675C, 0x802D6834, 0x802D6834, 0x802D6834
	.4byte 0x802D67A0, 0x802D67CC, 0x802D6834, 0x802D6834
	.4byte 0x802D6834, 0x802D6834, 0x802D6834, 0x802D6834
	.4byte 0x802D6834, 0x802D6834, 0x802D6834, 0x802D6834
	.4byte 0x802D6814, 0x802D6834, 0x802D6834, 0x802D6834
	.4byte 0x802D6834, 0x802D6834, 0x802D6834, 0x802D6820
	.4byte 0x802D6834, 0x802D6834, 0x802D6814
.global lbl_804435A0
lbl_804435A0:
	.ascii "L2CAP - st: TERM_W4_SEC_COMP evt: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804435C8
lbl_804435C8:
	.ascii "L2CAP - Calling Connect_Ind_Cb(), CID: 0x%04x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804435F8
lbl_804435F8:
	.float -4.1701689415350815e-39, -4.170477227197233e-39, -4.170477227197233e-39, -4.170477227197233e-39
	.float -4.170202572698225e-39, -4.170348307738515e-39, -4.170477227197233e-39, -4.170477227197233e-39
	.float -4.170477227197233e-39, -4.170477227197233e-39, -4.170477227197233e-39, -4.170477227197233e-39
	.float -4.170477227197233e-39, -4.170477227197233e-39, -4.17042117525866e-39, -4.170477227197233e-39
	.float -4.170387544095516e-39, -4.170477227197233e-39, -4.170477227197233e-39, -4.170477227197233e-39
	.float -4.170477227197233e-39, -4.170477227197233e-39, -4.170477227197233e-39, -4.170404359677088e-39
	.float -4.170477227197233e-39, -4.170477227197233e-39, -4.170387544095516e-39, 46730500.0
	.float 10749247488.0, 1.9349660469676364e+31, 198321389961216.0, 1.136534422130353e-08
	.float 1.4073553122463056e+19, 1.5155545131962073e+19, 1.9436247343522006e-19, 0.0006109087262302637
	.float 0.0, 46730500.0, 10749247488.0, 225.42352294921875
	.float 1.801320869448923e+25, 239.43136596679688, 6.713274121221209e+22, 230.42723083496094
	.float 226.15687561035156, 2.277471830916533e-12, 744.5029296875, 1.3401666518494884e+34
	.float 1.3964541761137436e+34, 2.8824886413148958e+32, 1.9252443490966234e+31, 46730500.0
	.float 10749247488.0, 225.42352294921875, 1.801320869448923e+25, 239.43136596679688
	.float 6.713274121221209e+22, 15998221312.0, 226.15687561035156, 0.0
	.float 46730500.0, 10749247488.0, 225.42352294921875, 1.801320869448923e+25
	.float 239.43136596679688, 6.713274121221209e+22, 230.42723083496094, 226.15687561035156
	.float 2.277471830916533e-12, 744.5029296875, 1.3401666518494884e+34, 1.3964525667916925e+34
	.float 2.6911915761891856e+20, 4.5383084335276826e+30, 7.068495764430376e+28, 1.4009130854198077e-19
	.float 46730500.0, 10749247488.0, 225.42352294921875, 1.801320869448923e+25
	.float 239.43136596679688, 6.713274121221209e+22, 230.42723083496094, 226.15687561035156
	.float 2.277471830916533e-12, 744.5029296875, 1.3401666518494884e+34, 1.3964542999077475e+34
	.float 1.793715161575182e+25, 3.0930674645568797e+32
.global lbl_80443760
lbl_80443760:
	.4byte 0x802D6A34, 0x802D6BE0, 0x802D6BE0, 0x802D6BE0
	.4byte 0x802D6BE0, 0x802D6BE0, 0x802D6BE0, 0x802D6BE0
	.4byte 0x802D6A80, 0x802D6AE0, 0x802D6B38, 0x802D6BE0
	.4byte 0x802D6BE0, 0x802D6BE0, 0x802D6BE0, 0x802D6BE0
	.4byte 0x802D6BD8, 0x802D6BE0, 0x802D6BE0, 0x802D6BE0
	.4byte 0x802D6BE0, 0x802D6BE0, 0x802D6BE0, 0x802D6BCC
	.4byte 0x802D6BE0, 0x802D6BE0, 0x802D6BD8, 0x802D6B80
.global lbl_804437D0
lbl_804437D0:
	.ascii "L2CAP - st: W4_L2CA_CON_RSP evt: %d"
	.byte 0x00
.global lbl_804437F4
lbl_804437F4:
	.float -4.1714973724792614e-39, -4.17195699837556e-39, -4.17195699837556e-39, -4.17195699837556e-39
	.float -4.17195699837556e-39, -4.17195699837556e-39, -4.17195699837556e-39, -4.17195699837556e-39
	.float -4.17195699837556e-39, -4.17195699837556e-39, -4.17195699837556e-39, -4.17195699837556e-39
	.float -4.17195699837556e-39, -4.17195699837556e-39, -4.17195699837556e-39, -4.17195699837556e-39
	.float -4.17189534124313e-39, -4.17195699837556e-39, -4.171598265968693e-39, -4.171732790621268e-39
	.float -4.17195699837556e-39, -4.17195699837556e-39, -4.17195699837556e-39, -4.1719121568247016e-39
	.float -4.17195699837556e-39, -4.17195699837556e-39, -4.17189534124313e-39, -4.171772026978269e-39
	.float 46730500.0, 10749247488.0, 1.9349660469676364e+31, 207.30575561523438
	.float 815622.3125, 1.2383782700592873e+33, 1.97758476261356e-16, 46730500.0
	.float 10749247488.0, 225.42352294921875, 1.801320869448923e+25, 239.43124389648438
	.float 1.7482000111241625e+25, 7.1240474432336715e+22, 7.755049376594337e+20, 1.6541384033285489e-19
	.float 0.0006110738031566143, 1.5283343692576402e-16, 0.0, 46730500.0
	.float 10749247488.0, 225.42352294921875, 1.801320869448923e+25, 239.43124389648438
	.float 1.7482000111241625e+25, 1.9044241077386383e+31, 7.755049376594337e+20, 1.6541384033285489e-19
	.float 0.0006110738031566143, 1.5283343692576402e-16, 0.0, 46730500.0
	.float 10749247488.0, 225.42352294921875, 1.801320869448923e+25, 239.43124389648438
	.float 1.7482000111241625e+25, 1.9044241077386383e+31, 7.755049376594337e+20, 1.6541384033285489e-19
	.float 0.0006110738031566143, 1.5283343692576402e-16, 2.277643568540655e-12, 1.786631957727329e+25
	.float 5.493457048469326e+22, 9.44473296573929e+21, 46730500.0, 10749247488.0
	.float 225.42352294921875, 1.801320869448923e+25, 933.8029174804688, 7.3790891136652505e+28
	.float 4.5078715730920336e+21, 1.7669436647671104e+28, 7.755049376594337e+20, 1.6541384033285489e-19
	.float 0.0006110738031566143, 1.5283343692576402e-16, 1.3574839060622716e-19, 1.7805151557430674e+28
	.float 6.770461730009485e+22, 9.44473296573929e+21, 46730500.0, 10749247488.0
	.float 225.42352294921875, 1.801320869448923e+25, 901.8184204101562, 976453.9375
	.float 226.15687561035156, 2.277471830916533e-12, 744.5029296875, 1.3401666518494884e+34
	.float 1.0384593717069655e+34
.global lbl_80443988
lbl_80443988:
	.float -4.17216439054828e-39, -4.1733134552890264e-39, -4.1733134552890264e-39, -4.1733134552890264e-39
	.float -4.1733134552890264e-39, -4.1733134552890264e-39, -4.1733134552890264e-39, -4.1733134552890264e-39
	.float -4.1733134552890264e-39, -4.1733134552890264e-39, -4.1733134552890264e-39, -4.172259678843854e-39
	.float -4.1723998086902866e-39, -4.172573569699863e-39, -4.1726800683831516e-39, -4.1733134552890264e-39
	.float -4.173066826759305e-39, -4.1733134552890264e-39, -4.1733134552890264e-39, -4.1733134552890264e-39
	.float -4.172803382648012e-39, -4.1728650397804425e-39, -4.172971538463731e-39, -4.1730163800145895e-39
	.float -4.1733134552890264e-39, -4.1733134552890264e-39, -4.173156509861022e-39, -4.173212561799595e-39
	.float 46730500.0, 10749247488.0, 1.9349660469676364e+31, 3494202880.0
	.float 1.9436247343522006e-19, 0.0006109087262302637, 0.0
.global lbl_80443A14
lbl_80443A14:
	.float -4.1735208474617465e-39, -4.1741598395614786e-39, -4.1741598395614786e-39, -4.1736161357573206e-39
	.float -4.1741598395614786e-39, -4.1741598395614786e-39, -4.1741598395614786e-39, -4.1741598395614786e-39
	.float -4.1741598395614786e-39, -4.1741598395614786e-39, -4.1741598395614786e-39, -4.173666582502036e-39
	.float -4.1741598395614786e-39, -4.1741598395614786e-39, -4.173834738317755e-39, -4.1741598395614786e-39
	.float -4.173958052582616e-39, -4.1741598395614786e-39, -4.1741598395614786e-39, -4.1741598395614786e-39
	.float -4.1740813668474764e-39, -4.1741598395614786e-39, -4.1741598395614786e-39, -4.173997288939617e-39
	.float -4.1741598395614786e-39, -4.1741598395614786e-39, -4.1740477356843326e-39, 46730500.0
	.float 10749247488.0, 1.9349660469676364e+31, 198321389961216.0, 1.136534422130353e-08
	.float 1.4143927364198859e+19, 223.3215789794922, 10764015616.0, 5.89855459128911e+31
	.float 9.44473296573929e+21, 46730500.0, 10749247488.0, 225.42352294921875
	.float 1.801320869448923e+25, 933.8029174804688, 7.3790891136652505e+28, 4.505862123233296e+21
	.float 4.318538625749341e+27, 9.390952642254757e-15, 201.26651000976562, 1.4947532362457395e-19
	.float 6.565414878423326e-10
.global lbl_80443AD8
lbl_80443AD8:
	.4byte 0x802D7474, 0x802D75C0, 0x802D75C0, 0x802D75C0
	.4byte 0x802D75C0, 0x802D75C0, 0x802D75C0, 0x802D75C0
	.4byte 0x802D75C0, 0x802D75C0, 0x802D75C0, 0x802D75C0
	.4byte 0x802D75C0, 0x802D75C0, 0x802D7504, 0x802D74B8
	.4byte 0x802D75B8, 0x802D75C0, 0x802D75C0, 0x802D75C0
	.4byte 0x802D75C0, 0x802D75C0, 0x802D75C0, 0x802D75C0
	.4byte 0x802D75C0, 0x802D75C0, 0x802D75B8, 0x802D7564
.global lbl_80443B48
lbl_80443B48:
	.ascii "L2CAP - st: W4_L2CA_DISC_RSP evt: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443B70
lbl_80443B70:
	.float -4.1750398549970746e-39, -4.175325719883797e-39, -4.175325719883797e-39, -4.175325719883797e-39
	.float -4.175325719883797e-39, -4.175325719883797e-39, -4.175325719883797e-39, -4.175325719883797e-39
	.float -4.175325719883797e-39, -4.175325719883797e-39, -4.175325719883797e-39, -4.175325719883797e-39
	.float -4.175325719883797e-39, -4.175325719883797e-39, -4.175325719883797e-39, -4.175325719883797e-39
	.float -4.175314509496082e-39, -4.175325719883797e-39, -4.175325719883797e-39, -4.175325719883797e-39
	.float -4.175325719883797e-39, -4.175325719883797e-39, -4.175325719883797e-39, -4.175325719883797e-39
	.float -4.175269667945224e-39, -4.175325719883797e-39, -4.175314509496082e-39, -4.175140748486506e-39
	.float 46730500.0, 10749247488.0, 4.1584747141762594e+21, 7.5553571094781395e+28
	.float 7.036063769833473e+22, 1.1317077207745833e+21, 7.147666571479416e+22, 7.130540576465559e+28
	.float 7.208310242621736e+22, 1.97758476261356e-16
.global lbl_80443C08
lbl_80443C08:
	.ascii "L2CAP failed to allocate LCB"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443C28
lbl_80443C28:
	.ascii "L2CAP got conn_req while connected"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443C50
lbl_80443C50:
	.ascii "L2CAP got conn_comp for unknown BD_ADDR"
	.byte 0x00
.global lbl_80443C78
lbl_80443C78:
	.ascii "L2CAP got conn_comp in bad state: %d  status: 0x%d"
	.byte 0x00
	.byte 0x00
.global lbl_80443CAC
lbl_80443CAC:
	.ascii "L2CAP got sec_comp for unknown BD_ADDR"
	.byte 0x00
	.byte 0x00
.global lbl_80443CD4
lbl_80443CD4:
	.ascii "L2CAP - ping timeout"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - Congested(), CID: 0x%04x, Congested"
	.byte 0x00
	.ascii "L2CAP - Calling CongestionStatus_Cb(), CID: 0x%04x, Congested"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "!!! L2CAP - buffer dropped"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "L2CAP - Calling CongestionStatus_Cb(), CID: 0x%04x, Uncongested"
	.byte 0x00
	.ascii "LCB %d Priority:%d XmitWindow:%d Congestion Start:%d End:%d Discard:%d"
	.byte 0x00
	.byte 0x00
.global lbl_80443E00
lbl_80443E00:
	.ascii "L2CAP - dropping incomplete pkt"
	.byte 0x00
.global lbl_80443E20
lbl_80443E20:
	.ascii "L2CAP - dropping too long pkt"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443E40
lbl_80443E40:
	.ascii "L2CAP - rcvd segment complete, unknown handle: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80443E78
lbl_80443E78:
	.2byte 0x4C32, 0x4341, 0x5020, 0x2D20, 0x6578, 0x7065, 0x6374, 0x6564
	.2byte 0x2070, 0x6B74, 0x2073, 0x7461, 0x7274, 0x2C20, 0x676F, 0x743A
	.2byte 0x2025, 0x6400, 0x4C32, 0x4341, 0x5020, 0x2D20, 0x686F, 0x6C64
	.2byte 0x696E, 0x6720, 0x4143, 0x4C20, 0x666F, 0x7220, 0x756E, 0x6B6E
	.2byte 0x6F77, 0x6E20, 0x6861, 0x6E64, 0x6C65, 0x3A25, 0x6420, 0x6C73
	.2byte 0x3A25, 0x6420, 0x6369, 0x643A, 0x2564, 0x206F, 0x7063, 0x6F64
	.2byte 0x653A, 0x2564, 0x2063, 0x7572, 0x2063, 0x6F75, 0x6E74, 0x3A25
	.2byte 0x6400, 0x0000, 0x0000, 0x0000, 0x4C32, 0x4341, 0x5020, 0x2D20
	.2byte 0x756E, 0x6B6E, 0x6F77, 0x6E20, 0x4349, 0x443A, 0x2025, 0x6400
	.2byte 0x4C32, 0x4341, 0x5020, 0x2D20, 0x676F, 0x7420, 0x696E, 0x636F
	.2byte 0x7272, 0x6563, 0x7420, 0x6863, 0x6920, 0x6865, 0x6164, 0x6572
	.2byte 0x0000, 0x0000, 0x4C32, 0x4341, 0x5020, 0x2D20, 0x6261, 0x6420
	.2byte 0x6C65, 0x6E67, 0x7468, 0x2069, 0x6E20, 0x706B, 0x742E, 0x2045
	.2byte 0x7870, 0x3A20, 0x2564, 0x2020, 0x4163, 0x743A, 0x2025, 0x6400
	.2byte 0x474F, 0x5420, 0x434F, 0x4E4E, 0x4543, 0x5449, 0x4F4E, 0x4C45
	.2byte 0x5353, 0x2044, 0x4154, 0x4120, 0x5053, 0x4D3A, 0x2564, 0x0000
	.2byte 0x436F, 0x6D6D, 0x616E, 0x6420, 0x6C65, 0x6E20, 0x6261, 0x6420
	.2byte 0x2070, 0x6B74, 0x5F6C, 0x656E, 0x3A20, 0x2564, 0x2020, 0x636D
	.2byte 0x645F, 0x6C65, 0x6E3A, 0x2025, 0x6420, 0x2063, 0x6F64, 0x653A
	.2byte 0x2025, 0x6400, 0x4C32, 0x4341, 0x5020, 0x2D20, 0x4D54, 0x5520
	.2byte 0x7265, 0x6A20, 0x4861, 0x6E64, 0x6C65, 0x3A20, 0x2564, 0x204D
	.2byte 0x5455, 0x3A20, 0x2564, 0x0000, 0x4C32, 0x4341, 0x5020, 0x2D20
	.2byte 0x7265, 0x6A20, 0x7769, 0x7468, 0x2043, 0x4944, 0x2069, 0x6E76
	.2byte 0x616C, 0x6964, 0x2C20, 0x4C43, 0x4944, 0x3A20, 0x2564, 0x2052
	.2byte 0x4349, 0x443A, 0x2025, 0x6400, 0x4C32, 0x4341, 0x5020, 0x2D20
	.2byte 0x7263, 0x7664, 0x2063, 0x6F6E, 0x6E20, 0x7265, 0x7120, 0x666F
	.2byte 0x7220, 0x756E, 0x6B6E, 0x6F77, 0x6E20, 0x5053, 0x4D3A, 0x2025
	.2byte 0x6400, 0x0000, 0x4C32, 0x4341, 0x5020, 0x2D20, 0x756E, 0x6162
	.2byte 0x6C65, 0x2074, 0x6F20, 0x616C, 0x6C6F, 0x6361, 0x7465, 0x2043
	.2byte 0x4342, 0x0000, 0x4C32, 0x4341, 0x5020, 0x2D20, 0x6E6F, 0x2043
	.2byte 0x4342, 0x2066, 0x6F72, 0x2063, 0x6F6E, 0x6E20, 0x7273, 0x702C
	.2byte 0x204C, 0x4349, 0x443A, 0x2025, 0x6420, 0x5243, 0x4944, 0x3A20
	.2byte 0x2564, 0x0000, 0x4C32, 0x4341, 0x5020, 0x2D20, 0x636F, 0x6E20
	.2byte 0x7273, 0x7020, 0x2D20, 0x6261, 0x6420, 0x4944, 0x2E20, 0x4578
	.2byte 0x703A, 0x2025, 0x6420, 0x476F, 0x743A, 0x2025, 0x6400, 0x0000
	.2byte 0x4C32, 0x4341, 0x5020, 0x2D20, 0x6366, 0x6720, 0x7273, 0x7020
	.2byte 0x2D20, 0x6261, 0x6420, 0x4944, 0x2E20, 0x4578, 0x703A, 0x2025
	.2byte 0x6420, 0x476F, 0x743A, 0x2025, 0x6400, 0x0000, 0x4C32, 0x4341
	.2byte 0x5020, 0x2D20, 0x7263, 0x7664, 0x2063, 0x6667, 0x2072, 0x7370
	.2byte 0x2066, 0x6F72, 0x2075, 0x6E6B, 0x6E6F, 0x776E, 0x2043, 0x4944
	.2byte 0x3A20, 0x2564, 0x0000, 0x0000, 0x4C32, 0x4341, 0x5020, 0x2D20
	.2byte 0x6261, 0x6420, 0x636D, 0x6420, 0x636F, 0x6465, 0x3A20, 0x2564
	.2byte 0x0000, 0x0000, 0x802D, 0x98C4, 0x802D, 0x8F74, 0x802D, 0x9048
	.2byte 0x802D, 0x9114, 0x802D, 0x920C, 0x802D, 0x94BC, 0x802D, 0x976C
	.2byte 0x802D, 0x97E0, 0x802D, 0x9840, 0x802D, 0x9880, 0x802D, 0x98A0
	.2byte 0x802D, 0x8EF4
.global lbl_8044414C
lbl_8044414C:
	.ascii "L2CAP HOLD CONTINUE"
	.byte 0x00
.global lbl_80444160
lbl_80444160:
	.ascii "L2CAP HOLD TIMEOUT"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444178
lbl_80444178:
	.ascii "L2CAP - no buffer cmd_rej"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444194
lbl_80444194:
	.ascii "L2CAP - no buffer for conn_req"
	.byte 0x00
	.byte 0x00
.global lbl_804441B4
lbl_804441B4:
	.ascii "L2CAP - no buffer for cfg_rej"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804441D4
lbl_804441D4:
	.ascii "L2CAP - no buffer for echo_req"
	.byte 0x00
	.byte 0x00
	.ascii "l2cu_create_conn - btm_is_sco_active_by_bdaddr() is_sco_active = %s"
	.byte 0x00
.global lbl_80444238
lbl_80444238:
	.ascii "L2CAP - no buffer for l2cu_create_conn"
	.byte 0x00
	.byte 0x00
.global lbl_80444260
lbl_80444260:
	.ascii "port_open_continue"
	.byte 0x00
	.byte 0x00
	.ascii "port_open_continue no mx channel"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444298
lbl_80444298:
	.ascii "PORT_StartCnf result:%d"
	.byte 0x00
	.ascii "PORT_StartCnf failed result:%d"
	.byte 0x00
	.byte 0x00
.global lbl_804442D0
lbl_804442D0:
	.ascii "PORT_StartInd"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804442E0
lbl_804442E0:
	.ascii "PORT_ParNegInd dlci:%d mtu:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444300
lbl_80444300:
	.ascii "PORT_ParNegInd: port not found"
	.byte 0x00
	.byte 0x00
.global lbl_80444320
lbl_80444320:
	.ascii "PORT_ParNegCnf dlci:%d mtu:%d cl: %d k: %d"
	.byte 0x00
	.byte 0x00
.global lbl_8044434C
lbl_8044434C:
	.ascii "PORT_DlcEstablishInd dlci:%d mtu:%d"
	.byte 0x00
.global lbl_80444370
lbl_80444370:
	.ascii "PORT_DlcEstablishCnf dlci:%d mtu:%d result:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804443A0
lbl_804443A0:
	.ascii "PORT_PortNegInd"
	.byte 0x00
	.ascii "PORT_PortNegCnf"
	.byte 0x00
	.ascii "PORT_PortNegCnf no port"
	.byte 0x00
	.ascii "PORT_PortNegCnf Control Already sent"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444400
lbl_80444400:
	.ascii "PORT_ControlInd"
	.byte 0x00
.global lbl_80444410
lbl_80444410:
	.ascii "PORT_ControlInd DTR_DSR : %d, RTS_CTS : %d, RI : %d, DCD : %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444450
lbl_80444450:
	.ascii "PORT_ControlCnf"
	.byte 0x00
.global lbl_80444460
lbl_80444460:
	.ascii "PORT_LineStatusInd"
	.byte 0x00
	.byte 0x00
.global lbl_80444474
lbl_80444474:
	.ascii "PORT_DlcReleaseInd"
	.byte 0x00
	.byte 0x00
.global lbl_80444488
lbl_80444488:
	.ascii "PORT_CloseInd"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444498
lbl_80444498:
	.ascii "Port_TimeOutCloseMux"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804444B0
lbl_804444B0:
	.ascii "PORT_DataInd with data length %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804444D4
lbl_804444D4:
	.ascii "PORT_DataInd. Buffer over run. Dropping the buffer"
	.byte 0x00
	.byte 0x00
.global lbl_80444508
lbl_80444508:
	.ascii "PORT_FlowInd fc:%d"
	.byte 0x00
	.byte 0x00
	.ascii "Sending RFCOMM_DataReq"
	.byte 0x00
	.byte 0x00
.global lbl_80444534
lbl_80444534:
	.ascii "port_rfc_closed in OPENING state ignored"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444560
lbl_80444560:
	.ascii "port_rfc_closed state:%d sending events:%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444590
lbl_80444590:
	.ascii "port_select_mtu bad packet size"
	.byte 0x00
	.ascii "port_select_mtu selected %d based on connection speed"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "port_select_mtu selected %d based on l2cap PDU size"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "port_select_mtu application selected %d"
	.byte 0x00
	.ascii "port_select_mtu credit_rx_max %d, credit_rx_low %d, rx_buf_critical %d"
	.byte 0x00
	.byte 0x00
.global lbl_80444690
lbl_80444690:
	.ascii "rfc_port_closed DONE"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804446A8
lbl_804446A8:
	.ascii "PORT_DataInd Data reached HW. Sending FC set."
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804446D8
lbl_804446D8:
	.ascii "rfc_find_lcid_mcb LCID:0x%x"
	.byte 0x00
	.ascii "rfc_find_lcid_mcb LCID reused LCID:0x%x current:0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "RFCOMM_ConnectCnf LCID:0x%x"
	.byte 0x00
	.ascii "RFCOMM_ConfigInd LCID:0x%x"
	.byte 0x00
	.byte 0x00
	.ascii "RFCOMM_ConfigCnf LCID:0x%x"
	.byte 0x00
	.byte 0x00
	.ascii "RFCOMM_DisconnectInd LCID:0x%x"
	.byte 0x00
	.byte 0x00
	.ascii "RFCOMM_BufDataInd LCID:0x%x"
	.byte 0x00
	.ascii "RFCOMM_CongestionStatusInd dropped LCID:0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "RFCOMM_CongestionStatusInd LCID:0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444818
lbl_80444818:
	.float -4.211815531894815e-39, -4.2118211370886724e-39, -4.21182674228253e-39, -4.211832347476387e-39
	.float -4.211837952670244e-39, -4.2118435578641016e-39, -4.211849163057959e-39, 4.5633078105514935e+30
	.float 4.804229591293906e+27, 4.322170715870478e+27, 2.817693819441093e+20, 1.7259185348339801e+25
	.float 1.4664388438780493e-19, 1.2383786569155496e+33, 9.44473296573929e+21, 260179536.0
	.float 4.801926495521394e+30, 2.0621407168263549e-19, 7.261278986534457e+31, 1.1835160331354443e+22
	.float 7.037908444240844e+22, 1.97758476261356e-16, 4.5633078105514935e+30, 4.804229591293906e+27
	.float 7.036092142511126e+22, 4.4167268794083794e+21, 1.7482037004729772e+25, 7.113064514822403e+22
.global lbl_80444888
lbl_80444888:
	.ascii "RFCOMM MX ignored - evt:%d in state:%d"
	.byte 0x00
	.byte 0x00
.global lbl_804448B0
lbl_804448B0:
	.float -4.2124993655454056e-39, -4.212437708412975e-39, -4.212437708412975e-39, -4.2124433136068326e-39
	.float -4.212471339576119e-39, -4.2124993655454056e-39, -4.2120285292613925e-39, -4.2121238175569665e-39
	.float -4.2124993655454056e-39, -4.2121238175569665e-39, -4.212185474689397e-39, -4.2121238175569665e-39
	.float -4.2121238175569665e-39, 4.5633078105514935e+30, 4.804229591293906e+27, 4.322170715870478e+27
	.float 2.817693819441093e+20, 4.571897018146763e+33, 1.638843851530358e+19, 1.7283840076653729e+28
	.float 1.8910276164636734e+23, 7.274038477743358e+22, 1.97758476261356e-16, 4.5633078105514935e+30
	.float 4.804229591293906e+27, 4.322170715870478e+27, 2.817693819441093e+20, 4.4167268794083794e+21
	.float 1.7488530258643718e+25, 4.727569041159184e+22, 7.274038477743358e+22, 1.97758476261356e-16
.global lbl_80444930
lbl_80444930:
	.float -4.213401801756431e-39, -4.213536326409006e-39, -4.213536326409006e-39, -4.213401801756431e-39
	.float -4.213536326409006e-39, -4.21348587966429e-39, -4.213463458888861e-39, -4.213536326409006e-39
	.float -4.2135083004397195e-39, 4.5633078105514935e+30, 4.804229591293906e+27, 4.3221651080602794e+27
	.float 1.0947957256474455e+21, 4.571897018146763e+33, 1.7681448796405367e+19, 9.117475871511793e-12
	.float 5.899204026239407e+31, 0.0
.global lbl_80444978
lbl_80444978:
	.4byte 0x802DE314, 0x802DE2C4, 0x802DE2EC, 0x802DE314
	.4byte 0x802DE314, 0x802DE2F4, 0x802DE264, 0x802DE314
	.4byte 0x802DE314, 0x802DE264, 0x802DE314, 0x802DE2A0
	.4byte 0x802DE290, 0x802DE314, 0x802DE2B0
.global lbl_804449B4
lbl_804449B4:
	.ascii "rfc_mx_sm_state_wait_sabme - evt:%d"
	.byte 0x00
.global lbl_804449D8
lbl_804449D8:
	.ascii "rfc_mx_sm_state_connected - evt:%d"
	.byte 0x00
	.byte 0x00
.global lbl_804449FC
lbl_804449FC:
	.4byte 0x802DE524, 0x802DE550, 0x802DE4EC, 0x802DE550
	.4byte 0x802DE550, 0x802DE4EC, 0x802DE550, 0x802DE550
	.4byte 0x802DE550, 0x802DE550, 0x802DE550, 0x802DE510
.global lbl_80444A2C
lbl_80444A2C:
	.ascii "rfc_mx_sm_state_disc_wait_ua - evt:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444A54
lbl_80444A54:
	.4byte 0x802DE6C4, 0x802DE608, 0x802DE608, 0x802DE674
	.4byte 0x802DE684, 0x802DE608, 0x802DE6A0, 0x802DE6C4
	.4byte 0x802DE6C0, 0x802DE6C4, 0x802DE6C4, 0x802DE6C4
	.4byte 0x802DE6C4, 0x802DE6C4, 0x802DE6AC
.global lbl_80444A90
lbl_80444A90:
	.ascii "rfc_mx_conf_cnf p_cfg:%08x res:%d "
	.byte 0x00
	.byte 0x00
.global lbl_80444AB4
lbl_80444AB4:
	.ascii "rfc_mx_conf_ind p_cfg:%0x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444AD0
lbl_80444AD0:
	.ascii "NULL port event %d"
	.byte 0x00
	.byte 0x00
.global lbl_80444AE4
lbl_80444AE4:
	.ascii "Port error state %d event %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444B04
lbl_80444B04:
	.ascii "Port state closed Event ignored %d"
	.byte 0x00
	.byte 0x00
.global lbl_80444B28
lbl_80444B28:
	.4byte 0x802DEA08, 0x802DEA40, 0x802DEA44, 0x802DEA68
	.4byte 0x802DEA4C, 0x802DEA7C, 0x802DEAB4, 0x802DEAB4
	.4byte 0x802DEAB4, 0x802DE9C0, 0x802DEAB4, 0x802DEAB4
	.4byte 0x802DEAB4, 0x802DE9F8, 0x802DE9FC
.global lbl_80444B64
lbl_80444B64:
	.ascii "Port state sabme_wait_ua Event ignored %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444B90
lbl_80444B90:
	.float -4.217280595905682e-39, -4.2171236504776775e-39, -4.217174097222393e-39, -4.2172189387732516e-39
	.float -4.217303016681111e-39, -4.217319832262683e-39, -4.2173702790073987e-39, -4.2173702790073987e-39
	.float -4.2173702790073987e-39, -4.2169723102435304e-39, -4.2173702790073987e-39, -4.2169723102435304e-39
	.float -4.217039572569818e-39, -4.217095624508391e-39, -4.2171068348961056e-39, 16069021696.0
	.float 1.9434921269602507e-19, 7.4934601075138705e+28, 7.144943571342613e+31, 1.799066392008492e-19
	.float 3.1014522617044076e+27, 1.8445659174573717e+25, 6.7035922827422875e+22, 1.1633556993434852e+33
	.float 1.663409030043737e-19, 1.4757395258967641e+20, 16069021696.0, 2.0621407168263549e-19
	.float 7.261317188590357e+31, 7.155188933937013e+22, 4.571897018146763e+33, 1.7538533175515415e+19
	.float 1.6386458294861955e+19, 4.3373101221043514e+21, 1.1633556993434852e+33, 1.9770089683930165e-19
	.float 7.501794612119487e+28, 1.4009130854198077e-19
.global lbl_80444C28
lbl_80444C28:
	.float -4.2178186945159826e-39, -4.217998060719416e-39, -4.217998060719416e-39, -4.21782429970984e-39
	.float -4.2178915620361275e-39, -4.217998060719416e-39, -4.217998060719416e-39, -4.217998060719416e-39
	.float -4.217998060719416e-39, -4.217661749087978e-39, -4.217998060719416e-39, -4.2179083776176994e-39
	.float -4.217661749087978e-39, -4.2177234062204085e-39, -4.217757037383552e-39, -4.217560855598547e-39
	.float 16069021696.0, 1.9434921269602507e-19, 7.4934601075138705e+28, 7.144943571342613e+31
	.float 1.7571437153415682e-19, 7.571904935801776e+23, 1.8445659174573717e+25, 6.7035922827422875e+22
	.float 1.1633556993434852e+33, 1.663409030043737e-19, 1.4757395258967641e+20, 0.0
	.float 16069021696.0, 2.0621407168263549e-19, 7.261314770738717e+31, 4.623038417447013e+30
	.float 4.571897018146763e+33, 1.7538533175515415e+19, 1.6386458294861955e+19, 4.3373101221043514e+21
	.float 1.1633556993434852e+33, 1.9770089683930165e-19, 7.501794612119487e+28, 1.4009130854198077e-19
.global lbl_80444CC8
lbl_80444CC8:
	.4byte 0x802DEEE4, 0x802DEF60, 0x802DEF60, 0x802DEF60
	.4byte 0x802DEF54, 0x802DEF60, 0x802DEF60, 0x802DEF60
	.4byte 0x802DEF60, 0x802DEEE4, 0x802DEF60, 0x802DEF60
	.4byte 0x802DEF10, 0x802DEF60, 0x802DEF28, 0x802DEE94
.global lbl_80444D08
lbl_80444D08:
	.ascii "Port state opened Event ignored %d"
	.byte 0x00
	.byte 0x00
.global lbl_80444D2C
lbl_80444D2C:
	.4byte 0x802DF0B4, 0x802DF0B0, 0x802DF0C4, 0x802DF0DC
	.4byte 0x802DF100, 0x802DF110, 0x802DF148, 0x802DF148
	.4byte 0x802DF148, 0x802DEFDC, 0x802DF148, 0x802DF148
	.4byte 0x802DF00C, 0x802DF034, 0x802DF03C
.global lbl_80444D68
lbl_80444D68:
	.ascii "Port state disc_wait_ua Event ignored %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444D94
lbl_80444D94:
	.4byte 0x802DF21C, 0x802DF204, 0x802DF210, 0x802DF230
	.4byte 0x802DF244, 0x802DF260, 0x802DF268, 0x802DF268
	.4byte 0x802DF268, 0x802DF1C4, 0x802DF268, 0x802DF1C4
	.4byte 0x802DF268, 0x802DF1F0, 0x802DF1F8
.global lbl_80444DD0
lbl_80444DD0:
	.ascii "***** MX PN while disconnecting *****"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444DF8
lbl_80444DF8:
	.ascii "Bad Length1: %d"
	.byte 0x00
	.ascii "Bad Length2 %d %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad SABME"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad DISC"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad UIH - invalid DLCI"
	.byte 0x00
	.byte 0x00
	.ascii "Bad UIH - FCS"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad UIH - response"
	.byte 0x00
	.byte 0x00
	.ascii "Illegal MX Frame ea:%d len:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad MX frame"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad PN frame"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad MSC frame"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Bad RPN frame"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444ED0
lbl_80444ED0:
	.ascii "rfc_timer_stop"
	.byte 0x00
	.byte 0x00
.global lbl_80444EE0
lbl_80444EE0:
	.ascii "rfc_timer_start - timeout:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444F00
lbl_80444F00:
	.ascii "rfc_port_timer_start - timeout:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444F24
lbl_80444F24:
	.ascii "rfc_port_timer_stop"
	.byte 0x00
	.ascii "rfc_port_closed"
	.byte 0x00
.global lbl_80444F48
lbl_80444F48:
	.ascii "rfc_inc_credit:%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444F60
lbl_80444F60:
	.ascii "SDP_InitDiscoveryDb Illegal param: p_db 0x%x, len %d, num_uuid %d, num_attr %d"
	.byte 0x00
	.byte 0x00
.global lbl_80444FB0
lbl_80444FB0:
	.ascii "SDP_AddAttribute: attr_len:%d too long. truncate to (%d)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80444FEC
lbl_80444FEC:
	.ascii "SDP_AddUuidSequence - too long, add %d uuids of %d"
	.byte 0x00
	.byte 0x00
	.ascii "Deleting attr_id 0x%04x for handle 0x%x"
	.byte 0x00
.global lbl_80445048
lbl_80445048:
	.ascii "SDP - Unexp. PDU: %d in state: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445070
lbl_80445070:
	.ascii "SDP - Rcvd ServiceSearchRsp, no matches"
	.byte 0x00
.global lbl_80445098
lbl_80445098:
	.ascii "SDP - Wrong type: 0x%02x in attr_rsp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - Bad len in attr_rsp %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - DB full"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - Bad type: 0x%02x or len: %d in attr_rsp"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - attr nesting too deep"
	.byte 0x00
	.ascii "SDP - bad len in UUID attr: %d"
	.byte 0x00
	.byte 0x00
	.ascii "SDP - bad len in boolean attr: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445180
lbl_80445180:
	.float -4.251332148588775e-39, -4.2498243514411614e-39, -4.2500709799708826e-39, -4.2503344240821757e-39
	.float -4.2511527823853413e-39, -4.251220044711629e-39, -4.250900548661763e-39, -4.250900548661763e-39
	.float -4.2511527823853413e-39, 0.0
.global lbl_804451A8
lbl_804451A8:
	.ascii "Service Discovery"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Security Registration Server failed"
	.byte 0x00
	.ascii "Security Registration for Client failed"
	.byte 0x00
	.ascii "SDP Registration failed"
	.byte 0x00
.global lbl_80445220
lbl_80445220:
	.ascii "SDP - Rcvd L2CAP conn ind, sent config req, CID 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - Rcvd conn cnf for unknown CID 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - got conn cnf, sent cfg req, CID: 0x%x"
	.byte 0x00
	.ascii "SDP - Rcvd conn cnf with error: 0x%x  CID 0x%x"
	.byte 0x00
	.byte 0x00
.global lbl_804452E0
lbl_804452E0:
	.ascii "SDP - Rcvd L2CAP cfg ind, unknown CID: 0x%x"
	.byte 0x00
.global lbl_8044530C
lbl_8044530C:
	.ascii "SDP - Rcvd cfg ind, sent cfg cfm, CID: 0x%x"
	.byte 0x00
	.ascii "SDP - Rcvd cfg cfm, CID: 0x%x  Result: %d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445364
lbl_80445364:
	.ascii "SDP - disconnect  CID: 0x%x"
	.byte 0x00
.global lbl_80445380
lbl_80445380:
	.ascii "SDP - Rcvd L2CAP disc, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804453AC
lbl_804453AC:
	.ascii "SDP - Rcvd L2CAP disc, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804453D0
lbl_804453D0:
	.ascii "SDP - Ignored L2CAP data while in state: %d, CID: 0x%x"
	.byte 0x00
	.byte 0x00
.global lbl_80445408
lbl_80445408:
	.ascii "SDP - Rcvd L2CAP data, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "SDP - no spare CCB for orig"
	.byte 0x00
	.ascii "SDP - Originate started"
	.byte 0x00
	.ascii "SDP - Originate failed"
	.byte 0x00
	.byte 0x00
.global lbl_80445480
lbl_80445480:
	.ascii "SDP - Rcvd L2CAP disc cfm, unknown CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804454B0
lbl_804454B0:
	.ascii "SDP - Rcvd L2CAP disc cfm, CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804454D8
lbl_804454D8:
	.ascii "SDP - CCB timeout in state: %d  CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445508
lbl_80445508:
	.ascii "SDP - server got unknown PDU: 0x%x"
	.byte 0x00
	.byte 0x00
.global lbl_8044552C
lbl_8044552C:
	.ascii "SDP - no buf for search rsp"
	.byte 0x00
.global lbl_80445548
lbl_80445548:
	.4byte 0x802E6828, 0x802E67C8, 0x802E67D8, 0x802E6828
	.4byte 0x802E67EC, 0x802E6828, 0x802E6828, 0x802E6828
	.4byte 0x802E6800, 0x802E6828, 0x802E6828, 0x802E6828
	.4byte 0x802E6828, 0x802E6828, 0x802E6828, 0x802E6828
	.4byte 0x802E6814
.global lbl_8044558C
lbl_8044558C:
	.ascii "SDP - sdpu_build_n_send_error  code: 0x%x  CID: 0x%x"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804455C4
lbl_804455C4:
	.float 843157864448.0, 9.119468201423953e-12, 1.9181788492524795e-19, 1.9518631947592873e-19
	.float 1.9434921269602507e-19, 2.011286428248419e-19, 0.0, -4.262895663516383e-39
	.float -4.262738718088379e-39, -4.2627499284760935e-39, -4.262895663516383e-39, -4.262761138863808e-39
	.float -4.262772349251523e-39, -4.2627891648330946e-39, -4.262828401190096e-39
.global lbl_80445600
lbl_80445600:
	.4byte 0x802E6A64, 0x802E69F4, 0x802E69FC, 0x802E6A64
	.4byte 0x802E6A04, 0x802E6A0C, 0x802E6A18, 0x802E6A34
.global lbl_80445620
lbl_80445620:
	.4byte 0x802E6F74, 0x802E6F80, 0x802E6F8C, 0x802E6F98
	.4byte 0x802E6FA4, 0x802E6FB0, 0x802E6FC0, 0x802E6FE0
.global lbl_80445640
lbl_80445640:
	.ascii "/tmp/sys"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044564C
lbl_8044564C:
	.ascii "%s/%08x/%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445660
lbl_80445660:
	.ascii "<< RVL_SDK - NAND \trelease build: Nov 30 2006 03:32:57 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804456C0
lbl_804456C0:
	.2byte 0x2F00, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
	.2byte 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
	.2byte 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
	.2byte 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
	.2byte 0x802E, 0x98B8, 0x0000, 0x00FF, 0x0000, 0x0000, 0x0000, 0x0000
.global lbl_80445710
lbl_80445710:
	.ascii "/shared2"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044571C
lbl_8044571C:
	.ascii "/shared2/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445728
lbl_80445728:
	.ascii "CAUTION!  Unexpected error code [%d] was found.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Failed to set home directory.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/title/00010000"
	.byte 0x00
	.ascii "/title/00010001"
	.byte 0x00
	.ascii "/title/00010003"
	.byte 0x00
	.ascii "/title/00010004"
	.byte 0x00
	.ascii "/title/00010005"
	.byte 0x00
	.ascii "/title/00010006"
	.byte 0x00
	.ascii "/title/00010007"
	.byte 0x00
	.ascii "/shared2/title"
	.byte 0x00
	.byte 0x00
.global lbl_80445800
lbl_80445800:
	.float -9.171150926986775e-39, -9.17116213737449e-39, -6.276202824344278e-39, -6.276225245119707e-39
	.float -6.276247665895137e-39, -6.276270086670566e-39, -6.276292507445995e-39, -6.276314928221424e-39
	.float -6.276337348996853e-39, -6.276359769772283e-39, 0.0
.global lbl_8044582C
lbl_8044582C:
	.ascii "nandUserAreaCallback"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445844
lbl_80445844:
	.ascii "Illegal status is detected at %s()"
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - SC \trelease build: Nov 30 2006 03:33:00 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.ascii "IPL.EULA"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "IPL.SADR"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NET.CTPC"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NET.PROF"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NET.WCPC"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NET.WCFG"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804458F8
lbl_804458F8:
	.float -9.171178952956062e-39, 0.0, -9.171190163343776e-39, 1.401298464324817e-45
	.float -9.171206978925348e-39, 2.802596928649634e-45, -9.171218189313063e-39, 4.203895392974451e-45
	.float -9.171229399700777e-39, 5.605193857299268e-45, -9.171240610088492e-39, 7.006492321624085e-45
	.float -9.171251820476207e-39, 8.407790785948902e-45, -6.276628819077433e-39, 9.80908925027372e-45
	.float -9.171263030863921e-39, 1.1210387714598537e-44, -9.171274241251636e-39, 1.2611686178923354e-44
	.float -9.17128545163935e-39, 1.401298464324817e-44, -9.171296662027065e-39, 1.5414283107572988e-44
	.float -9.17130787241478e-39, 1.6815581571897805e-44, -9.171319082802494e-39, 1.8216880036222622e-44
	.float -9.171330293190209e-39, 1.961817850054744e-44, -9.171341503577923e-39, 2.1019476964872256e-44
	.float -6.276645634659005e-39, 2.2420775429197073e-44, -9.171352713965638e-39, 2.382207389352189e-44
	.float -9.171363924353353e-39, 2.5223372357846707e-44, -9.171375134741067e-39, 2.6624670822171524e-44
	.float -6.276662450240577e-39, 2.802596928649634e-44, -6.276679265822149e-39, 2.942726775082116e-44
	.float -6.27669608140372e-39, 3.0828566215145976e-44, -6.276712896985293e-39, 3.2229864679470793e-44
	.float -9.171386345128782e-39, 3.363116314379561e-44, -9.171397555516496e-39, 3.5032461608120427e-44
	.float -9.171408765904211e-39, 3.6433760072445244e-44, -9.171419976291926e-39, 3.783505853677006e-44
	.float -9.17143118667964e-39, 3.923635700109488e-44, -9.171442397067355e-39, 4.0637655465419695e-44
	.float -9.171453607455069e-39, 4.203895392974451e-44, -9.171464817842784e-39, 4.344025239406933e-44
	.float -9.171476028230499e-39, 4.484155085839415e-44, -9.171487238618213e-39, 4.624284932271896e-44
	.float -9.171498449005928e-39, 4.764414778704378e-44
.global lbl_80445A10
lbl_80445A10:
	.4byte 0x802EC028, 0x802EC06C, 0x802EC0AC, 0x802EC0DC
	.4byte 0x802EC124, 0x802EC158, 0x802EC18C, 0x802EC1D0
	.4byte 0x802EC20C, 0x802EC214
.global lbl_80445A38
lbl_80445A38:
	.2byte 0x004A, 0x504E, 0x0001, 0x5553, 0x4100, 0x0245, 0x5552, 0x0003
	.2byte 0x4155, 0x5300, 0x0442, 0x5241, 0x0005, 0x5457, 0x4E00, 0x0552
	.2byte 0x4F43, 0x0006, 0x4B4F, 0x5200, 0x0748, 0x4B47, 0x0008, 0x4153
	.2byte 0x4900, 0x094C, 0x544E, 0x000A, 0x5341, 0x4600, 0xFF00, 0x0000
	.2byte 0x0000, 0x0000, 0x0000, 0x0000
