#include "types.h"
#include "SDK/NET/net.h"

static const char *NETiRexPPCVersion = "<< REX-PPC 1.0.0.1 (RevoEX-1.0plus1) REL 070416023413 >>";

#pragma force_active on
const char *NETGetRexPPCVersionPrintable(void)
{
    return NETiRexPPCVersion;
}
#pragma force_active reset
