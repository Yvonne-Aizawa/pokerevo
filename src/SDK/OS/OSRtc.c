// NOT LINKED YET: obj_files.mk still builds asm/SDK/OS/OSRtc.s. 8 of 9 functions match (tu_diff.py);
// UnlockSram is the right size but has r3/r4 swapped in its GBS check (Scb base in r3 and the gbs value
// in r4, the original the other way round). Tried: the statement before it, declaration orders,
// block-scoped and function-scoped sramEx, an inline helper, u16/u32 gbs locals, other forms of the
// test. Scb's .bss split (0x54 at 0x80514780, the end of bss_80503D40.s) is still to do.

#include "types.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSCache.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSRtc.h"
#include "SDK/EXI/EXIBios.h"

#define RTC_CHAN      0
#define RTC_DEV       1
#define RTC_FREQ      3
#define RTC_SRAM_SIZE 64

#define RTC_CMD_READ  0x20000000
#define RTC_CMD_WRITE 0xA0000000
#define RTC_SRAM_ADDR 0x00000100

#define EXI_READ  0
#define EXI_WRITE 1

typedef struct SramControl
{
    u8 sram[RTC_SRAM_SIZE];  // 0x0
    u32 offset;              // 0x40
    BOOL enabled;            // 0x44
    BOOL locked;             // 0x48
    BOOL sync;               // 0x4C
    void (*callback)(void);  // 0x50
} SramControl;

static SramControl Scb;

static void WriteSramCallback(s32 chan, OSContext *context);

static BOOL WriteSram(void *buffer, u32 offset, u32 size)
{
    BOOL err;
    u32 cmd;

    if (!EXILock(RTC_CHAN, RTC_DEV, WriteSramCallback)) {
        return FALSE;
    }
    if (!EXISelect(RTC_CHAN, RTC_DEV, RTC_FREQ)) {
        EXIUnlock(RTC_CHAN);
        return FALSE;
    }

    offset <<= 6;
    cmd = RTC_CMD_WRITE | (RTC_SRAM_ADDR + offset);
    err = FALSE;
    err |= !EXIImm(RTC_CHAN, &cmd, 4, EXI_WRITE, NULL);
    err |= !EXISync(RTC_CHAN);
    err |= !EXIImmEx(RTC_CHAN, buffer, (s32)size, EXI_WRITE);
    err |= !EXIDeselect(RTC_CHAN);
    EXIUnlock(RTC_CHAN);

    return !err;
}

static void WriteSramCallback(s32 chan, OSContext *context)
{
#pragma unused(chan, context)
    Scb.sync = WriteSram(Scb.sram + Scb.offset, Scb.offset, RTC_SRAM_SIZE - Scb.offset);
    if (Scb.sync) {
        Scb.offset = RTC_SRAM_SIZE;
    }
}

static BOOL ReadSram(void *buffer)
{
    BOOL err;
    u32 cmd;

    DCInvalidateRange(buffer, RTC_SRAM_SIZE);

    if (!EXILock(RTC_CHAN, RTC_DEV, NULL)) {
        return FALSE;
    }
    if (!EXISelect(RTC_CHAN, RTC_DEV, RTC_FREQ)) {
        EXIUnlock(RTC_CHAN);
        return FALSE;
    }

    cmd = RTC_CMD_READ | RTC_SRAM_ADDR;
    err = FALSE;
    err |= !EXIImm(RTC_CHAN, &cmd, 4, EXI_WRITE, NULL);
    err |= !EXISync(RTC_CHAN);
    err |= !EXIDma(RTC_CHAN, buffer, RTC_SRAM_SIZE, EXI_READ, NULL);
    err |= !EXISync(RTC_CHAN);
    err |= !EXIDeselect(RTC_CHAN);
    EXIUnlock(RTC_CHAN);

    return !err;
}

static void *LockSram(u32 offset)
{
    BOOL enabled;

    enabled = OSDisableInterrupts();
    if (Scb.locked != FALSE) {
        OSRestoreInterrupts(enabled);
        return NULL;
    }

    Scb.enabled = enabled;
    Scb.locked = TRUE;
    return Scb.sram + offset;
}

static BOOL UnlockSram(BOOL commit, u32 offset);

void __OSInitSram(void)
{
    Scb.locked = Scb.enabled = FALSE;
    Scb.sync = ReadSram(Scb.sram);
    Scb.offset = RTC_SRAM_SIZE;

    OSSetGbsMode(OSGetGbsMode());
}

static BOOL UnlockSram(BOOL commit, u32 offset)
{
    u16 *p;

    if (commit) {
        if (offset == 0) {
            OSSram *sram = (OSSram *)Scb.sram;

            if (2u < (sram->flags & 3)) {
                sram->flags &= ~3;
            }

            sram->checkSum = sram->checkSumInv = 0;
            for (p = (u16 *)&sram->counterBias; (u8 *)p < Scb.sram + sizeof(OSSram); p++) {
                sram->checkSum += *p;
                sram->checkSumInv += ~*p;
            }
        }

        if (offset < Scb.offset) {
            Scb.offset = offset;
        }

        if (Scb.offset <= sizeof(OSSram)) {
            OSSramEx *sramEx = (OSSramEx *)(Scb.sram + sizeof(OSSram));

            if ((sramEx->gbs & 0x7C00u) == 0x5000 || (sramEx->gbs & 0xC0u) == 0xC0) {
                sramEx->gbs = 0;
            }
        }

        Scb.sync = WriteSram(Scb.sram + Scb.offset, Scb.offset, RTC_SRAM_SIZE - Scb.offset);
        if (Scb.sync) {
            Scb.offset = RTC_SRAM_SIZE;
        }
    }

    Scb.locked = FALSE;
    OSRestoreInterrupts(Scb.enabled);
    return Scb.sync;
}

BOOL __OSSyncSram(void)
{
    return Scb.sync;
}

BOOL __OSReadROM(void *buffer, s32 length, s32 offset)
{
    BOOL err;
    u32 cmd;

    DCInvalidateRange(buffer, (u32)length);

    if (!EXILock(RTC_CHAN, RTC_DEV, NULL)) {
        return FALSE;
    }
    if (!EXISelect(RTC_CHAN, RTC_DEV, RTC_FREQ)) {
        EXIUnlock(RTC_CHAN);
        return FALSE;
    }

    cmd = (u32)(offset << 6);
    err = FALSE;
    err |= !EXIImm(RTC_CHAN, &cmd, 4, EXI_WRITE, NULL);
    err |= !EXISync(RTC_CHAN);
    err |= !EXIDma(RTC_CHAN, buffer, length, EXI_READ, NULL);
    err |= !EXISync(RTC_CHAN);
    err |= !EXIDeselect(RTC_CHAN);
    EXIUnlock(RTC_CHAN);

    return !err;
}

u16 OSGetWirelessID(s32 chan)
{
    OSSramEx *sram;
    u16 id;

    sram = __OSLockSramEx();
    id = sram->wirelessPadID[chan];
    __OSUnlockSramEx(FALSE);
    return id;
}

void OSSetWirelessID(s32 chan, u16 id)
{
    OSSramEx *sram;

    sram = __OSLockSramEx();
    if (sram->wirelessPadID[chan] != id) {
        sram->wirelessPadID[chan] = id;
        __OSUnlockSramEx(TRUE);
        return;
    }
    __OSUnlockSramEx(FALSE);
}

BOOL __OSGetRTCFlags(u32 *flags)
{
    BOOL err;
    u32 cmd;

    if (!EXILock(RTC_CHAN, RTC_DEV, NULL)) {
        return FALSE;
    }
    if (!EXISelect(RTC_CHAN, RTC_DEV, RTC_FREQ)) {
        EXIUnlock(RTC_CHAN);
        return FALSE;
    }

    cmd = 0x21000800;
    err = FALSE;
    err |= !EXIImm(RTC_CHAN, &cmd, 4, EXI_WRITE, NULL);
    err |= !EXISync(RTC_CHAN);
    err |= !EXIImm(RTC_CHAN, &cmd, 4, EXI_READ, NULL);
    err |= !EXISync(RTC_CHAN);
    err |= !EXIDeselect(RTC_CHAN);
    EXIUnlock(RTC_CHAN);

    *flags = cmd;
    return !err;
}

BOOL __OSClearRTCFlags(void)
{
    BOOL err;
    u32 cmd;
    u32 data = 0;

    if (!EXILock(RTC_CHAN, RTC_DEV, NULL)) {
        return FALSE;
    }
    if (!EXISelect(RTC_CHAN, RTC_DEV, RTC_FREQ)) {
        EXIUnlock(RTC_CHAN);
        return FALSE;
    }

    cmd = 0xA1000800;
    err = FALSE;
    err |= !EXIImm(RTC_CHAN, &cmd, 4, EXI_WRITE, NULL);
    err |= !EXISync(RTC_CHAN);
    err |= !EXIImm(RTC_CHAN, &data, 4, EXI_WRITE, NULL);
    err |= !EXISync(RTC_CHAN);
    err |= !EXIDeselect(RTC_CHAN);
    EXIUnlock(RTC_CHAN);

    return !err;
}

// Nothing outside this file calls these, so the linker strips them.

OSSram *__OSLockSram(void)
{
    return LockSram(0);
}

OSSramEx *__OSLockSramEx(void)
{
    return LockSram(sizeof(OSSram));
}

BOOL __OSUnlockSram(BOOL commit)
{
    return UnlockSram(commit, 0);
}

BOOL __OSUnlockSramEx(BOOL commit)
{
    return UnlockSram(commit, sizeof(OSSram));
}

u16 OSGetGbsMode(void)
{
    OSSramEx *sram;
    u16 gbs;

    sram = __OSLockSramEx();
    gbs = sram->gbs;
    __OSUnlockSramEx(FALSE);
    return gbs;
}

void OSSetGbsMode(u16 gbs)
{
    OSSramEx *sram;

    if ((gbs & 0x7C00u) == 0x5000 || (gbs & 0xC0u) == 0xC0) {
        gbs = 0;
    }

    sram = __OSLockSramEx();
    if (gbs == sram->gbs) {
        __OSUnlockSramEx(FALSE);
        return;
    }

    sram->gbs = gbs;
    __OSUnlockSramEx(TRUE);
}
