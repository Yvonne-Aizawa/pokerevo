#include "types.h"
#include "string.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSThread.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OS.h"

#define __OSInterruptMaskGlobal (*(OSInterruptMask *)0x800000C4)
#define __OSInterruptMaskLocal  (*(OSInterruptMask *)0x800000C8)

#define __PIRegs  ((vu32 *)0xCC003000)
#define __MEMRegs ((vu16 *)0xCC004000)
#define __DSPRegs ((vu16 *)0xCC005000)
#define __EXIRegs ((vu32 *)0xCD006800)
#define __AIRegs  ((vu32 *)0xCD006C00)

#define __HollywoodIntMask (*(vu32 *)0xCD000034)

static asm void ExternalInterruptHandler(register __OSException exception, register OSContext *context);

static __OSInterruptHandler *InterruptHandlerTable;

static OSInterruptMask InterruptPrioTable[] = {
    OS_INTERRUPTMASK_PI_ERROR,
    OS_INTERRUPTMASK_PI_DEBUG,
    OS_INTERRUPTMASK_MEM,
    OS_INTERRUPTMASK_PI_RSW,
    OS_INTERRUPTMASK_PI_VI,
    OS_INTERRUPTMASK_PI_ACR,
    OS_INTERRUPTMASK_PI_PE,
    OS_INTERRUPTMASK_PI_HSP,
    OS_INTERRUPTMASK_DSP_ARAM | OS_INTERRUPTMASK_DSP_DSP | OS_INTERRUPTMASK_AI | OS_INTERRUPTMASK_EXI |
        OS_INTERRUPTMASK_PI_SI | OS_INTERRUPTMASK_PI_DI,
    OS_INTERRUPTMASK_DSP_AI,
    OS_INTERRUPTMASK_PI_CP,
    0xFFFFFFFF,
};

OSTime __OSLastInterruptTime;
__OSInterrupt __OSLastInterrupt;
u32 __OSLastInterruptSrr0;

asm BOOL OSDisableInterrupts(void)
{
    nofralloc
entry __RAS_OSDisableInterrupts_begin
    mfmsr r3
    rlwinm r4, r3, 0, 17, 15
    mtmsr r4
entry __RAS_OSDisableInterrupts_end
    rlwinm r3, r3, 17, 31, 31
    blr
}

asm BOOL OSEnableInterrupts(void)
{
    nofralloc
    mfmsr r3
    ori r4, r3, 0x8000
    mtmsr r4
    rlwinm r3, r3, 17, 31, 31
    blr
}

asm BOOL OSRestoreInterrupts(register BOOL level)
{
    nofralloc
    cmpwi level, 0
    mfmsr r4
    beq _disable
    ori r5, r4, 0x8000
    b _restore
_disable:
    rlwinm r5, r4, 0, 17, 15
_restore:
    mtmsr r5
    rlwinm r3, r4, 17, 31, 31
    blr
}

__OSInterruptHandler __OSSetInterruptHandler(__OSInterrupt interrupt, __OSInterruptHandler handler)
{
    __OSInterruptHandler oldHandler;

    oldHandler = InterruptHandlerTable[interrupt];
    InterruptHandlerTable[interrupt] = handler;
    return oldHandler;
}

__OSInterruptHandler __OSGetInterruptHandler(__OSInterrupt interrupt)
{
    return InterruptHandlerTable[interrupt];
}

void __OSInterruptInit(void)
{
    InterruptHandlerTable = (__OSInterruptHandler *)0x80003040;
    memset(InterruptHandlerTable, 0, __OS_INTERRUPT_MAX * sizeof(__OSInterruptHandler));

    __OSInterruptMaskGlobal = 0;
    __OSInterruptMaskLocal = 0;

    __PIRegs[1] = 0xF0;
    __HollywoodIntMask = 0x40000000;

    __OSMaskInterrupts(OS_INTERRUPTMASK_MEM | OS_INTERRUPTMASK_DSP | OS_INTERRUPTMASK_AI | OS_INTERRUPTMASK_EXI |
                       OS_INTERRUPTMASK_PI);

    __OSSetExceptionHandler(__OS_EXCEPTION_EXTERNAL_INTERRUPT, ExternalInterruptHandler);
}

static OSInterruptMask SetInterruptMask(OSInterruptMask mask, OSInterruptMask current)
{
    u32 reg;

    switch (__cntlzw(mask)) {
    case __OS_INTERRUPT_MEM_0:
    case __OS_INTERRUPT_MEM_1:
    case __OS_INTERRUPT_MEM_2:
    case __OS_INTERRUPT_MEM_3:
    case __OS_INTERRUPT_MEM_ADDRESS:
        reg = 0;
        if (!(current & OS_INTERRUPTMASK_MEM_0)) {
            reg |= 0x1;
        }
        if (!(current & OS_INTERRUPTMASK_MEM_1)) {
            reg |= 0x2;
        }
        if (!(current & OS_INTERRUPTMASK_MEM_2)) {
            reg |= 0x4;
        }
        if (!(current & OS_INTERRUPTMASK_MEM_3)) {
            reg |= 0x8;
        }
        if (!(current & OS_INTERRUPTMASK_MEM_ADDRESS)) {
            reg |= 0x10;
        }
        __MEMRegs[0x0E] = (u16)reg;
        mask &= ~OS_INTERRUPTMASK_MEM;
        break;
    case __OS_INTERRUPT_DSP_AI:
    case __OS_INTERRUPT_DSP_ARAM:
    case __OS_INTERRUPT_DSP_DSP:
        reg = __DSPRegs[5];
        reg &= ~0x1F8;
        if (!(current & OS_INTERRUPTMASK_DSP_AI)) {
            reg |= 0x10;
        }
        if (!(current & OS_INTERRUPTMASK_DSP_ARAM)) {
            reg |= 0x40;
        }
        if (!(current & OS_INTERRUPTMASK_DSP_DSP)) {
            reg |= 0x100;
        }
        __DSPRegs[5] = (u16)reg;
        mask &= ~OS_INTERRUPTMASK_DSP;
        break;
    case __OS_INTERRUPT_AI_AI:
        reg = __AIRegs[0];
        reg &= ~0x2C;
        if (!(current & OS_INTERRUPTMASK_AI_AI)) {
            reg |= 0x4;
        }
        __AIRegs[0] = reg;
        mask &= ~OS_INTERRUPTMASK_AI;
        break;
    case __OS_INTERRUPT_EXI_0_EXI:
    case __OS_INTERRUPT_EXI_0_TC:
    case __OS_INTERRUPT_EXI_0_EXT:
        reg = __EXIRegs[0];
        reg &= ~0x2C0F;
        if (!(current & OS_INTERRUPTMASK_EXI_0_EXI)) {
            reg |= 0x1;
        }
        if (!(current & OS_INTERRUPTMASK_EXI_0_TC)) {
            reg |= 0x4;
        }
        if (!(current & OS_INTERRUPTMASK_EXI_0_EXT)) {
            reg |= 0x400;
        }
        __EXIRegs[0] = reg;
        mask &= ~OS_INTERRUPTMASK_EXI_0;
        break;
    case __OS_INTERRUPT_EXI_1_EXI:
    case __OS_INTERRUPT_EXI_1_TC:
    case __OS_INTERRUPT_EXI_1_EXT:
        reg = __EXIRegs[5];
        reg &= ~0xC0F;
        if (!(current & OS_INTERRUPTMASK_EXI_1_EXI)) {
            reg |= 0x1;
        }
        if (!(current & OS_INTERRUPTMASK_EXI_1_TC)) {
            reg |= 0x4;
        }
        if (!(current & OS_INTERRUPTMASK_EXI_1_EXT)) {
            reg |= 0x400;
        }
        __EXIRegs[5] = reg;
        mask &= ~OS_INTERRUPTMASK_EXI_1;
        break;
    case __OS_INTERRUPT_EXI_2_EXI:
    case __OS_INTERRUPT_EXI_2_TC:
        reg = __EXIRegs[10];
        reg &= ~0xF;
        if (!(current & OS_INTERRUPTMASK_EXI_2_EXI)) {
            reg |= 0x1;
        }
        if (!(current & OS_INTERRUPTMASK_EXI_2_TC)) {
            reg |= 0x4;
        }
        __EXIRegs[10] = reg;
        mask &= ~OS_INTERRUPTMASK_EXI_2;
        break;
    case __OS_INTERRUPT_PI_CP:
    case __OS_INTERRUPT_PI_PE_TOKEN:
    case __OS_INTERRUPT_PI_PE_FINISH:
    case __OS_INTERRUPT_PI_SI:
    case __OS_INTERRUPT_PI_DI:
    case __OS_INTERRUPT_PI_RSW:
    case __OS_INTERRUPT_PI_ERROR:
    case __OS_INTERRUPT_PI_VI:
    case __OS_INTERRUPT_PI_DEBUG:
    case __OS_INTERRUPT_PI_HSP:
    case __OS_INTERRUPT_PI_ACR:
        reg = 0xF0;
        if (!(current & OS_INTERRUPTMASK_PI_CP)) {
            reg |= 0x800;
        }
        if (!(current & OS_INTERRUPTMASK_PI_SI)) {
            reg |= 0x8;
        }
        if (!(current & OS_INTERRUPTMASK_PI_DI)) {
            reg |= 0x4;
        }
        if (!(current & OS_INTERRUPTMASK_PI_RSW)) {
            reg |= 0x2;
        }
        if (!(current & OS_INTERRUPTMASK_PI_ERROR)) {
            reg |= 0x1;
        }
        if (!(current & OS_INTERRUPTMASK_PI_VI)) {
            reg |= 0x100;
        }
        if (!(current & OS_INTERRUPTMASK_PI_DEBUG)) {
            reg |= 0x1000;
        }
        if (!(current & OS_INTERRUPTMASK_PI_PE_TOKEN)) {
            reg |= 0x200;
        }
        if (!(current & OS_INTERRUPTMASK_PI_PE_FINISH)) {
            reg |= 0x400;
        }
        if (!(current & OS_INTERRUPTMASK_PI_HSP)) {
            reg |= 0x2000;
        }
        if (!(current & OS_INTERRUPTMASK_PI_ACR)) {
            reg |= 0x4000;
        }
        __PIRegs[1] = reg;
        mask &= ~OS_INTERRUPTMASK_PI;
        break;
    default:
        break;
    }
    return mask;
}

OSInterruptMask __OSMaskInterrupts(OSInterruptMask global)
{
    BOOL enabled;
    OSInterruptMask prev;
    OSInterruptMask local;
    OSInterruptMask mask;

    enabled = OSDisableInterrupts();
    prev = __OSInterruptMaskGlobal;
    local = __OSInterruptMaskLocal;
    mask = ~(prev | local) & global;
    global |= prev;
    __OSInterruptMaskGlobal = global;
    while (mask) {
        mask = SetInterruptMask(mask, global | local);
    }
    OSRestoreInterrupts(enabled);
    return prev;
}

OSInterruptMask __OSUnmaskInterrupts(OSInterruptMask global)
{
    BOOL enabled;
    OSInterruptMask prev;
    OSInterruptMask local;
    OSInterruptMask mask;

    enabled = OSDisableInterrupts();
    prev = __OSInterruptMaskGlobal;
    local = __OSInterruptMaskLocal;
    mask = (prev | local) & global;
    global = prev & ~global;
    __OSInterruptMaskGlobal = global;
    while (mask) {
        mask = SetInterruptMask(mask, global | local);
    }
    OSRestoreInterrupts(enabled);
    return prev;
}

void __OSDispatchInterrupt(__OSException exception, OSContext *context)
{
    u32 intsr;
    u32 reg;
    u32 intmr;
    OSInterruptMask cause;
    OSInterruptMask unmasked;
    OSInterruptMask *prio;
    __OSInterrupt interrupt;
    __OSInterruptHandler handler;
#pragma unused(exception)

    intsr = __PIRegs[0];
    intmr = __PIRegs[1];
    intsr &= ~0x00010000;

    if (intsr == 0 || (intsr & intmr) == 0) {
        OSLoadContext(context);
    }

    cause = 0;

    if (intsr & 0x00000080) {
        reg = __MEMRegs[0x0F];
        if (reg & 0x1) {
            cause |= OS_INTERRUPTMASK_MEM_0;
        }
        if (reg & 0x2) {
            cause |= OS_INTERRUPTMASK_MEM_1;
        }
        if (reg & 0x4) {
            cause |= OS_INTERRUPTMASK_MEM_2;
        }
        if (reg & 0x8) {
            cause |= OS_INTERRUPTMASK_MEM_3;
        }
        if (reg & 0x10) {
            cause |= OS_INTERRUPTMASK_MEM_ADDRESS;
        }
    }

    if (intsr & 0x00000040) {
        reg = __DSPRegs[5];
        if (reg & 0x8) {
            cause |= OS_INTERRUPTMASK_DSP_AI;
        }
        if (reg & 0x20) {
            cause |= OS_INTERRUPTMASK_DSP_ARAM;
        }
        if (reg & 0x80) {
            cause |= OS_INTERRUPTMASK_DSP_DSP;
        }
    }

    if (intsr & 0x00000020) {
        reg = __AIRegs[0];
        if (reg & 0x8) {
            cause |= OS_INTERRUPTMASK_AI_AI;
        }
    }

    if (intsr & 0x00000010) {
        reg = __EXIRegs[0];
        if (reg & 0x2) {
            cause |= OS_INTERRUPTMASK_EXI_0_EXI;
        }
        if (reg & 0x8) {
            cause |= OS_INTERRUPTMASK_EXI_0_TC;
        }
        if (reg & 0x800) {
            cause |= OS_INTERRUPTMASK_EXI_0_EXT;
        }
        reg = __EXIRegs[5];
        if (reg & 0x2) {
            cause |= OS_INTERRUPTMASK_EXI_1_EXI;
        }
        if (reg & 0x8) {
            cause |= OS_INTERRUPTMASK_EXI_1_TC;
        }
        if (reg & 0x800) {
            cause |= OS_INTERRUPTMASK_EXI_1_EXT;
        }
        reg = __EXIRegs[10];
        if (reg & 0x2) {
            cause |= OS_INTERRUPTMASK_EXI_2_EXI;
        }
        if (reg & 0x8) {
            cause |= OS_INTERRUPTMASK_EXI_2_TC;
        }
    }

    if (intsr & 0x00002000) {
        cause |= OS_INTERRUPTMASK_PI_HSP;
    }
    if (intsr & 0x00001000) {
        cause |= OS_INTERRUPTMASK_PI_DEBUG;
    }
    if (intsr & 0x00000400) {
        cause |= OS_INTERRUPTMASK_PI_PE_FINISH;
    }
    if (intsr & 0x00000200) {
        cause |= OS_INTERRUPTMASK_PI_PE_TOKEN;
    }
    if (intsr & 0x00000100) {
        cause |= OS_INTERRUPTMASK_PI_VI;
    }
    if (intsr & 0x00000008) {
        cause |= OS_INTERRUPTMASK_PI_SI;
    }
    if (intsr & 0x00000004) {
        cause |= OS_INTERRUPTMASK_PI_DI;
    }
    if (intsr & 0x00000002) {
        cause |= OS_INTERRUPTMASK_PI_RSW;
    }
    if (intsr & 0x00000800) {
        cause |= OS_INTERRUPTMASK_PI_CP;
    }
    if (intsr & 0x00000001) {
        cause |= OS_INTERRUPTMASK_PI_ERROR;
    }
    if (intsr & 0x00004000) {
        cause |= OS_INTERRUPTMASK_PI_ACR;
    }

    unmasked = cause & ~(__OSInterruptMaskGlobal | __OSInterruptMaskLocal);
    if (unmasked) {
        for (prio = InterruptPrioTable;; ++prio) {
            if (unmasked & *prio) {
                interrupt = (__OSInterrupt)__cntlzw(unmasked & *prio);
                break;
            }
        }

        handler = __OSGetInterruptHandler(interrupt);
        if (handler) {
            if (__OS_INTERRUPT_MEM_ADDRESS < interrupt) {
                __OSLastInterrupt = interrupt;
                __OSLastInterruptTime = OSGetTime();
                __OSLastInterruptSrr0 = context->srr0;
            }

            OSDisableScheduler();
            handler(interrupt, context);
            OSEnableScheduler();
            __OSReschedule();
            OSLoadContext(context);
        }
    }

    OSLoadContext(context);
}

static asm void ExternalInterruptHandler(register __OSException exception, register OSContext *context)
{
    nofralloc
    stw r0, 0x0(r4)
    stw r1, 0x4(r4)
    stw r2, 0x8(r4)
    stmw r6, 0x18(r4)
    mfspr r0, 0x391
    stw r0, 0x1a8(r4)
    mfspr r0, 0x392
    stw r0, 0x1ac(r4)
    mfspr r0, 0x393
    stw r0, 0x1b0(r4)
    mfspr r0, 0x394
    stw r0, 0x1b4(r4)
    mfspr r0, 0x395
    stw r0, 0x1b8(r4)
    mfspr r0, 0x396
    stw r0, 0x1bc(r4)
    mfspr r0, 0x397
    stw r0, 0x1c0(r4)
    stwu r1, -8(r1)
    b __OSDispatchInterrupt
}
