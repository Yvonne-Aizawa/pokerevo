#ifndef POKEREVO_DVD_BROADWAY_H
#define POKEREVO_DVD_BROADWAY_H

#ifdef __cplusplus
extern "C" {
#endif

// Owned by dvd_broadway.c, which is still asm.

typedef void (*DVDLowCallback)(u32 intType);

BOOL DVDLowInit(void);
BOOL DVDLowReadDiskID(void *diskID, DVDLowCallback callback);
BOOL DVDLowOpenPartition(u32 partitionOffset, const void *ticket, u32 numCertBytes, const void *certificates,
                         void *tmd, DVDLowCallback callback);
BOOL DVDLowClosePartition(DVDLowCallback callback);
BOOL DVDLowUnencryptedRead(void *addr, u32 length, u32 offset, DVDLowCallback callback);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DVD_BROADWAY_H
