#ifndef POKEREVO_OSRESET_H
#define POKEREVO_OSRESET_H

#ifdef __cplusplus
extern "C" {
#endif

// Owned by OSReset.c, which is still asm.

typedef BOOL (*OSShutdownFunction)(BOOL final, u32 event);

typedef struct OSShutdownFunctionInfo
{
    OSShutdownFunction func;              // 0x0
    u32 priority;                         // 0x4
    struct OSShutdownFunctionInfo *next;  // 0x8
    struct OSShutdownFunctionInfo *prev;  // 0xC
} OSShutdownFunctionInfo;

void OSRegisterShutdownFunction(OSShutdownFunctionInfo *info);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSRESET_H
