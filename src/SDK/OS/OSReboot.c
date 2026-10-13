#include "types.h"
#include "SDK/os.h"
#include "SDK/OS/OSArena.h"
#include "SDK/OS/OSReboot.h"

extern void *SaveStart; // 0x8063FAD0 (.sbss)
extern void *SaveEnd;   // 0x8063FAD4 (.sbss)

void __OSBootDol(u32 doljump, u32 arg1, u32 *argp);

void __OSReboot(u32 resetCode, u32 bootDol)
{
    u32 unused;

    OSDisableInterrupts();
    OSSetArenaLo((void *)0x81280000);
    OSSetArenaHi((void *)0x812F0000);
    unused = 0;
    __OSBootDol(bootDol, resetCode | 0x80000000, &unused);
}

void OSGetSaveRegion(void **start, void **end)
{
    *start = SaveStart;
    *end = SaveEnd;
}
