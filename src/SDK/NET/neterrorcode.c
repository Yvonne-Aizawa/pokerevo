#include "types.h"
#include "SDK/OS/OSError.h"
#include "SDK/NET/net.h"

s32 NETGetConnectionType(void)
{
    u32 a, b, c;
    s32 type = 99;

    if (NCDiGetEnabledConfigList(&a, &b, &c) >= 0) {
        type = NETiGetConnectionTypeFromConfigList(a, b, c);
    }
    return type;
}

#pragma auto_inline off
static inline s32 LowestBit(u32 x)
{
    s32 i;
    u32 mask;

    for (i = 0, mask = 1; i < 32; i++, mask <<= 1) {
        if (x & mask) {
            return i;
        }
    }
    return -1;
}

s32 NETiGetConnectionTypeFromConfigList(u32 a, u32 b, u32 c)
{
    s32 type = 99;

    if (a != 0) {
        if (b == 0 && c == 0) {
            type = LowestBit(a) + 20;
        }
    } else if (b != 0) {
        if (c == 0) {
            type = LowestBit(b) + 30;
        }
    } else if (c != 0) {
        type = LowestBit(c) + 40;
    }
    return type;
}

#pragma auto_inline reset

s32 NETGetStartupErrorCodeEx(s32 err, s32 type)
{
    return GetStartupErrorCode(err, type) - type;
}

s32 GetStartupErrorCode(s32 err, s32 type)
{
    if (err >= 0) {
        return 0;
    }

    switch (err) {
    case -45:
        return -50200;
    case -28:
        return -50300;
    case -62:
        return -50400;
    case -111:
        return -52700;
    case -121:
        if (type >= 20 && type < 30) {
            return -51400;
        }
        return -51000;
    case -112:
    case -76:
    case -48:
    case -39:
        if (type >= 20 && type < 30) {
            return -51400;
        }
        return -51300;
    case -102:
    case -101:
    case -100:
        return -52000;
    case (s32)0x80000000:
        return -50100;
    default:
        OSReport("Unknown SOStartup Error: %d\n", err);
        return -50100;
    }
}
