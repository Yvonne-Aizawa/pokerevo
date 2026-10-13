#include "types.h"
#include "SDK/OS/OSIpc.h"

extern void *__OSIpcBufferHi; // 0x8063FAF8 (.sbss)
extern void *__OSIpcBufferLo; // 0x8063DAA8 (.sdata, initialized to -1)

void *__OSGetIPCBufferHi(void)
{
    return __OSIpcBufferHi;
}

void *__OSGetIPCBufferLo(void)
{
    return __OSIpcBufferLo;
}

void __OSInitIPCBuffer(void)
{
    __OSIpcBufferLo = *(void **)0x80003130;
    __OSIpcBufferHi = *(void **)0x80003134;
}
