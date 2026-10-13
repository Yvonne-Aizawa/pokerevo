#include "types.h"
#include "MSL_C/string.h"
#include "SDK/OS/OSCache.h"
#include "SDK/OS/OSSync.h"

#define HID0 1008

void DCFlushRangeNoSync(void *startAddr, u32 nBytes);
void ICInvalidateRange(void *startAddr, u32 nBytes);

// Installed at 0x80000C00 (the system call exception vector): flushes the
// data cache via HID0 and returns from the exception.
asm void SystemCallVector(void)
{
    // clang-format off
    nofralloc

    mfspr r9, HID0
    ori r10, r9, 0x8
    mtspr HID0, r10
    isync
    sync
    mtspr HID0, r9
    rfi
    // clang-format on
}

asm void __OSSystemCallVectorEnd(void)
{
    // clang-format off
    nofralloc

    nop
    // clang-format on
}

void __OSInitSystemCall(void)
{
    memcpy((void *)0x80000C00, SystemCallVector,
           (u32)__OSSystemCallVectorEnd - (u32)SystemCallVector);
    DCFlushRangeNoSync((void *)0x80000C00, 0x100);
    __sync();
    ICInvalidateRange((void *)0x80000C00, 0x100);
}
