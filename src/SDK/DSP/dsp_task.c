#include "types.h"
#include "SDK/DSP/dsp.h"
#include "SDK/OS/OSContext.h"

#define __DSPRegs ((vu16 *)0xCC005000)

DSPTaskInfo *__DSP_curr_task;
DSPTaskInfo *__DSP_first_task;
DSPTaskInfo *__DSP_last_task;
DSPTaskInfo *__DSP_tmp_task;
DSPTaskInfo *__DSP_rude_task;
BOOL __DSP_rude_task_pending;

void __DSPHandler(__OSInterrupt interrupt, OSContext *context)
{
#pragma unused(interrupt)
    OSContext exceptionContext;
    u16 tmp;
    u32 mail;

    tmp = __DSPRegs[5];
    tmp = (u16)((tmp & ~0x28) | 0x80);
    __DSPRegs[5] = tmp;

    OSClearContext(&exceptionContext);
    OSSetCurrentContext(&exceptionContext);

    while (!DSPCheckMailFromDSP()) {
    }
    mail = DSPReadMailFromDSP();

    if ((__DSP_curr_task->flags & DSP_TASK_FLAG_CANCEL) && mail == 0xDCD10002) {
        mail = 0xDCD10003;
    }

    switch (mail) {
    case 0xDCD10000:
        __DSP_curr_task->state = DSP_TASK_STATE_RUN;
        if (__DSP_curr_task->init_cb) {
            __DSP_curr_task->init_cb(__DSP_curr_task);
        }
        break;
    case 0xDCD10001:
        __DSP_curr_task->state = DSP_TASK_STATE_RUN;
        if (__DSP_curr_task->res_cb) {
            __DSP_curr_task->res_cb(__DSP_curr_task);
        }
        break;
    case 0xDCD10002:
        if (__DSP_rude_task_pending) {
            if (__DSP_curr_task == __DSP_rude_task) {
                DSPSendMailToDSP(0xCDD10003);
                while (DSPCheckMailToDSP()) {
                }
                __DSP_rude_task = NULL;
                __DSP_rude_task_pending = FALSE;
                if (__DSP_curr_task->res_cb) {
                    __DSP_curr_task->res_cb(__DSP_curr_task);
                }
            } else {
                DSPSendMailToDSP(0xCDD10001);
                while (DSPCheckMailToDSP()) {
                }
                __DSP_exec_task(__DSP_curr_task, __DSP_rude_task);
                __DSP_curr_task->state = DSP_TASK_STATE_YIELD;
                __DSP_curr_task = __DSP_rude_task;
                __DSP_rude_task = NULL;
                __DSP_rude_task_pending = FALSE;
            }
            break;
        }

        if (__DSP_curr_task->next == NULL) {
            if (__DSP_curr_task == __DSP_first_task) {
                DSPSendMailToDSP(0xCDD10003);
                while (DSPCheckMailToDSP()) {
                }
                if (__DSP_curr_task->res_cb) {
                    __DSP_curr_task->res_cb(__DSP_curr_task);
                }
            } else {
                DSPSendMailToDSP(0xCDD10001);
                while (DSPCheckMailToDSP()) {
                }
                __DSP_exec_task(__DSP_curr_task, __DSP_first_task);
                __DSP_curr_task->state = DSP_TASK_STATE_YIELD;
                __DSP_curr_task = __DSP_first_task;
            }
        } else {
            DSPSendMailToDSP(0xCDD10001);
            while (DSPCheckMailToDSP()) {
            }
            __DSP_exec_task(__DSP_curr_task, __DSP_curr_task->next);
            __DSP_curr_task->state = DSP_TASK_STATE_YIELD;
            __DSP_curr_task = __DSP_curr_task->next;
        }
        break;
    case 0xDCD10003:
        if (__DSP_rude_task_pending) {
            if (__DSP_curr_task != __DSP_rude_task) {
                if (__DSP_curr_task->done_cb) {
                    __DSP_curr_task->done_cb(__DSP_curr_task);
                }
                DSPSendMailToDSP(0xCDD10001);
                while (DSPCheckMailToDSP()) {
                }
                __DSP_exec_task(NULL, __DSP_rude_task);
                __DSP_remove_task(__DSP_curr_task);
                __DSP_curr_task = __DSP_rude_task;
                __DSP_rude_task = NULL;
                __DSP_rude_task_pending = FALSE;
                break;
            }
            __DSP_rude_task = NULL;
            __DSP_rude_task_pending = FALSE;
        }

        if (__DSP_curr_task->next == NULL) {
            if (__DSP_curr_task == __DSP_first_task) {
                if (__DSP_curr_task->done_cb) {
                    __DSP_curr_task->done_cb(__DSP_curr_task);
                }
                DSPSendMailToDSP(0xCDD10002);
                while (DSPCheckMailToDSP()) {
                }
                __DSP_curr_task->state = DSP_TASK_STATE_DONE;
                __DSP_remove_task(__DSP_curr_task);
            } else {
                if (__DSP_curr_task->done_cb) {
                    __DSP_curr_task->done_cb(__DSP_curr_task);
                }
                DSPSendMailToDSP(0xCDD10001);
                while (DSPCheckMailToDSP()) {
                }
                __DSP_curr_task->state = DSP_TASK_STATE_DONE;
                __DSP_exec_task(NULL, __DSP_first_task);
                __DSP_curr_task = __DSP_first_task;
                __DSP_remove_task(__DSP_last_task);
            }
        } else {
            if (__DSP_curr_task->done_cb) {
                __DSP_curr_task->done_cb(__DSP_curr_task);
            }
            DSPSendMailToDSP(0xCDD10001);
            while (DSPCheckMailToDSP()) {
            }
            __DSP_curr_task->state = DSP_TASK_STATE_DONE;
            __DSP_exec_task(NULL, __DSP_curr_task->next);
            __DSP_curr_task = __DSP_curr_task->next;
            __DSP_remove_task(__DSP_curr_task->prev);
        }
        break;
    case 0xDCD10004:
        if (__DSP_curr_task->req_cb) {
            __DSP_curr_task->req_cb(__DSP_curr_task);
        }
        break;
    }

    OSClearContext(&exceptionContext);
    OSSetCurrentContext(context);
}

void __DSP_exec_task(DSPTaskInfo *curr, DSPTaskInfo *next)
{
    if (curr) {
        DSPSendMailToDSP((u32)curr->dram_mmem_addr);
        while (DSPCheckMailToDSP()) {
        }
        DSPSendMailToDSP(curr->dram_length);
        while (DSPCheckMailToDSP()) {
        }
        DSPSendMailToDSP(curr->dram_addr);
        while (DSPCheckMailToDSP()) {
        }
    } else {
        DSPSendMailToDSP(0);
        while (DSPCheckMailToDSP()) {
        }
        DSPSendMailToDSP(0);
        while (DSPCheckMailToDSP()) {
        }
        DSPSendMailToDSP(0);
        while (DSPCheckMailToDSP()) {
        }
    }

    DSPSendMailToDSP((u32)next->iram_mmem_addr);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(next->iram_length);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(next->iram_addr);
    while (DSPCheckMailToDSP()) {
    }

    if (next->state == DSP_TASK_STATE_INIT) {
        DSPSendMailToDSP(next->dsp_init_vector);
        while (DSPCheckMailToDSP()) {
        }
        DSPSendMailToDSP(0);
        while (DSPCheckMailToDSP()) {
        }
        DSPSendMailToDSP(0);
        while (DSPCheckMailToDSP()) {
        }
        DSPSendMailToDSP(0);
        while (DSPCheckMailToDSP()) {
        }
    } else {
        DSPSendMailToDSP(next->dsp_resume_vector);
        while (DSPCheckMailToDSP()) {
        }
        DSPSendMailToDSP((u32)next->dram_mmem_addr);
        while (DSPCheckMailToDSP()) {
        }
        DSPSendMailToDSP(next->dram_length);
        while (DSPCheckMailToDSP()) {
        }
        DSPSendMailToDSP(next->dram_addr);
        while (DSPCheckMailToDSP()) {
        }
    }
}

void __DSP_boot_task(DSPTaskInfo *task)
{
    volatile u32 mail;

    while (!DSPCheckMailFromDSP()) {
    }
    mail = DSPReadMailFromDSP();

    DSPSendMailToDSP(0x80F3A001);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP((u32)task->iram_mmem_addr);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(0x80F3C002);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(task->iram_addr & 0xFFFF);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(0x80F3A002);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(task->iram_length);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(0x80F3B002);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(0);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(0x80F3D001);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(task->dsp_init_vector);
    while (DSPCheckMailToDSP()) {
    }

    __DSP_debug_printf("DSP is booting task: 0x%08X\n", task);
    __DSP_debug_printf("__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n", task->iram_mmem_addr);
    __DSP_debug_printf("__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n", task->iram_addr);
    __DSP_debug_printf("__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n", task->iram_length);
    __DSP_debug_printf("__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n", task->dram_length);
    __DSP_debug_printf("__DSP_boot_task()  : Start Vector  : 0x%08X\n", task->dsp_init_vector);
}

// Not in the original asm: nothing calls it, so the linker stripped it. Its string is still in .data.
void __DSP_add_task(DSPTaskInfo *task)
{
    if (__DSP_last_task == NULL) {
        __DSP_first_task = __DSP_last_task = __DSP_curr_task = task;
        task->next = task->prev = NULL;
    } else {
        __DSP_last_task->next = task;
        task->next = NULL;
        task->prev = __DSP_last_task;
        __DSP_last_task = task;
    }
    task->state = DSP_TASK_STATE_INIT;
    __DSP_debug_printf("__DSP_add_task() : Added task    : 0x%08X\n", task);
}

void __DSP_insert_task(DSPTaskInfo *task)
{
    DSPTaskInfo *temp;

    if (__DSP_first_task == NULL) {
        __DSP_first_task = __DSP_last_task = __DSP_curr_task = task;
        task->next = task->prev = NULL;
        return;
    }

    temp = __DSP_first_task;
    while (temp) {
        if (task->priority < temp->priority) {
            task->prev = temp->prev;
            temp->prev = task;
            task->next = temp;
            if (task->prev == NULL) {
                __DSP_first_task = task;
            } else {
                task->prev->next = task;
            }
            break;
        }
        temp = temp->next;
    }

    if (temp == NULL) {
        __DSP_last_task->next = task;
        task->next = NULL;
        task->prev = __DSP_last_task;
        __DSP_last_task = task;
    }
}

void __DSP_remove_task(DSPTaskInfo *task)
{
    task->flags = DSP_TASK_FLAG_CLEARALL;
    task->state = DSP_TASK_STATE_DONE;

    if (__DSP_first_task == task) {
        if (task->next) {
            __DSP_first_task = task->next;
            task->next->prev = NULL;
        } else {
            __DSP_first_task = __DSP_last_task = __DSP_curr_task = NULL;
        }
    } else if (__DSP_last_task == task) {
        __DSP_last_task = task->prev;
        task->prev->next = NULL;
        __DSP_curr_task = __DSP_first_task;
    } else {
        __DSP_curr_task = task->next;
        task->prev->next = task->next;
        task->next->prev = task->prev;
    }
}
