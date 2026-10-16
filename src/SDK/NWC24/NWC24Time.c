// PARKED (not linked): all functions match byte-for-byte, but NWC24iTimeStrippedUser is a made-up dead function used only to put the first 0x80 bytes of .bss before the mutex.
// That is not a true match. TODO(match): find the real source that produces this data order
// (likely a stripped/unreferenced function in the original TU), then remove the stand-in,
// split this TU's data out of the monolithic data/bss/sbss asm files, and link it.
#include "types.h"
#include "SDK/NWC24/NWC24Time.h"
#include "SDK/os.h"
#include "MSL_C/string.h"

// TODO: move to a shared NWC24 header once NWC24Ipc.c is decompiled
s32 NWC24iOpenResourceManager(const char *name, const char *path, s32 *fd, u32 flags);
s32 NWC24iCloseResourceManager(const char *name, s32 fd);
s32 NWC24iIoctlResourceManager(const char *name, s32 fd, s32 cmd, void *in, s32 inLen, void *out, s32 outLen);

u32 SCCheckStatus(void);
u32 SCGetCounterBias(void);

static char s_path[] = "/dev/net/kd/time";

typedef struct {
    u32 counter;
    u32 flag;
    u8 pad[0x18];
} RtcIn;

static u8 s_unused[0x80];
static OSMutex s_mutex;
static RtcIn s_in __attribute__((aligned(32)));
static u8 s_out[0x20] __attribute__((aligned(32)));
static BOOL s_initialized;

// TODO(match): the original's first 0x80 bytes of .bss precede the mutex, so something used them
// before NWC24iSetRtcCounter did; the linker stripped it. This stand-in is stripped too.
void NWC24iTimeStrippedUser(void);
void NWC24iTimeStrippedUser(void)
{
    memset(s_unused, 0, sizeof(s_unused));
}

static inline s32 CheckThread(void)
{
    if (!OSGetCurrentThread()) {
        return -1;
    }
    return 0;
}

static inline void InitOnce(void)
{
    BOOL enabled;
    if (!s_initialized) {
        enabled = OSDisableInterrupts();
        if (!s_initialized) {
            OSInitMutex(&s_mutex);
            memset(&s_in, 0, 0x20);
            memset(s_out, 0, 0x20);
            s_initialized = TRUE;
        }
        OSRestoreInterrupts(enabled);
    }
}

s32 NWC24iSetRtcCounter(u32 counter, u32 flag)
{
    s32 ret;
    s32 fd;
    s32 err;

    err = CheckThread();
    if (err < 0) {
        return err;
    }

    InitOnce();

    OSLockMutex(&s_mutex);
    ret = NWC24iOpenResourceManager("NWC24iSetRtcCounter", s_path, &fd, 0);
    if (ret >= 0) {
        s_in.counter = counter;
        s_in.flag = flag;
        ret = NWC24iIoctlResourceManager("NWC24iSetRtcCounter", fd, 0x17, &s_in, 0x20, s_out, 0x20);
        if (ret >= 0) {
            ret = *(s32 *)s_out;
        }
        {
            s32 closeRet = NWC24iCloseResourceManager("NWC24iSetRtcCounter", fd);
            if (ret >= 0) {
                ret = closeRet;
            }
        }
    }
    OSUnlockMutex(&s_mutex);
    return ret;
}

static inline s32 GetRtcCounter(s64 *counter)
{
    u32 status;
    u32 bias;
    do {
        status = SCCheckStatus();
        if (status == 2) {
            return -1;
        }
    } while (status != 0);
    bias = SCGetCounterBias();
    *counter = OSGetTime() / OS_TIMER_CLOCK - bias;
    return 0;
}

s32 NWC24iSynchronizeRtcCounter(u32 flag)
{
    s64 counter;
    s32 ret = GetRtcCounter(&counter);
    if (ret != 0) {
        return ret;
    }
    return NWC24iSetRtcCounter((u32)counter, flag != 0);
}
