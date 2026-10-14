#include "types.h"
#include "SDK/DSP/dsp.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSInterrupt.h"

#define __DSPRegs ((vu16 *)0xCC005000)

const char *__DSPVersion = "<< RVL_SDK - DSP \trelease build: Nov 30 2006 03:26:46 (0x4199_60831) >>";

static BOOL __DSP_init_flag;

u32 DSPCheckMailToDSP(void)
{
    return (u32)((__DSPRegs[0] >> 15) & 1);
}

u32 DSPCheckMailFromDSP(void)
{
    return (u32)((__DSPRegs[2] >> 15) & 1);
}

u32 DSPReadMailFromDSP(void)
{
    u16 reg1;
    u16 reg2;

    reg1 = __DSPRegs[2];
    reg2 = __DSPRegs[3];
    return (u32)reg1 << 16 | reg2;
}

void DSPSendMailToDSP(u32 mail)
{
    __DSPRegs[0] = (u16)(mail >> 16);
    __DSPRegs[1] = (u16)(mail & 0xFFFF);
}

void DSPInit(void)
{
    BOOL enabled;
    u16 tmp;

    // __DATE__ and __TIME__ in the SDK
    __DSP_debug_printf("DSPInit(): Build Date: %s %s\n", "Nov 30 2006", "03:26:46");

    if (__DSP_init_flag == TRUE) {
        return;
    }

    OSRegisterVersion(__DSPVersion);
    enabled = OSDisableInterrupts();
    __OSSetInterruptHandler(__OS_INTERRUPT_DSP_DSP, __DSPHandler);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_DSP_DSP);

    tmp = __DSPRegs[5];
    tmp = (u16)((tmp & ~0xA8) | 0x800);
    __DSPRegs[5] = tmp;

    tmp = __DSPRegs[5];
    tmp = (u16)(tmp & ~0xAC);
    __DSPRegs[5] = tmp;

    __DSP_tmp_task = NULL;
    __DSP_curr_task = NULL;
    __DSP_last_task = NULL;
    __DSP_first_task = NULL;

    __DSP_init_flag = TRUE;
    OSRestoreInterrupts(enabled);
}

BOOL DSPCheckInit(void)
{
    return __DSP_init_flag;
}

DSPTaskInfo *DSPAddTask(DSPTaskInfo *task)
{
    BOOL enabled;

    enabled = OSDisableInterrupts();
    __DSP_insert_task(task);
    task->state = DSP_TASK_STATE_INIT;
    task->flags = DSP_TASK_FLAG_ATTACHED;
    OSRestoreInterrupts(enabled);

    if (task == __DSP_first_task) {
        __DSP_boot_task(task);
    }
    return task;
}

DSPTaskInfo *DSPAssertTask(DSPTaskInfo *task)
{
    BOOL enabled;
    BOOL enabled2;
    u16 tmp;

    enabled = OSDisableInterrupts();

    if (__DSP_curr_task == task) {
        __DSP_rude_task = task;
        __DSP_rude_task_pending = TRUE;
        OSRestoreInterrupts(enabled);
        return task;
    }

    if (task->priority < __DSP_curr_task->priority) {
        __DSP_rude_task = task;
        __DSP_rude_task_pending = TRUE;
        if (__DSP_curr_task->state == DSP_TASK_STATE_RUN) {
            enabled2 = OSDisableInterrupts();
            tmp = __DSPRegs[5];
            tmp = (u16)((tmp & ~0xA8) | 2);
            __DSPRegs[5] = tmp;
            OSRestoreInterrupts(enabled2);
        }
        OSRestoreInterrupts(enabled);
        return task;
    }

    OSRestoreInterrupts(enabled);
    return NULL;
}
