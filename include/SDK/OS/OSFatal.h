#ifndef POKEREVO_OS_OSFATAL_H
#define POKEREVO_OS_OSFATAL_H

#include "SDK/GX/GX.h"

#ifdef __cplusplus
extern "C" {
#endif

void OSFatal(GXColor fg, GXColor bg, const char *msg);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OS_OSFATAL_H
