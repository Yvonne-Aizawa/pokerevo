#ifndef POKEREVO_NWC24_NWC24STDAPI_H
#define POKEREVO_NWC24_NWC24STDAPI_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

s32 STD_strnlen(const char *s, s32 max);
// The asm never touches r3, so the destination comes back as the result.
void *Mail_memset(void *dst, int val, u32 n);
int Mail_sprintf(char *dst, const char *fmt, ...);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NWC24_NWC24STDAPI_H
