#include "../include/repel.h"
#include "../include/item.h"
#include "../include/constants/item.h"
#include "../include/bag.h"
#include "../include/constants/file.h"


void Repel_SetCurrentType();

#ifdef IMPLEMENT_REUSABLE_REPELS
u16 ALIGN4 CurrentRepelType = 0;

bool32 PlayerStepEvent_RepelCounterDecrement(SaveData *saveData, FieldSystem *fieldSystem) {
    void *roamerSaveData = EncDataSave_GetSaveDataPtr(saveData);
    u8* repel_addr = SaveData_GetRepelPtr(roamerSaveData);

#ifdef HEARTHARD_SKIP_EARLY_SCENES
    // elm sent the player off with the aide's potions, so jump past guide gent and mr. pokemon
    if (GetScriptVar(HEARTHARD_VAR_ELMS_LAB) == 2 && GetScriptVar(HEARTHARD_VAR_MR_POKEMONS_HOUSE) == 0) {
        EventSet_Script(fieldSystem, 2074, NULL);
        return TRUE;
    }
    // elm would now send lyra to route 29 for the catching tutorial
    if (GetScriptVar(HEARTHARD_VAR_CATCHING_TUTORIAL) == 1) {
        EventSet_Script(fieldSystem, 2075, NULL);
        return TRUE;
    }
#endif

#ifdef HEARTHARD_INFINITE_REPEL_FLAG
    if (CheckScriptFlag(HEARTHARD_INFINITE_REPEL_FLAG)) {
        *repel_addr = 1; // the counter stays active as long as the infinite repel is on
        return FALSE;
    }
#endif

    if (*repel_addr != 0) {
        (*repel_addr)--;

        if (*repel_addr == 0) {
            BAG_DATA *bag = Sav2_Bag_get(saveData);
            u16 currentRepel = Repel_GetMostRecent();
            if (Bag_HasItem(bag, currentRepel, 1, HEAPID_WORLD)) {
                EventSet_Script(fieldSystem, 2072, NULL);
            } else {
                EventSet_Script(fieldSystem, 2022, NULL);
            }

            return TRUE;
        }
    }

    return FALSE;
}

u16 Repel_GetMostRecent() {
    Repel_SetCurrentType();
    return CurrentRepelType;
}

BOOL Repel_Use(u16 item_id, u32 heap_id) {
    SaveData *saveData = SaveBlock2_get();
    void *roamerSaveData = EncDataSave_GetSaveDataPtr(saveData);
    u8* repel_addr = SaveData_GetRepelPtr(roamerSaveData);

    BAG_DATA *bag = Sav2_Bag_get(saveData);

    item_id = Repel_GetMostRecent();

    if (Bag_TakeItem(bag, item_id, 1, heap_id)) {
        *repel_addr = Repel_GetSteps(item_id, heap_id);
        return TRUE;
    }

    return FALSE;
}

u8 Repel_GetSteps(u16 item_id, u32 heap_id) {
    return GetItemData(item_id, ITEM_PARAM_ATTACK, heap_id);
}
#endif

void Repel_SetCurrentType() {
#ifdef IMPLEMENT_REUSABLE_REPELS
    u16 item_id = 0;
    BAG_DATA *bag = Sav2_Bag_get(SaveBlock2_get());
    if (Bag_HasItem(bag, ITEM_MAX_REPEL, 1, HEAPID_MAIN_HEAP))
        item_id = ITEM_MAX_REPEL;
    else if (Bag_HasItem(bag, ITEM_SUPER_REPEL, 1, HEAPID_MAIN_HEAP))
        item_id = ITEM_SUPER_REPEL;
    else
        item_id = ITEM_REPEL;

    CurrentRepelType = item_id;
#endif
}
