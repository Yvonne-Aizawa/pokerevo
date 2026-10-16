#include "SDK/NWC24/NWC24Mime.h"

void NWC24InitBase64Table(s8* table) {
    int i;
    for (i = 0; i < 256; i++) table[i] = -1;
    for (i = 'A'; i <= 'Z'; i++) table[i] = i - 'A';
    for (i = 'a'; i <= 'z'; i++) table[i] = i - 'a' + 26;
    for (i = '0'; i <= '9'; i++) table[i] = i - '0' + 52;
    table['+'] = 62;
    table['/'] = 63;
}
