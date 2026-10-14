#include "types.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSError.h"

void DBPrintf(const char *msg, ...);

static asm void __OSLoadFPUContext(register u32 dummy, register OSContext *fpuContext)
{
    nofralloc
    lhz r5, 0x1a2(r4)
    clrlwi. r5, r5, 31
    beq _return

    lfd f0, 0x190(r4)
    mtfsf 0xff, f0
    mfspr r5, 920
    rlwinm. r5, r5, 3, 31, 31
    beq _regular

    psq_l f0, 456(r4), 0, 0
    psq_l f1, 464(r4), 0, 0
    psq_l f2, 472(r4), 0, 0
    psq_l f3, 480(r4), 0, 0
    psq_l f4, 488(r4), 0, 0
    psq_l f5, 496(r4), 0, 0
    psq_l f6, 504(r4), 0, 0
    psq_l f7, 512(r4), 0, 0
    psq_l f8, 520(r4), 0, 0
    psq_l f9, 528(r4), 0, 0
    psq_l f10, 536(r4), 0, 0
    psq_l f11, 544(r4), 0, 0
    psq_l f12, 552(r4), 0, 0
    psq_l f13, 560(r4), 0, 0
    psq_l f14, 568(r4), 0, 0
    psq_l f15, 576(r4), 0, 0
    psq_l f16, 584(r4), 0, 0
    psq_l f17, 592(r4), 0, 0
    psq_l f18, 600(r4), 0, 0
    psq_l f19, 608(r4), 0, 0
    psq_l f20, 616(r4), 0, 0
    psq_l f21, 624(r4), 0, 0
    psq_l f22, 632(r4), 0, 0
    psq_l f23, 640(r4), 0, 0
    psq_l f24, 648(r4), 0, 0
    psq_l f25, 656(r4), 0, 0
    psq_l f26, 664(r4), 0, 0
    psq_l f27, 672(r4), 0, 0
    psq_l f28, 680(r4), 0, 0
    psq_l f29, 688(r4), 0, 0
    psq_l f30, 696(r4), 0, 0
    psq_l f31, 704(r4), 0, 0

_regular:
    lfd f0, 0x90(r4)
    lfd f1, 0x98(r4)
    lfd f2, 0xa0(r4)
    lfd f3, 0xa8(r4)
    lfd f4, 0xb0(r4)
    lfd f5, 0xb8(r4)
    lfd f6, 0xc0(r4)
    lfd f7, 0xc8(r4)
    lfd f8, 0xd0(r4)
    lfd f9, 0xd8(r4)
    lfd f10, 0xe0(r4)
    lfd f11, 0xe8(r4)
    lfd f12, 0xf0(r4)
    lfd f13, 0xf8(r4)
    lfd f14, 0x100(r4)
    lfd f15, 0x108(r4)
    lfd f16, 0x110(r4)
    lfd f17, 0x118(r4)
    lfd f18, 0x120(r4)
    lfd f19, 0x128(r4)
    lfd f20, 0x130(r4)
    lfd f21, 0x138(r4)
    lfd f22, 0x140(r4)
    lfd f23, 0x148(r4)
    lfd f24, 0x150(r4)
    lfd f25, 0x158(r4)
    lfd f26, 0x160(r4)
    lfd f27, 0x168(r4)
    lfd f28, 0x170(r4)
    lfd f29, 0x178(r4)
    lfd f30, 0x180(r4)
    lfd f31, 0x188(r4)

_return:
    blr
}

static asm void __OSSaveFPUContext(register u32 dummy1, register u32 dummy2, register OSContext *fpuContext)
{
    nofralloc
    lhz r3, 0x1a2(r5)
    ori r3, r3, 1
    sth r3, 0x1a2(r5)

    stfd f0, 0x90(r5)
    stfd f1, 0x98(r5)
    stfd f2, 0xa0(r5)
    stfd f3, 0xa8(r5)
    stfd f4, 0xb0(r5)
    stfd f5, 0xb8(r5)
    stfd f6, 0xc0(r5)
    stfd f7, 0xc8(r5)
    stfd f8, 0xd0(r5)
    stfd f9, 0xd8(r5)
    stfd f10, 0xe0(r5)
    stfd f11, 0xe8(r5)
    stfd f12, 0xf0(r5)
    stfd f13, 0xf8(r5)
    stfd f14, 0x100(r5)
    stfd f15, 0x108(r5)
    stfd f16, 0x110(r5)
    stfd f17, 0x118(r5)
    stfd f18, 0x120(r5)
    stfd f19, 0x128(r5)
    stfd f20, 0x130(r5)
    stfd f21, 0x138(r5)
    stfd f22, 0x140(r5)
    stfd f23, 0x148(r5)
    stfd f24, 0x150(r5)
    stfd f25, 0x158(r5)
    stfd f26, 0x160(r5)
    stfd f27, 0x168(r5)
    stfd f28, 0x170(r5)
    stfd f29, 0x178(r5)
    stfd f30, 0x180(r5)
    stfd f31, 0x188(r5)

    mffs f0
    stfd f0, 0x190(r5)
    lfd f0, 0x90(r5)

    mfspr r3, 920
    rlwinm. r3, r3, 3, 31, 31
    beq _return

    psq_st f0, 456(r5), 0, 0
    psq_st f1, 464(r5), 0, 0
    psq_st f2, 472(r5), 0, 0
    psq_st f3, 480(r5), 0, 0
    psq_st f4, 488(r5), 0, 0
    psq_st f5, 496(r5), 0, 0
    psq_st f6, 504(r5), 0, 0
    psq_st f7, 512(r5), 0, 0
    psq_st f8, 520(r5), 0, 0
    psq_st f9, 528(r5), 0, 0
    psq_st f10, 536(r5), 0, 0
    psq_st f11, 544(r5), 0, 0
    psq_st f12, 552(r5), 0, 0
    psq_st f13, 560(r5), 0, 0
    psq_st f14, 568(r5), 0, 0
    psq_st f15, 576(r5), 0, 0
    psq_st f16, 584(r5), 0, 0
    psq_st f17, 592(r5), 0, 0
    psq_st f18, 600(r5), 0, 0
    psq_st f19, 608(r5), 0, 0
    psq_st f20, 616(r5), 0, 0
    psq_st f21, 624(r5), 0, 0
    psq_st f22, 632(r5), 0, 0
    psq_st f23, 640(r5), 0, 0
    psq_st f24, 648(r5), 0, 0
    psq_st f25, 656(r5), 0, 0
    psq_st f26, 664(r5), 0, 0
    psq_st f27, 672(r5), 0, 0
    psq_st f28, 680(r5), 0, 0
    psq_st f29, 688(r5), 0, 0
    psq_st f30, 696(r5), 0, 0
    psq_st f31, 704(r5), 0, 0

_return:
    blr
}

asm void OSSaveFPUContext(register OSContext *fpuContext)
{
    nofralloc
    addi r5, r3, 0
    b __OSSaveFPUContext
}

asm void OSSetCurrentContext(register OSContext *context)
{
    nofralloc
    lis r4, 0x8000
    stw r3, 0xD4(r4)
    clrlwi r5, r3, 2
    stw r5, 0xC0(r4)
    lwz r5, 0xD8(r4)
    cmpw r5, r3
    bne _disableFPU

    lwz r6, 0x19c(r3)
    ori r6, r6, 0x2000
    stw r6, 0x19c(r3)
    mfmsr r6
    ori r6, r6, 2
    mtmsr r6
    blr

_disableFPU:
    lwz r6, 0x19c(r3)
    rlwinm r6, r6, 0, 19, 17
    stw r6, 0x19c(r3)
    mfmsr r6
    rlwinm r6, r6, 0, 19, 17
    ori r6, r6, 2
    mtmsr r6
    isync
    blr
}

OSContext *OSGetCurrentContext(void)
{
    return __OSCurrentContext;
}

asm u32 OSSaveContext(register OSContext *context)
{
    nofralloc
    stmw r13, 0x34(r3)

    mfspr r0, 913
    stw r0, 0x1a8(r3)
    mfspr r0, 914
    stw r0, 0x1ac(r3)
    mfspr r0, 915
    stw r0, 0x1b0(r3)
    mfspr r0, 916
    stw r0, 0x1b4(r3)
    mfspr r0, 917
    stw r0, 0x1b8(r3)
    mfspr r0, 918
    stw r0, 0x1bc(r3)
    mfspr r0, 919
    stw r0, 0x1c0(r3)

    mfcr r0
    stw r0, 0x80(r3)
    mflr r0
    stw r0, 0x84(r3)
    stw r0, 0x198(r3)
    mfmsr r0
    stw r0, 0x19c(r3)
    mfctr r0
    stw r0, 0x88(r3)
    mfxer r0
    stw r0, 0x8c(r3)

    stw r1, 0x4(r3)
    stw r2, 0x8(r3)

    li r0, 1
    stw r0, 0xc(r3)
    li r3, 0
    blr
}

asm void OSLoadContext(register OSContext *context)
{
    nofralloc

    // If interrupted inside OSDisableInterrupts, restart it from its beginning
    lis r4, __RAS_OSDisableInterrupts_begin@ha
    lwz r6, 0x198(r3)
    addi r5, r4, __RAS_OSDisableInterrupts_begin@l
    cmplw r6, r5
    ble _notInRAS
    lis r4, __RAS_OSDisableInterrupts_end@ha
    addi r0, r4, __RAS_OSDisableInterrupts_end@l
    cmplw r6, r0
    bge _notInRAS
    stw r5, 0x198(r3)

_notInRAS:
    lwz r0, 0x0(r3)
    lwz r1, 0x4(r3)
    lwz r2, 0x8(r3)

    lhz r4, 0x1a2(r3)
    rlwinm. r5, r4, 0, 30, 30
    beq _notExc
    rlwinm r4, r4, 0, 31, 29
    sth r4, 0x1a2(r3)
    lmw r5, 0x14(r3)
    b _misc

_notExc:
    lmw r13, 0x34(r3)

_misc:
    lwz r4, 0x1a8(r3)
    mtspr 913, r4
    lwz r4, 0x1ac(r3)
    mtspr 914, r4
    lwz r4, 0x1b0(r3)
    mtspr 915, r4
    lwz r4, 0x1b4(r3)
    mtspr 916, r4
    lwz r4, 0x1b8(r3)
    mtspr 917, r4
    lwz r4, 0x1bc(r3)
    mtspr 918, r4
    lwz r4, 0x1c0(r3)
    mtspr 919, r4

    lwz r4, 0x80(r3)
    mtcrf 0xff, r4
    lwz r4, 0x84(r3)
    mtlr r4
    lwz r4, 0x88(r3)
    mtctr r4
    lwz r4, 0x8c(r3)
    mtxer r4

    mfmsr r4
    rlwinm r4, r4, 0, 17, 15
    rlwinm r4, r4, 0, 31, 29
    mtmsr r4

    lwz r4, 0x198(r3)
    mtspr 26, r4
    lwz r4, 0x19c(r3)
    mtspr 27, r4

    lwz r4, 0x10(r3)
    lwz r3, 0xc(r3)
    rfi
}

asm u32 OSGetStackPointer(void)
{
    nofralloc
    mr r3, r1
    blr
}

asm void OSSwitchFiber(register u32 pc, register u32 newsp)
{
    nofralloc
    mflr r0
    mr r5, r1
    stwu r5, -8(r4)
    mr r1, r4
    stw r0, 4(r5)
    mtlr r3
    blrl
    lwz r5, 0(r1)
    lwz r0, 4(r5)
    mtlr r0
    mr r1, r5
    blr
}

asm void OSSwitchFiberEx(register u32 arg0, register u32 arg1, register u32 arg2, register u32 arg3,
                         register u32 pc, register u32 newsp)
{
    nofralloc
    mflr r0
    mr r9, r1
    stwu r9, -8(r8)
    mr r1, r8
    stw r0, 4(r9)
    mtlr r7
    blrl
    lwz r5, 0(r1)
    lwz r0, 4(r5)
    mtlr r0
    mr r1, r5
    blr
}

void OSClearContext(OSContext *context)
{
    context->mode = 0;
    context->state = 0;
    if (context == __OSFPUContext) {
        __OSFPUContext = NULL;
    }
}

asm void OSInitContext(register OSContext *context, register u32 pc, register u32 newsp)
{
    nofralloc

    stw r4, 0x198(r3)
    stw r5, 0x4(r3)
    li r11, 0
    ori r11, r11, 0x9032
    stw r11, 0x19c(r3)
    li r0, 0
    stw r0, 0x80(r3)
    stw r0, 0x8c(r3)

    stw r2, 0x8(r3)
    stw r13, 0x34(r3)

    stw r0, 0xc(r3)
    stw r0, 0x10(r3)
    stw r0, 0x14(r3)
    stw r0, 0x18(r3)
    stw r0, 0x1c(r3)
    stw r0, 0x20(r3)
    stw r0, 0x24(r3)
    stw r0, 0x28(r3)
    stw r0, 0x2c(r3)
    stw r0, 0x30(r3)
    stw r0, 0x38(r3)
    stw r0, 0x3c(r3)
    stw r0, 0x40(r3)
    stw r0, 0x44(r3)
    stw r0, 0x48(r3)
    stw r0, 0x4c(r3)
    stw r0, 0x50(r3)
    stw r0, 0x54(r3)
    stw r0, 0x58(r3)
    stw r0, 0x5c(r3)
    stw r0, 0x60(r3)
    stw r0, 0x64(r3)
    stw r0, 0x68(r3)
    stw r0, 0x6c(r3)
    stw r0, 0x70(r3)
    stw r0, 0x74(r3)
    stw r0, 0x78(r3)
    stw r0, 0x7c(r3)
    stw r0, 0x1a4(r3)
    stw r0, 0x1a8(r3)
    stw r0, 0x1ac(r3)
    stw r0, 0x1b0(r3)
    stw r0, 0x1b4(r3)
    stw r0, 0x1b8(r3)
    stw r0, 0x1bc(r3)
    stw r0, 0x1c0(r3)

    b OSClearContext
}

void OSDumpContext(OSContext *context)
{
    u32 i;
    u32 *p;

    OSReport("------------------------- Context 0x%08x -------------------------\n", context);

    for (i = 0; i < 16; ++i) {
        OSReport("r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n", i, context->gpr[i], context->gpr[i], i + 16,
                 context->gpr[i + 16], context->gpr[i + 16]);
    }

    OSReport("LR   = 0x%08x                   CR   = 0x%08x\n", context->lr, context->cr);
    OSReport("SRR0 = 0x%08x                   SRR1 = 0x%08x\n", context->srr0, context->srr1);

    OSReport("\nGQRs----------\n");
    for (i = 0; i < 4; ++i) {
        OSReport("gqr%d = 0x%08x \t gqr%d = 0x%08x\n", i, context->gqr[i], i + 4, context->gqr[i + 4]);
    }

    if (context->state & OS_CONTEXT_STATE_FPSAVED) {
        OSContext *currentContext;
        OSContext fpuContext;
        BOOL enabled;

        enabled = OSDisableInterrupts();
        currentContext = OSGetCurrentContext();
        OSClearContext(&fpuContext);
        OSSetCurrentContext(&fpuContext);

        OSReport("\n\nFPRs----------\n");
        for (i = 0; i < 32; i += 2) {
            OSReport("fr%d \t= %d \t fr%d \t= %d\n", i, (u32)context->fpr[i], i + 1, (u32)context->fpr[i + 1]);
        }
        OSReport("\n\nPSFs----------\n");
        for (i = 0; i < 32; i += 2) {
            OSReport("ps%d \t= 0x%x \t ps%d \t= 0x%x\n", i, (u32)context->psf[i], i + 1, (u32)context->psf[i + 1]);
        }

        OSClearContext(&fpuContext);
        OSSetCurrentContext(currentContext);
        OSRestoreInterrupts(enabled);
    }

    OSReport("\nAddress:      Back Chain    LR Save\n");
    for (i = 0, p = (u32 *)context->gpr[1]; p && (u32)p != 0xffffffff && i++ < 16; p = (u32 *)*p) {
        OSReport("0x%08x:   0x%08x    0x%08x\n", p, p[0], p[1]);
    }
}

static asm void OSSwitchFPUContext(register __OSException exception, register OSContext *context)
{
    nofralloc
    mfmsr r5
    ori r5, r5, 0x2000
    mtmsr r5
    isync
    lwz r5, 0x19c(r4)
    ori r5, r5, 0x2000
    mtspr 27, r5
    lis r3, 0x8000
    lwz r5, 0xD8(r3)
    stw r4, 0xD8(r3)
    cmpw r5, r4
    beq _restoreAndExit
    cmpwi r5, 0
    beq _loadNewFPUContext
    bl __OSSaveFPUContext
_loadNewFPUContext:
    bl __OSLoadFPUContext
_restoreAndExit:
    lwz r3, 0x80(r4)
    mtcrf 0xff, r3
    lwz r3, 0x84(r4)
    mtlr r3
    lwz r3, 0x198(r4)
    mtspr 26, r3
    lwz r3, 0x88(r4)
    mtctr r3
    lwz r3, 0x8c(r4)
    mtxer r3
    lhz r3, 0x1a2(r4)
    rlwinm r3, r3, 0, 31, 29
    sth r3, 0x1a2(r4)
    lwz r5, 0x14(r4)
    lwz r3, 0xc(r4)
    lwz r4, 0x10(r4)
    rfi
}

void __OSContextInit(void)
{
    __OSSetExceptionHandler(__OS_EXCEPTION_FLOATING_POINT, OSSwitchFPUContext);
    __OSFPUContext = NULL;
    DBPrintf("FPU-unavailable handler installed\n");
}
