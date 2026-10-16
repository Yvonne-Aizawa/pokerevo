#ifndef POKEREVO_NWC24MANAGE_H
#define POKEREVO_NWC24MANAGE_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

// Shared NWC24 statics, defined in asm/sbss_80640250.s.
extern u8 *NWC24WorkArea;          // work buffer handed to NWC24OpenLib
extern int NWC24LibState;          // 0 closed, 1 open, 2 open by tool, 3 blocked
extern u32 NWC24LibFlags;
extern int NWC24LastError;
extern int NWC24VersionRegistered;

void NWC24iRegister(void);
int NWC24OpenLib(void *work);
int NWC24CloseLib(void);
int NWC24IsMsgLibOpened(void);
int NWC24IsMsgLibOpenedByTool(void);
int NWC24BlockOpenMsgLib(int block);

#ifdef __cplusplus
}
#endif

#endif
