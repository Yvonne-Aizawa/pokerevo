#ifndef POKEREVO_OSEXEC_H
#define POKEREVO_OSEXEC_H

#include "SDK/OS/OS.h"

#ifdef __cplusplus
extern "C" {
#endif

extern BOOL __OSInReboot;

void __OSGetExecParams(OSExecParams *params);
void __OSReLaunchFirmware(void);
void __OSLaunchMenu(void);
void func_8026C328(void);
void __OSBootDolSimple(u32 doloffset, u32 restartCode, void *regionStart, void *regionEnd, BOOL argsUseDefault,
                       s32 argc, char **argv);
void __OSBootDol(u32 doloffset, u32 restartCode, const char **argv);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSEXEC_H
