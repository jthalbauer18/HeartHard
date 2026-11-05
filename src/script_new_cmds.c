#include "../include/types.h"
#include "../include/config.h"
#include "../include/pokemon.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/constants/file.h"

#define SCRIPT_NEW_CMD_REPEL_USE    0
#define SCRIPT_NEW_CMD_CHECK_PARTY_OVER_LEVEL 1
#define SCRIPT_NEW_CMD_TOGGLE_INFINITE_REPEL 2

#define SCRIPT_NEW_CMD_MAX          256

BOOL Script_RunNewCmd(SCRIPTCONTEXT *ctx) {
    u8 sw = ScriptReadByte(ctx);
    u16 UNUSED arg0 = ScriptReadHalfword(ctx);

    switch (sw) {
        case SCRIPT_NEW_CMD_REPEL_USE:;
#ifdef IMPLEMENT_REUSABLE_REPELS
            u16 most_recent_repel = Repel_GetMostRecent();
            SetScriptVar(arg0, most_recent_repel);
            Repel_Use(most_recent_repel, HEAPID_MAIN_HEAP);
#endif
            break;

        case SCRIPT_NEW_CMD_CHECK_PARTY_OVER_LEVEL:;
            u16 level_limit = ScriptReadHalfword(ctx);
            struct Party *party = SaveData_GetPlayerPartyPtr(SaveBlock2_get());
            u16 is_over_level = FALSE;
            for (int i = 0; i < party->count; i++) {
                struct PartyPokemon *mon = Party_GetMonByIndex(party, i);
                if (!GetMonData(mon, MON_DATA_IS_EGG, NULL) && GetMonData(mon, MON_DATA_LEVEL, NULL) > level_limit) {
                    is_over_level = TRUE;
                    break;
                }
            }
            SetScriptVar(arg0, is_over_level);
            break;

#ifdef HEARTHARD_INFINITE_REPEL_FLAG
        case SCRIPT_NEW_CMD_TOGGLE_INFINITE_REPEL:;
            u8 *repel_addr = SaveData_GetRepelPtr(EncDataSave_GetSaveDataPtr(SaveBlock2_get()));
            if (CheckScriptFlag(HEARTHARD_INFINITE_REPEL_FLAG)) {
                ClearScriptFlag(HEARTHARD_INFINITE_REPEL_FLAG);
                *repel_addr = 0;
                SetScriptVar(arg0, FALSE);
            } else {
                SetScriptFlag(HEARTHARD_INFINITE_REPEL_FLAG);
                *repel_addr = 1;
                SetScriptVar(arg0, TRUE);
            }
            break;
#endif

        default: break;
    }

    return FALSE;
}
