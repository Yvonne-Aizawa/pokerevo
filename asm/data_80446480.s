	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

# Continuation of data_80445AA8.s after NWC24Manage.c's data (0x80446480).
	.balign 8

.global lbl_80446480
lbl_80446480:
	.ascii "/wc24send.ctl"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446490
lbl_80446490:
	.ascii "/wc24recv.ctl"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804464A0
lbl_804464A0:
	.ascii "/wc24recv.mbx"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804464B0
lbl_804464B0:
	.ascii "/wc24send.mbx"
	.byte 0x00
	.byte 0x00
	.byte 0x00
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
	.ascii "/shared2/wc24/nwc24fl.bin"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/shared2/wc24/nwc24fls.bin"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446548
lbl_80446548:
	.ascii "/dev/net/kd/time"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8044655C
lbl_8044655C:
	.ascii "NWC24iSetRtcCounter"
	.byte 0x00
	.ascii "/shared2/wc24/nwc24dl.bin"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
