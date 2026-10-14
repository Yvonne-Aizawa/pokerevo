#ifndef POKEREVO_DVD_DVD_H
#define POKEREVO_DVD_DVD_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DVDDiskID
{
    char gameCode[4];
    char makerCode[2];
    u8 unk6;
    u8 unk7;
} DVDDiskID;

typedef struct DVDCommandBlock
{
    u8 unk0[0x30];
} DVDCommandBlock;

typedef void (*DVDCBCallback)(s32 result, DVDCommandBlock* block);

DVDDiskID* DVDGetCurrentDiskID(void);
void DVDInit(void);
s32 DVDGetDriveStatus(void);
BOOL DVDCheckDiskAsync(DVDCommandBlock* block, DVDCBCallback callback);
BOOL DVDReadAbsAsyncPrio(DVDCommandBlock* block, void* addr, s32 length, s32 offset, DVDCBCallback callback,
                         s32 prio);
s32 DVDGetCommandBlockStatus(const DVDCommandBlock* block);
BOOL DVDSetAutoInvalidation(BOOL autoInval);
void DVDResume(void);
void __DVDPrepareResetAsync(DVDCBCallback callback);


#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DVD_DVD_H
