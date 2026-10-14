#ifndef POKEREVO_OSRESET_H
#define POKEREVO_OSRESET_H

#ifdef __cplusplus
extern "C" {
#endif

typedef BOOL (*OSShutdownFunction)(BOOL final, u32 event);

typedef struct OSShutdownFunctionInfo
{
    OSShutdownFunction func;              // 0x0
    u32 priority;                         // 0x4
    struct OSShutdownFunctionInfo *next;  // 0x8
    struct OSShutdownFunctionInfo *prev;  // 0xC
} OSShutdownFunctionInfo;

void OSRegisterShutdownFunction(OSShutdownFunctionInfo *info);
BOOL __OSCallShutdownFunctions(BOOL final, u32 event);
void __OSShutdownDevices(u32 event);
void OSRebootSystem(void);
void OSShutdownSystem(void);
void __OSRebootForNANDAPP(u32 resetCode);
void OSRestart(u32 resetCode);
void OSReturnToMenu(void);
void __OSReturnToMenuForError(void);
u32 OSGetResetCode(void);
void OSResetSystem(int reset, u32 resetCode, BOOL forceMenu);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSRESET_H
