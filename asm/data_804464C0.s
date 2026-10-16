	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

# Continuation of data_80446480.s after NWC24MBoxCtrl.c (0x804464C0).
	.balign 8

.global lbl_804464C0
lbl_804464C0:
	.ascii "/dev/net/kd/request"
	.byte 0x00
.global lbl_804464D4
lbl_804464D4:
	.ascii "NWC24iRequestGenerateUserId"
	.byte 0x00
.global lbl_804464F0
lbl_804464F0:
	.ascii "ExecTrySuspendScheduler"
	.byte 0x00
