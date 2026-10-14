#ifndef POKEREVO_OSERROR_H
#define POKEREVO_OSERROR_H

#include "SDK/OS/OSContext.h"

#ifdef __cplusplus
extern "C" {
#endif

// Owned by OSError.c, which is still asm.

#define __OS_EXCEPTION_EXTERNAL_INTERRUPT 4
#define __OS_EXCEPTION_FLOATING_POINT     7
#define __OS_EXCEPTION_DECREMENTER        8

#define OS_ERROR_FPE 16

typedef u8 __OSException;
typedef void (*__OSExceptionHandler)(__OSException exception, OSContext *context);

#define OS_ERROR_MACHINE_CHECK 1

typedef u16 OSError;
typedef void (*OSErrorHandler)(OSError error, OSContext *context, ...);

extern void *__OSErrorTable[];
extern u32 __OSFpscrEnableBits;

OSErrorHandler OSSetErrorHandler(OSError error, OSErrorHandler handler);
void OSReport(const char *msg, ...);
void OSPanic(const char *file, int line, const char *msg, ...);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSERROR_H
