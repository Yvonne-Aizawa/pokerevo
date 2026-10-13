#include "types.h"
#include "consts.h"
#include "SDK/OS/OSArena.h"

extern void *__OSArenaLo;     // MEM1 arena lo, initialized to -1
extern void *__OSMEM2ArenaLo; // MEM2 arena lo, initialized to -1
extern void *__OSArenaHi;     // MEM1 arena hi
extern void *__OSMEM2ArenaHi; // MEM2 arena hi

void *OSGetMEM1ArenaHi(void)
{
    return __OSArenaHi;
}

void *OSGetMEM2ArenaHi(void)
{
    return __OSMEM2ArenaHi;
}

void *OSGetArenaHi(void)
{
    return __OSArenaHi;
}

void *OSGetMEM1ArenaLo(void)
{
    return __OSArenaLo;
}

void *OSGetMEM2ArenaLo(void)
{
    return __OSMEM2ArenaLo;
}

void *OSGetArenaLo(void)
{
    return __OSArenaLo;
}

void OSSetMEM1ArenaHi(void *newHi)
{
    __OSArenaHi = newHi;
}

void OSSetMEM2ArenaHi(void *newHi)
{
    __OSMEM2ArenaHi = newHi;
}

void OSSetArenaHi(void *newHi)
{
    __OSArenaHi = newHi;
}

void OSSetMEM1ArenaLo(void *newLo)
{
    __OSArenaLo = newLo;
}

void OSSetMEM2ArenaLo(void *newLo)
{
    __OSMEM2ArenaLo = newLo;
}

void OSSetArenaLo(void *newLo)
{
    __OSArenaLo = newLo;
}

void *OSAllocFromMEM1ArenaLo(u32 size, u32 align)
{
    void *ptr;
    u8 *arenaLo;

    ptr = __OSArenaLo;
    arenaLo = ptr = (void *)OSi_ROUND(ptr, align);
    arenaLo += size;
    arenaLo = (u8 *)OSi_ROUND(arenaLo, align);
    __OSArenaLo = arenaLo;
    return ptr;
}
