#include "types.h"
#include "SDK/OS/OSLink.h"

typedef struct OSModuleQueue {
    struct OSModuleInfo *head;
    struct OSModuleInfo *tail;
} OSModuleQueue;

#define __OSModuleList  (*(OSModuleQueue *)0x800030C8)
#define __OSStringTable (*(void **)0x800030D0)

void __OSModuleInit(void)
{
    __OSModuleList.tail = NULL;
    __OSModuleList.head = NULL;
    __OSStringTable = NULL;
}
