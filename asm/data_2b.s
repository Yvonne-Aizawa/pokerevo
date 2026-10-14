	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

# Continuation of .data after OSNet.c's string literals (0x80433E48).
	.balign 4
	.ascii "NWC24iPrepareShutdown"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/dev/net/kd/request"
	.byte 0x00
	.ascii "NWC24SuspendScheduler"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NWC24ResumeScheduler"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NWC24iRequestShutdown"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NWC24Shutdown_: Give up!\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NWC24iSetRtcCounter_"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/dev/net/kd/time"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
