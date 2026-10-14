#include "types.h"
#include "SDK/TPL/TPL.h"
#include "SDK/OS/OSError.h"

#define TPL_VERSION 2142000

void TPLBind(TPLPalette *pal)
{
    u16 i;

    if (pal->versionNumber != TPL_VERSION) {
        // OSPanic(__FILE__, __LINE__, ...) in the SDK
        OSPanic("TPL.c", 25, "invalid version number for texture palette");
    }

    pal->descriptorArray = (TPLDescriptor *)((u32)pal->descriptorArray + (u32)pal);

    for (i = 0; i < pal->numDescriptors; i++) {
        if (pal->descriptorArray[i].textureHeader) {
            pal->descriptorArray[i].textureHeader =
                (TPLHeader *)((u32)pal + (u32)pal->descriptorArray[i].textureHeader);
            if (!pal->descriptorArray[i].textureHeader->unpacked) {
                pal->descriptorArray[i].textureHeader->data =
                    (void *)((u32)pal + (u32)pal->descriptorArray[i].textureHeader->data);
                pal->descriptorArray[i].textureHeader->unpacked = TRUE;
            }
        }

        if (pal->descriptorArray[i].CLUTHeader) {
            pal->descriptorArray[i].CLUTHeader =
                (TPLClutHeader *)((u32)pal + (u32)pal->descriptorArray[i].CLUTHeader);
            if (!pal->descriptorArray[i].CLUTHeader->unpacked) {
                pal->descriptorArray[i].CLUTHeader->data =
                    (void *)((u32)pal + (u32)pal->descriptorArray[i].CLUTHeader->data);
                pal->descriptorArray[i].CLUTHeader->unpacked = TRUE;
            }
        }
    }
}

TPLDescriptor *TPLGet(TPLPalette *pal, u32 id)
{
    id %= pal->numDescriptors;
    return &pal->descriptorArray[id];
}

void TPLGetGXTexObjFromPalette(TPLPalette *pal, GXTexObj *to, u32 id)
{
    TPLDescriptor *tdp;
    GXBool mipMap;

    tdp = TPLGet(pal, id);
    mipMap = tdp->textureHeader->minLOD == tdp->textureHeader->maxLOD ? FALSE : TRUE;

    GXInitTexObj(to, tdp->textureHeader->data, tdp->textureHeader->width, tdp->textureHeader->height,
                 tdp->textureHeader->format, tdp->textureHeader->wrapS, tdp->textureHeader->wrapT, mipMap);
    GXInitTexObjLOD(to, tdp->textureHeader->minFilter, tdp->textureHeader->magFilter, tdp->textureHeader->minLOD,
                    tdp->textureHeader->maxLOD, tdp->textureHeader->LODBias, FALSE,
                    tdp->textureHeader->edgeLODEnable, 0);
}
