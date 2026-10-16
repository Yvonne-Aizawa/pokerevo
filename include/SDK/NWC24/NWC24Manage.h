#ifndef POKEREVO_NWC24MANAGE_H
#define POKEREVO_NWC24MANAGE_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

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
