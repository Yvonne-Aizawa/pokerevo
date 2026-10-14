#include "types.h"
#include "SDK/AI/ai.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSTime.h"

#define __DSPRegs ((volatile u16 *)0xCC005000)
#define __AIRegs  ((volatile u32 *)0xCD006C00)

#define AI_CONTROL 0
#define AI_VOLUME  1
#define AI_SCNT    2
#define AI_IT      3

#define AI_CONTROL_PSTAT    0x01
#define AI_CONTROL_AFR      0x02
#define AI_CONTROL_AIINTMSK 0x04
#define AI_CONTROL_AIINT    0x08
#define AI_CONTROL_AIINTVLD 0x10
#define AI_CONTROL_SCRESET  0x20
#define AI_CONTROL_DSP32    0x40

const char *__AIVersion = "<< RVL_SDK - AI \trelease build: Nov 30 2006 03:26:11 (0x4199_60831) >>";

static AIDCallback __AID_Callback;
static u8 *__CallbackStack;
static u8 *__OldStack;
static OSTime bound_32KHz;
static OSTime bound_48KHz;
static OSTime min_wait;
static OSTime max_wait;
static OSTime buffer;
static volatile BOOL __AID_Active;
static BOOL __AI_init_flag;

static void __AIDHandler(__OSInterrupt interrupt, OSContext *context);
static void __AICallbackStackSwitch(register AIDCallback cb);
static void __AI_SRC_INIT(void);

AIDCallback AIRegisterDMACallback(AIDCallback callback)
{
    AIDCallback old;
    BOOL enabled;

    old = __AID_Callback;
    enabled = OSDisableInterrupts();
    __AID_Callback = callback;
    OSRestoreInterrupts(enabled);
    return old;
}

void AIInitDMA(u32 startAddr, u32 length)
{
    BOOL enabled;

    enabled = OSDisableInterrupts();
    __DSPRegs[24] = (u16)((__DSPRegs[24] & ~0x1FFF) | (startAddr >> 16));
    __DSPRegs[25] = (u16)((__DSPRegs[25] & ~0xFFE0) | (startAddr & 0xFFFF));
    __DSPRegs[27] = (u16)((__DSPRegs[27] & ~0x7FFF) | ((length >> 5) & 0xFFFF));
    OSRestoreInterrupts(enabled);
}

void AIStartDMA(void)
{
    __DSPRegs[27] |= 0x8000;
}

u32 AIGetDMABytesLeft(void)
{
    return (u32)(__DSPRegs[29] & 0x7FFF) << 5;
}

void AIInit(u8 *stack)
{
    BOOL enabled;
    u32 ticks;

    if (__AI_init_flag == TRUE) {
        return;
    }

    OSRegisterVersion(__AIVersion);

    // OSNanosecondsToTicks with the clock read once: the macro rereads it after each store.
    ticks = OS_TIMER_CLOCK / 125000;
    bound_32KHz = 31524 * ticks / 8000;
    bound_48KHz = 42024 * ticks / 8000;
    min_wait = 42000 * ticks / 8000;
    max_wait = 63000 * ticks / 8000;
    buffer = 3000 * ticks / 8000;

    __AIRegs[AI_CONTROL] &= ~(AI_CONTROL_AIINTVLD | AI_CONTROL_AIINTMSK | AI_CONTROL_PSTAT);
    __AIRegs[AI_VOLUME] = 0;
    __AIRegs[AI_IT] = 0;
    __AIRegs[AI_CONTROL] = (__AIRegs[AI_CONTROL] & ~AI_CONTROL_SCRESET) | AI_CONTROL_SCRESET;

    if ((((__AIRegs[AI_CONTROL] & AI_CONTROL_DSP32) >> 6) ^ 1) != 0) {
        __AIRegs[AI_CONTROL] &= ~AI_CONTROL_DSP32;
        enabled = OSDisableInterrupts();
        __AI_SRC_INIT();
        __AIRegs[AI_CONTROL] |= AI_CONTROL_DSP32;
        OSRestoreInterrupts(enabled);
    }

    __AID_Callback = NULL;
    __CallbackStack = stack;
    __OSSetInterruptHandler(__OS_INTERRUPT_DSP_AI, __AIDHandler);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_DSP_AI);
    __AI_init_flag = TRUE;
}

static void __AIDHandler(__OSInterrupt interrupt, OSContext *context)
{
#pragma unused(interrupt)
    OSContext exceptionContext;
    u16 tmp;

    tmp = __DSPRegs[5];
    tmp = (u16)((tmp & ~0xA0) | 8);
    __DSPRegs[5] = tmp;

    OSClearContext(&exceptionContext);
    OSSetCurrentContext(&exceptionContext);

    if (__AID_Callback && !__AID_Active) {
        __AID_Active = TRUE;
        if (__CallbackStack) {
            __AICallbackStackSwitch(__AID_Callback);
        } else {
            __AID_Callback();
        }
        __AID_Active = FALSE;
    }

    OSClearContext(&exceptionContext);
    OSSetCurrentContext(context);
}

static asm void __AICallbackStackSwitch(register AIDCallback cb)
{
#pragma unused(cb)
    fralloc
    mr r31, r3
    lis r5, __OldStack@ha
    addi r5, r5, __OldStack@l
    stw r1, 0(r5)
    lis r5, __CallbackStack@ha
    addi r5, r5, __CallbackStack@l
    lwz r1, 0(r5)
    subi r1, r1, 8
    mtlr r31
    blrl
    lis r5, __OldStack@ha
    addi r5, r5, __OldStack@l
    lwz r1, 0(r5)
    frfree
    blr
}

static void __AI_SRC_INIT(void)
{
    OSTime rising_32khz = 0;
    OSTime rising_48khz = 0;
    u32 done = 0;
    OSTime diff = 0;
    OSTime temp = 0;
    u32 temp0 = 0;
    u32 temp1 = 0;

    while (!done) {
        __AIRegs[AI_CONTROL] = (__AIRegs[AI_CONTROL] & ~AI_CONTROL_SCRESET) | AI_CONTROL_SCRESET;
        __AIRegs[AI_CONTROL] &= ~AI_CONTROL_AFR;
        __AIRegs[AI_CONTROL] = (__AIRegs[AI_CONTROL] & ~AI_CONTROL_PSTAT) | AI_CONTROL_PSTAT;

        temp0 = __AIRegs[AI_SCNT] & 0x7FFFFFFF;
        while (temp0 == (__AIRegs[AI_SCNT] & 0x7FFFFFFF)) {
        }
        rising_32khz = OSGetTime();

        __AIRegs[AI_CONTROL] = (__AIRegs[AI_CONTROL] & ~AI_CONTROL_AFR) | AI_CONTROL_AFR;
        __AIRegs[AI_CONTROL] = (__AIRegs[AI_CONTROL] & ~AI_CONTROL_PSTAT) | AI_CONTROL_PSTAT;

        temp1 = __AIRegs[AI_SCNT] & 0x7FFFFFFF;
        while (temp1 == (__AIRegs[AI_SCNT] & 0x7FFFFFFF)) {
        }
        rising_48khz = OSGetTime();

        diff = rising_48khz - rising_32khz;
        __AIRegs[AI_CONTROL] &= ~AI_CONTROL_AFR;
        __AIRegs[AI_CONTROL] &= ~AI_CONTROL_PSTAT;

        if (diff < (bound_32KHz - buffer)) {
            temp = min_wait;
            done = 1;
        } else if (diff >= (bound_32KHz + buffer) && diff < (bound_48KHz - buffer)) {
            temp = max_wait;
            done = 1;
        } else {
            done = 0;
        }
    }

    while ((rising_48khz + temp) > OSGetTime()) {
    }
}
