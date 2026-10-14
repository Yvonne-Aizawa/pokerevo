#include "types.h"
#include "SDK/PAD/Pad.h"
#include "SDK/OS/OSInterrupt.h"

#define OS_PAD_FLAGS (*(u8 *)0x800030E3)

#define PAD_FLAG_NO_RECALIBRATE 0x40

BOOL __PADDisableRecalibration(BOOL disable)
{
    BOOL enabled;
    BOOL prev;

    enabled = OSDisableInterrupts();
    prev = (OS_PAD_FLAGS & PAD_FLAG_NO_RECALIBRATE) ? TRUE : FALSE;
    OS_PAD_FLAGS &= ~PAD_FLAG_NO_RECALIBRATE;
    if (disable) {
        OS_PAD_FLAGS |= PAD_FLAG_NO_RECALIBRATE;
    }
    OSRestoreInterrupts(enabled);
    return prev;
}
