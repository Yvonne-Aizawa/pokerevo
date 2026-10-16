#include "types.h"
#include "SDK/NET/net.h"

s32 NETGetWirelessMacAddress(u8 *addr)
{
    return NCDiGetWirelessMacAddress(addr);
}
