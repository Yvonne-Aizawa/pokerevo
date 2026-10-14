#include "types.h"
#include "stdio.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSThread.h"
#include "SDK/base/PPCArch.h"

#define MSR_FP  0x00002000
#define MSR_FE0 0x00000800
#define MSR_FE1 0x00000100
#define MSR_RI  0x00000002

#define SRR1_PROGRAM_FPE 0x00100000

#define FPSCR_ENABLE 0x000000F8
#define FPSCR_NI     0x00000004
#define FPSCR_VALID  0x6005F8FF

#define __OSActiveThreadQueue (*(OSThreadQueue *)0x800000DC)

#define __DSPRegs ((vu16 *)0xCC005000)
#define __DIRegs  ((vu32 *)0xCD006000)

OSErrorHandler __OSErrorTable[OS_ERROR_MAX];
u32 __OSFpscrEnableBits = FPSCR_ENABLE;

void OSPanic(const char *file, int line, const char *msg, ...)
{
    va_list marker;
    u32 i;
    u32 *p;

    OSDisableInterrupts();
    va_start(marker, msg);
    vprintf(msg, marker);
    va_end(marker);
    OSReport(" in \"%s\" on line %d.\n", file, line);

    OSReport("\nAddress:      Back Chain    LR Save\n");
    for (i = 0, p = (u32 *)OSGetStackPointer(); p && (u32)p != 0xffffffff && i++ < 16; p = (u32 *)*p) {
        OSReport("0x%08x:   0x%08x    0x%08x\n", p, p[0], p[1]);
    }

    PPCHalt();
}

OSErrorHandler OSSetErrorHandler(OSError error, OSErrorHandler handler)
{
    OSErrorHandler oldHandler;
    BOOL enabled;

    enabled = OSDisableInterrupts();
    oldHandler = __OSErrorTable[error];
    __OSErrorTable[error] = handler;

    if (error == OS_ERROR_FPE) {
        u32 msr;
        u32 fpscr;
        OSThread *thread;

        msr = PPCMfmsr();
        PPCMtmsr(msr | MSR_FP);
        fpscr = PPCMffpscr();
        if (handler) {
            for (thread = __OSActiveThreadQueue.head; thread; thread = thread->linkActive.next) {
                thread->context.srr1 |= MSR_FE0 | MSR_FE1;
                if (!(thread->context.state & OS_CONTEXT_STATE_FPSAVED)) {
                    int i;

                    thread->context.state |= OS_CONTEXT_STATE_FPSAVED;
                    for (i = 0; i < 32; ++i) {
                        *(u64 *)&thread->context.fpr[i] = (u64)0xffffffffffffffffLL;
                        *(u64 *)&thread->context.psf[i] = (u64)0xffffffffffffffffLL;
                    }
                    thread->context.fpscr = FPSCR_NI;
                }
                thread->context.fpscr |= __OSFpscrEnableBits & FPSCR_ENABLE;
                thread->context.fpscr &= FPSCR_VALID;
            }
            fpscr |= __OSFpscrEnableBits & FPSCR_ENABLE;
            msr |= MSR_FE0 | MSR_FE1;
        } else {
            for (thread = __OSActiveThreadQueue.head; thread; thread = thread->linkActive.next) {
                thread->context.srr1 &= ~(MSR_FE0 | MSR_FE1);
                thread->context.fpscr &= ~FPSCR_ENABLE;
                thread->context.fpscr &= FPSCR_VALID;
            }
            fpscr &= ~FPSCR_ENABLE;
            msr &= ~(MSR_FE0 | MSR_FE1);
        }

        fpscr &= FPSCR_VALID;
        PPCMtfpscr(fpscr);
        PPCMtmsr(msr);
    }

    OSRestoreInterrupts(enabled);
    return oldHandler;
}

void __OSUnhandledException(__OSException exception, OSContext *context, u32 dsisr, u32 dar)
{
    OSTime now;

    now = OSGetTime();

    if (!(context->srr1 & MSR_RI)) {
        OSReport("Non-recoverable Exception %d", exception);
    } else {
        if (exception == __OS_EXCEPTION_PROGRAM && (context->srr1 & SRR1_PROGRAM_FPE) &&
            __OSErrorTable[OS_ERROR_FPE] != NULL) {
            u32 fpscr;
            u32 msr;

            exception = OS_ERROR_FPE;

            msr = PPCMfmsr();
            PPCMtmsr(msr | MSR_FP);
            if (__OSFPUContext) {
                OSSaveFPUContext(__OSFPUContext);
            }
            fpscr = PPCMffpscr();
            fpscr &= FPSCR_VALID;
            PPCMtfpscr(fpscr);
            PPCMtmsr(msr);

            if (__OSFPUContext == context) {
                OSDisableScheduler();
                __OSErrorTable[exception](exception, context, dsisr, dar);
                context->srr1 &= ~MSR_FP;
                __OSFPUContext = NULL;
                context->fpscr &= FPSCR_VALID;
                OSEnableScheduler();
                __OSReschedule();
            } else {
                context->srr1 &= ~MSR_FP;
                __OSFPUContext = NULL;
            }

            OSLoadContext(context);
        }

        if (__OSErrorTable[exception]) {
            OSDisableScheduler();
            __OSErrorTable[exception](exception, context, dsisr, dar);
            OSEnableScheduler();
            __OSReschedule();
            OSLoadContext(context);
        }

        if (exception == __OS_EXCEPTION_DECREMENTER) {
            OSLoadContext(context);
        }

        OSReport("Unhandled Exception %d", exception);
    }

    OSReport("\n");
    OSDumpContext(context);
    OSReport("\nDSISR = 0x%08x                   DAR  = 0x%08x\n", dsisr, dar);
    OSReport("TB = 0x%016llx\n", now);

    switch (exception) {
    case __OS_EXCEPTION_DSI:
        OSReport("\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n",
                 context->srr0, dar);
        break;
    case __OS_EXCEPTION_ISI:
        OSReport("\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n", context->srr0);
        break;
    case __OS_EXCEPTION_ALIGNMENT:
        OSReport("\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n",
                 context->srr0, dar);
        break;
    case __OS_EXCEPTION_PROGRAM:
        OSReport("\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n",
                 context->srr0, dar);
        break;
    case OS_ERROR_PROTECTION:
        OSReport("\n");
        OSReport("AI DMA Address =   0x%04x%04x\n", __DSPRegs[0x18], __DSPRegs[0x19]);
        OSReport("ARAM DMA Address = 0x%04x%04x\n", __DSPRegs[0x10], __DSPRegs[0x11]);
        OSReport("DI DMA Address =   0x%08x\n", __DIRegs[5]);
        break;
    }

    OSReport("\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n", __OSLastInterrupt, __OSLastInterruptSrr0,
             __OSLastInterruptTime);
    PPCHalt();
}
