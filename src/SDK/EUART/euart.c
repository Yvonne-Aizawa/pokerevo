// NOT LINKED YET: obj_files.mk still builds asm/SDK/EUART/euart.s. Check with tools/decomp/tu_diff.py.
// 2 of 3 functions match. Left: WriteUARTN (138 against 139 instructions). The original loads the EXI
// frequency once from an 8-byte .sdata2 object (lbl_80642668, {4, 0}) into r28 and passes it to both
// EXISelect calls (mr r5, r28); here MWCC folds the constant to li r5, 4, which also shifts the other saved
// registers. Every const form tried folds: static/extern/non-static const scalars, const arrays, structs,
// unions, a const u64, an enum, defining it after its uses, a local array. Only a read through a const
// pointer avoids the folding, and that reloads at each use (2 differences) and isn't natural C.
// Data splits (sbss lbl_80640148..lbl_80640158, sdata2 lbl_80642668) not done.

#include "types.h"
#include "SDK/EUART/euart.h"
#include "SDK/EXI/EXIBios.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSInterrupt.h"

#define OS_CONSOLE_DEVELOPMENT 0x10000000

#define EXI_READ  0
#define EXI_WRITE 1

#define EUART_ENABLED_MAGIC 0xA5FF005A

static const u32 EUARTFreq = 4;  // EXI_FREQ_8M

static u32 Enabled;
static BOOL __EUARTSendStop;
static s32 __EUARTLastErrorCode;
static BOOL __EUARTInitialized;

static BOOL EUARTInit(void)
{
    BOOL enabled;
    u8 val;

    if (__EUARTInitialized) {
        return TRUE;
    }

    if (!(OSGetConsoleType() & OS_CONSOLE_DEVELOPMENT)) {
        __EUARTLastErrorCode = 2;
        return FALSE;
    }

    enabled = OSDisableInterrupts();

    val = 0xF2;
    if (!EXIWriteReg(0, 1, 0xB0000000, &val, 1)) {
        __EUARTLastErrorCode = 5;
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    val = 0xF3;
    if (!EXIWriteReg(0, 1, 0xB0000000, &val, 1)) {
        __EUARTLastErrorCode = 5;
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    OSRestoreInterrupts(enabled);
    __EUARTInitialized = TRUE;
    __EUARTLastErrorCode = 0;
    __EUARTSendStop = FALSE;
    return TRUE;
}

UARTError InitializeUART(u32 baudRate)
{
#pragma unused(baudRate)
    if (!(OSGetConsoleType() & OS_CONSOLE_DEVELOPMENT)) {
        Enabled = 0;
        return kUARTConfigurationError;
    }

    Enabled = EUART_ENABLED_MAGIC;
    return kUARTNoError;
}

static s32 QueueLength(void)
{
    u32 cmd;
    u32 data;

    if (!EXISelect(0, 1, EUARTFreq)) {
        return -1;
    }

    cmd = 0x30000100;
    EXIImm(0, &cmd, 4, EXI_WRITE, NULL);
    EXISync(0);
    EXIImm(0, &data, 4, EXI_READ, NULL);
    EXISync(0);
    EXIDeselect(0);

    return 32 - (s32)((data >> 24) & 0x3F);
}

UARTError WriteUARTN(const void *buf, u32 len)
{
    u32 cmd;
    s32 qLen;
    u32 data;
    char *ptr;
    UARTError error;

    if (Enabled != EUART_ENABLED_MAGIC) {
        return kUARTConfigurationError;
    }

    if (!__EUARTInitialized && !EUARTInit()) {
        return kUARTConfigurationError;
    }

    if (!__EUARTInitialized) {
        __EUARTLastErrorCode = 1;
        return kUARTConfigurationError;
    }

    if (!EXILock(0, 1, NULL)) {
        return kUARTNoError;
    }

    for (ptr = (char *)buf; ptr - (char *)buf < len; ptr++) {
        if (*ptr == '\n') {
            *ptr = '\r';
        }
    }

    error = kUARTNoError;
    cmd = 0xB0000100;
    while (len != 0) {
        qLen = QueueLength();
        if (qLen < 0) {
            error = kUARTBufferOverflow;
            break;
        }

        if (qLen == 32) {
            if (!EXISelect(0, 1, EUARTFreq)) {
                error = kUARTBufferOverflow;
                break;
            }

            EXIImm(0, &cmd, 4, EXI_WRITE, NULL);
            EXISync(0);

            while (qLen > 0 && len != 0) {
                data = *(u8 *)buf << 24;
                EXIImm(0, &data, 4, EXI_WRITE, NULL);
                EXISync(0);
                buf = (u8 *)buf + 1;
                qLen--;
                len--;
            }
            EXIDeselect(0);
        }
    }

    EXIUnlock(0);
    return error;
}
