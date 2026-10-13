#ifndef POKEREVO_OSREBOOT_H
#define POKEREVO_OSREBOOT_H

#ifdef __cplusplus
extern "C" {
#endif

void __OSReboot(u32 resetCode, u32 bootDol);
void OSGetSaveRegion(void **start, void **end);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSREBOOT_H
