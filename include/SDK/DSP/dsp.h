#ifndef POKEREVO_DSP_DSP_H
#define POKEREVO_DSP_DSP_H

#include "types.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSInterrupt.h"

#ifdef __cplusplus
extern "C" {
#endif

#define DSP_TASK_FLAG_CLEARALL 0x00000000
#define DSP_TASK_FLAG_ATTACHED 0x00000001
#define DSP_TASK_FLAG_CANCEL   0x00000002

#define DSP_TASK_STATE_INIT  0
#define DSP_TASK_STATE_RUN   1
#define DSP_TASK_STATE_YIELD 2
#define DSP_TASK_STATE_DONE  3

typedef void (*DSPCallback)(void *task);

typedef struct DSPTaskInfo {
    vu32 state;                  // 0x0
    vu32 priority;               // 0x4
    vu32 flags;                  // 0x8
    void *iram_mmem_addr;        // 0xC
    u32 iram_length;             // 0x10
    u32 iram_addr;               // 0x14
    void *dram_mmem_addr;        // 0x18
    u32 dram_length;             // 0x1C
    u32 dram_addr;               // 0x20
    u16 dsp_init_vector;         // 0x24
    u16 dsp_resume_vector;       // 0x26
    DSPCallback init_cb;         // 0x28
    DSPCallback res_cb;          // 0x2C
    DSPCallback done_cb;         // 0x30
    DSPCallback req_cb;          // 0x34
    struct DSPTaskInfo *next;    // 0x38
    struct DSPTaskInfo *prev;    // 0x3C
    OSTime t_context;            // 0x40
    OSTime t_task;               // 0x48
} DSPTaskInfo;

u32 DSPCheckMailToDSP(void);
u32 DSPCheckMailFromDSP(void);
u32 DSPReadMailFromDSP(void);
void DSPSendMailToDSP(u32 mail);
void DSPInit(void);
BOOL DSPCheckInit(void);
DSPTaskInfo *DSPAddTask(DSPTaskInfo *task);
DSPTaskInfo *DSPAssertTask(DSPTaskInfo *task);

// dsp_debug.c
void __DSP_debug_printf(const char *fmt, ...);

// dsp_task.c
extern DSPTaskInfo *__DSP_curr_task;
extern DSPTaskInfo *__DSP_first_task;
extern DSPTaskInfo *__DSP_last_task;
extern DSPTaskInfo *__DSP_tmp_task;
extern DSPTaskInfo *__DSP_rude_task;
extern BOOL __DSP_rude_task_pending;

void __DSPHandler(__OSInterrupt interrupt, OSContext *context);
void __DSP_exec_task(DSPTaskInfo *curr, DSPTaskInfo *next);
void __DSP_boot_task(DSPTaskInfo *task);
void __DSP_add_task(DSPTaskInfo *task);
void __DSP_insert_task(DSPTaskInfo *task);
void __DSP_remove_task(DSPTaskInfo *task);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DSP_DSP_H
