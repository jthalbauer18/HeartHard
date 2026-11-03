#include "../include/types.h"
#include "../include/pokemon.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/constants/file.h"

#define SCRIPT_NEW_CMD_REPEL_USE    0
#define SCRIPT_NEW_CMD_CHECK_PARTY_OVER_LEVEL 1

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

        default: break;
    }

    return FALSE;
}
