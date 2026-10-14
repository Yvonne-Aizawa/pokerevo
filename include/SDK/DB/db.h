#ifndef POKEREVO_DB_DB_H
#define POKEREVO_DB_DB_H

#include "types.h"
#include "SDK/OS/OSError.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DBInterface {
    u32 bPresent;                       // 0x0
    u32 exceptionMask;                  // 0x4
    void (*ExceptionDestination)(void); // 0x8
    void *exceptionReturn;              // 0xC
} DBInterface;

void DBInit(void);
BOOL DBIsDebuggerPresent(void);
BOOL __DBIsExceptionMarked(__OSException exception);
void DBPrintf(const char *msg, ...);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DB_DB_H
