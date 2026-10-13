#ifndef POKEREVO_OSARENA_H
#define POKEREVO_OSARENA_H

#ifdef __cplusplus
extern "C" {
#endif

void *OSGetMEM1ArenaHi(void);
void *OSGetMEM2ArenaHi(void);
void *OSGetArenaHi(void);
void *OSGetMEM1ArenaLo(void);
void *OSGetMEM2ArenaLo(void);
void *OSGetArenaLo(void);
void OSSetMEM1ArenaHi(void *newHi);
void OSSetMEM2ArenaHi(void *newHi);
void OSSetArenaHi(void *newHi);
void OSSetMEM1ArenaLo(void *newLo);
void OSSetMEM2ArenaLo(void *newLo);
void OSSetArenaLo(void *newLo);
void *OSAllocFromMEM1ArenaLo(u32 size, u32 align);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSARENA_H
