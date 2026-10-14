#ifndef POKEREVO_OSERROR_H
#define POKEREVO_OSERROR_H

#include "SDK/OS/OSContext.h"

#ifdef __cplusplus
extern "C" {
#endif

#define __OS_EXCEPTION_DSI                2
#define __OS_EXCEPTION_ISI                3
#define __OS_EXCEPTION_EXTERNAL_INTERRUPT 4
#define __OS_EXCEPTION_ALIGNMENT          5
#define __OS_EXCEPTION_PROGRAM            6
#define __OS_EXCEPTION_FLOATING_POINT     7
#define __OS_EXCEPTION_DECREMENTER        8

#define OS_ERROR_PROTECTION 15
#define OS_ERROR_FPE        16
#define OS_ERROR_MAX        17

typedef u8 __OSException;
typedef void (*__OSExceptionHandler)(__OSException exception, OSContext *context);

#define OS_ERROR_MACHINE_CHECK 1

typedef u16 OSError;
typedef void (*OSErrorHandler)(OSError error, OSContext *context, ...);

extern OSErrorHandler __OSErrorTable[OS_ERROR_MAX];
extern u32 __OSFpscrEnableBits;

OSErrorHandler OSSetErrorHandler(OSError error, OSErrorHandler handler);
void OSReport(const char *msg, ...);
void OSPanic(const char *file, int line, const char *msg, ...);
void __OSUnhandledException(__OSException exception, OSContext *context, u32 dsisr, u32 dar);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSERROR_H
