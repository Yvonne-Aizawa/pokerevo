#include "types.h"
#include "SDK/OS/OSNet.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OS.h"

s32 NWC24iPrepareShutdown(void);
s32 NWC24SuspendScheduler(void);
s32 NWC24iSynchronizeRtcCounter(void);

void __OSInitNet(void)
{
    OSIOSRev rev;
    s32 ret;

    __OSGetIOSRev(&rev);
    // IOS without WiiConnect24 support: nothing to shut down
    if (rev.idLo <= 4 || rev.idLo == 9) {
        return;
    }

    ret = NWC24iPrepareShutdown();
    if (ret != 0) {
        if (ret < 0) {
            OSReport("Failed to register network shutdown function. %d\n", ret);
        }
        ret = NWC24SuspendScheduler();
        if (ret < 0) {
            OSReport("Failed to suspend the WiiConnect24 scheduler. %d\n", ret);
        }
    }
    ret = NWC24iSynchronizeRtcCounter();
    if (ret != 0) {
        OSReport("Failed to synchronize time with network resource managers. %d\n", ret);
    }
}
