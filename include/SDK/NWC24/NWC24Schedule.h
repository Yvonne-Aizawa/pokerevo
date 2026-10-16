#ifndef POKEREVO_NWC24_NWC24SCHEDULE_H
#define POKEREVO_NWC24_NWC24SCHEDULE_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

s32 NWC24SuspendScheduler(void);
s32 NWC24ResumeScheduler(void);
s32 NWC24iRequestGenerateUserId(u64 *userId, u32 *hashId);
s32 NWC24iStartupSocket(u32 *out);
s32 NWC24iCleanupSocket(u32 *out);
s32 NWC24iLockSocket(void);
s32 NWC24iUnlockSocket(void);
s32 NWC24iTrySuspendForOpenLib(void);
s32 NWC24iResumeForCloseLib(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NWC24_NWC24SCHEDULE_H
