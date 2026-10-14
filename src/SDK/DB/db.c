#include "types.h"
#include "SDK/DB/db.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSError.h"
#include "SDK/base/PPCArch.h"

#define DB_INTERFACE_ADDR 0x80000040
#define OS_EXCEPTION_CONTEXT_PHYS (*(u32 *)0xC0)

static BOOL DBVerbose;
static DBInterface *__DBInterface;

static void __DBExceptionDestination(void);

void DBInit(void)
{
    __DBInterface = (DBInterface *)DB_INTERFACE_ADDR;
    __DBInterface->ExceptionDestination = (void (*)(void))((u32)__DBExceptionDestination - 0x80000000);
    DBVerbose = TRUE;
}

BOOL DBIsDebuggerPresent(void)
{
    if (__DBInterface == NULL) {
        return FALSE;
    }
    return __DBInterface->bPresent;
}

static void __DBExceptionDestinationAux(void)
{
    OSContext *context;

    context = (OSContext *)(OS_EXCEPTION_CONTEXT_PHYS + 0x80000000);
    OSReport("DBExceptionDestination\n");
    OSDumpContext(context);
    PPCHalt();
}

static asm void __DBExceptionDestination(void)
{
    nofralloc
    mfmsr r3
    ori r3, r3, 0x30
    mtmsr r3
    b __DBExceptionDestinationAux
}

BOOL __DBIsExceptionMarked(__OSException exception)
{
    u32 mask = 1 << exception;

    return __DBInterface->exceptionMask & mask;
}

void DBPrintf(const char *msg, ...)
{
#pragma unused(msg)
}
