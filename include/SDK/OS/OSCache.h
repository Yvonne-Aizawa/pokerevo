#ifndef POKEREVO_OSCACHE_H
#define POKEREVO_OSCACHE_H

#ifdef __cplusplus
extern "C" {
#endif

void DCEnable(void);
void DCInvalidateRange(void *addr, u32 nBytes);
void DCFlushRange(void *addr, u32 nBytes);
void DCStoreRange(void *addr, u32 nBytes);
void DCFlushRangeNoSync(void *addr, u32 nBytes);
void DCStoreRangeNoSync(void *addr, u32 nBytes);
void DCZeroRange(void *addr, u32 nBytes);
void ICInvalidateRange(void *addr, u32 nBytes);
void ICFlashInvalidate(void);
void ICEnable(void);
void LCEnable(void);
void LCDisable(void);
void LCStoreBlocks(void *destAddr, void *srcAddr, u32 numBlocks);
u32 LCStoreData(void *destAddr, void *srcAddr, u32 nBytes);
void LCQueueWait(u32 len);
void L2Enable(void);
void L2Disable(void);
void L2GlobalInvalidate(void);
void __OSCacheInit(void);
#define LC_BASE (0xE000 << 16)
#define LCGetBase() ((void*)LC_BASE)


#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSCACHE_H
