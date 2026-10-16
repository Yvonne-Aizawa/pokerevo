	.section .sbss, "wa"  # 0x80474F00 - 0x80643050

# Continuation of sbss_8063FF48.s after NWC24Config.c's statics (0x80640250).
	.balign 8

.global NWC24WorkArea
NWC24WorkArea:
	.skip 0x4
.global NWC24LibState
NWC24LibState:
	.skip 0x4
.global NWC24LibFlags
NWC24LibFlags:
	.skip 0x4
.global NWC24LastError
NWC24LastError:
	.skip 0x4
.global NWC24VersionRegistered
NWC24VersionRegistered:
	.skip 0x8
.global lbl_80640268
lbl_80640268:
	.skip 0x8
.global lbl_80640270
lbl_80640270:
	.skip 0x4
.global lbl_80640274
lbl_80640274:
	.skip 0x4
.global lbl_80640278
lbl_80640278:
	.skip 0x8
.global lbl_80640280
lbl_80640280:
	.skip 0x8
