#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/file.h"



// function declarations
void AITypeCalc(struct BattleStruct *sp, u32 move, u32 type, int atkAbility, int defAbility, int held_effect, int type1, int type2, u32 *flag);



/**
 *  @brief check whether the defender the AI is looking at floats thanks to Magnet Rise
 *
 *  AITypeCalc only gets the types and the ability of the defender, so the battler is looked up by those
 *  the AI's current target is checked first, any other battler with the same types and ability after it
 *
 *  @param sp global battle structure
 *  @param defAbility ability of the defender
 *  @param type1 primary type of defender
 *  @param type2 secondary type of defender
 *  @return TRUE if ground moves cannot hit the defender because of Magnet Rise
 */
static BOOL AI_DefenderHasMagnetRise(struct BattleStruct *sp, int defAbility, int type1, int type2)
{
    int target = sp->aiWorkTable.ai_defence_client;

    for (int i = -1; i < CLIENT_MAX; i++)
    {
        int battler = (i < 0) ? target : i;

        if (battler < 0 || battler >= CLIENT_MAX || (i >= 0 && battler == target))
        {
            continue;
        }
        if (sp->battlemon[battler].hp == 0
         || sp->battlemon[battler].type1 != type1
         || sp->battlemon[battler].type2 != type2
         || GetBattlerAbility(sp, battler) != defAbility)
        {
            continue;
        }
        return (sp->battlemon[battler].moveeffect.magnetRiseTurns != 0
             && (sp->battlemon[battler].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) == 0);
    }
    return FALSE;
}

/**
 *  @brief set up type calc flags for AI to respect and make decisions based on
 *
 *  @param sp global battle structure
 *  @param move index of the move being used
 *  @param atkAbility ability of the attacker
 *  @param defAbility ability of the defender
 *  @param held_effect held item effect of the attacker
 *  @param type1 primary type of defender
 *  @param type2 secondary type of defender
 *  @param flag flags to modify so that the AI knows what decision to make
 */
void AITypeCalc(struct BattleStruct *sp, u32 move, u32 type, int atkAbility, int defAbility, int held_effect, int type1, int type2, u32 *flag)
{
    int i;
    u8 typeLocal;

    if (move == MOVE_STRUGGLE)
    {
        return;
    }

    typeLocal = GetAdjustedMoveTypeBasics(sp, move, atkAbility, type); // not just normalize, now others

    if ((atkAbility != ABILITY_MOLD_BREAKER)
     && (defAbility == ABILITY_LEVITATE)
     && (typeLocal == TYPE_GROUND)
     && ((sp->field_condition & FIELD_STATUS_GRAVITY) == 0)
     && (held_effect != HOLD_EFFECT_SPEED_DOWN_GROUNDED))
    {
        flag[0] |= MOVE_STATUS_FLAG_NOT_EFFECTIVE; // not "not very effective", ineffective
    }
    else if ((typeLocal == TYPE_GROUND)
          && ((sp->field_condition & FIELD_STATUS_GRAVITY) == 0)
          && (held_effect == HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT))
    {
        flag[0] |= MOVE_STATUS_FLAG_NOT_EFFECTIVE; // not "not very effective", ineffective
    }
#ifdef HEARTHARD_AI_KNOWS_MAGNET_RISE
    else if ((typeLocal == TYPE_GROUND)
          && ((sp->field_condition & FIELD_STATUS_GRAVITY) == 0)
          && (held_effect != HOLD_EFFECT_SPEED_DOWN_GROUNDED)
          && AI_DefenderHasMagnetRise(sp, defAbility, type1, type2))
    {
        flag[0] |= MOVE_STATUS_FLAG_NOT_EFFECTIVE; // not "not very effective", ineffective
    }
#endif
    else
    {
        i = 0;
        while (TypeEffectivenessTable[i][0] != TYPE_ENDTABLE)
        {
            if (TypeEffectivenessTable[i][0] == TYPE_FORESIGHT)
            {
                if (atkAbility == ABILITY_SCRAPPY || atkAbility == ABILITY_MINDS_EYE)
                {
                    break;
                }
                else
                {
                    i++;
                    continue;
                }
            }
            // TODO: Handle Primal Weathers so that the AI knows about them
            if (TypeEffectivenessTable[i][0] == typeLocal)
            {
                if (TypeEffectivenessTable[i][1] == type1)
                {
                    if (AI_ShouldUseNormalTypeEffCalc(sp, held_effect, i) == TRUE)
                    {
                        AI_TypeCheckCalc(TypeEffectivenessTable[i][2], flag);
                    }
                }
                if ((TypeEffectivenessTable[i][1] == type2) && (type1 != type2)) // haven't already run the type yet
                {
                    if (AI_ShouldUseNormalTypeEffCalc(sp, held_effect, i) == TRUE)
                    {
                        AI_TypeCheckCalc(TypeEffectivenessTable[i][2], flag);
                    }
                }
            }
            i++;
        }
    }

    if ((atkAbility != ABILITY_MOLD_BREAKER)
     && (defAbility == ABILITY_WONDER_GUARD)
     && (ShouldDelayTurnEffectivenessChecking(sp, move))
     && (((flag[0] & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) == 0) || ((flag[0] & (MOVE_STATUS_FLAG_SUPER_EFFECTIVE | MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE)) == (MOVE_STATUS_FLAG_SUPER_EFFECTIVE | MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE))))
    {
        flag[0] |= MOVE_STATUS_FLAG_NOT_EFFECTIVE; // not "not very effective", ineffective
    }

    return;
}

/**
 *  @brief see if bind should restrain switching for AI
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param battler battler whose bind counter to check
 *  @return TRUE if the switch should not be able to happen, FALSE otherwise
 */
BOOL SeeIfBindShouldRestrainSwitch(struct BattleSystem *bw UNUSED, struct BattleStruct *sp, u32 battler)
{
    //debug_printf("Battler %d can%s switch out.\n", battler, (sp->binding_turns[battler] != 0) ? "'t" : "");
    return (sp->binding_turns[battler] != 0);
}
