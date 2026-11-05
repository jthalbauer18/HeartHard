.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/flags.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"

.include "asm/include/items.inc"
.include "asm/include/species.inc"


// Sprout Tower 3F, text archive to grab from: 056.txt
// ported from pret/pokeheartgold scr_seq_0018_D15R0103.s
// Elder Li now gives a random starter from another generation before the battle.
// It is of the type that beats the starter the player chose.

GIFT_STARTER_LEVEL equ 10
FLAG_GOT_SPROUT_TOWER_STARTER equ 2602

TRAINER_ELDER_LI equ 290

obj_D15R0103_chourou equ 3
obj_D15R0103_gsrivel equ 6

.create "build/a012/2_018", 0


scrdef scr_seq_0018_000
scrdef scr_seq_0018_001
scrdef scr_seq_0018_002
scrdef_end

scr_seq_0018_000:
    clearflag FLAG_UNK_1A3
    goto_if_set FLAG_UNK_078, _001F
    end

_001F:
    setflag FLAG_UNK_1A3
    end

scr_seq_0018_001:
    scrcmd_609
    lockall
    setvar VAR_UNK_40A4, 1
    apply_movement obj_player, _00B4
    wait_movement
    get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
    scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
    apply_movement 241, _00C0
    wait_movement
    apply_movement obj_D15R0103_chourou, _00D0
    wait_movement
    npc_msg 0
    closemsg
    wait 15, VAR_SPECIAL_RESULT
    callstd std_play_rival_outro_music
    buffer_rivals_name 0
    apply_movement obj_D15R0103_gsrivel, _00D8
    wait_movement
    npc_msg 1
    closemsg
    wait 15, VAR_SPECIAL_RESULT
    buffer_rivals_name 0
    npc_msg 2
    WaitAB
    closemsg
    play_se SEQ_SE_DP_KAIDAN2
    apply_movement obj_D15R0103_gsrivel, _00E0
    wait_movement
    hide_person obj_D15R0103_gsrivel
    setflag FLAG_UNK_078
    callstd std_fade_end_rival_outro_music
    apply_movement 241, _00C8
    wait_movement
    scrcmd_103
    releaseall
    end

.align 4
_00B4:
    step Exclamation, 1
    step 63, 1
    step_end

.align 4
_00C0:
    step 12, 5
    step_end

.align 4
_00C8:
    step 13, 5
    step_end

.align 4
_00D0:
    step 33, 2
    step_end

.align 4
_00D8:
    step 13, 1
    step_end

.align 4
_00E0:
    step 2, 4
    step 0, 4
    step 3, 4
    step 1, 4
    step 2, 2
    step 0, 2
    step 3, 2
    step 1, 2
    step 2, 2
    step 0, 2
    step 3, 2
    step 1, 2
    step 2, 1
    step 0, 1
    step 3, 1
    step 1, 1
    step 2, 1
    step 0, 1
    step 3, 1
    step 1, 1
    step 2, 1
    step 0, 1
    step_end

scr_seq_0018_002:
    play_se SEQ_SE_DP_SELECT
    lockall
    faceplayer
    goto_if_set FLAG_UNK_076, _0197
    goto_if_set FLAG_GOT_SPROUT_TOWER_STARTER, _battle
    get_party_count VAR_SPECIAL_x8005
    compare VAR_SPECIAL_x8005, 6
    goto_if_eq _party_full
    npc_msg 9
    get_starter_choice VAR_SPECIAL_x8004
    random VAR_SPECIAL_x8006, 5
    compare VAR_SPECIAL_x8004, SPECIES_CHIKORITA
    goto_if_eq _fire
    compare VAR_SPECIAL_x8004, SPECIES_CYNDAQUIL
    goto_if_eq _water
    goto _grass

_battle:
    npc_msg 3
    closemsg
    trainer_battle TRAINER_ELDER_LI, 0, 0, 0
    check_battle_won VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 0
    goto_if_eq _01A2
    npc_msg 4
    giveitem_no_check ITEM_TM70, 1
    setflag FLAG_UNK_076
    setflag FLAG_HIDE_VIOLET_GYM_GYM_GUY_AFTER_SPROUT
    clearflag FLAG_HIDE_VIOLET_GYM_GYM_GUY_BEFORE_SPROUT
    npc_msg 5
    wait_button
    closemsg
    releaseall
    end

_0197:
    npc_msg 6
    wait_button
    closemsg
    releaseall
    end

_fire:
    setvar VAR_TEMP_x4002, SPECIES_CHARMANDER
    compare VAR_SPECIAL_x8006, 0
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_TORCHIC
    compare VAR_SPECIAL_x8006, 1
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_CHIMCHAR
    compare VAR_SPECIAL_x8006, 2
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_TEPIG
    compare VAR_SPECIAL_x8006, 3
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_FENNEKIN
    goto _give

_water:
    setvar VAR_TEMP_x4002, SPECIES_SQUIRTLE
    compare VAR_SPECIAL_x8006, 0
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_MUDKIP
    compare VAR_SPECIAL_x8006, 1
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_PIPLUP
    compare VAR_SPECIAL_x8006, 2
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_OSHAWOTT
    compare VAR_SPECIAL_x8006, 3
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_FROAKIE
    goto _give

_grass:
    setvar VAR_TEMP_x4002, SPECIES_BULBASAUR
    compare VAR_SPECIAL_x8006, 0
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_TREECKO
    compare VAR_SPECIAL_x8006, 1
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_TURTWIG
    compare VAR_SPECIAL_x8006, 2
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_SNIVY
    compare VAR_SPECIAL_x8006, 3
    goto_if_eq _give
    setvar VAR_TEMP_x4002, SPECIES_CHESPIN

_give:
    give_mon VAR_TEMP_x4002, GIFT_STARTER_LEVEL, 0, 0, 0, VAR_SPECIAL_RESULT
    setflag FLAG_GOT_SPROUT_TOWER_STARTER
    buffer_players_name 0
    buffer_mon_species_name 1, VAR_SPECIAL_x8005
    npc_msg 10
    play_fanfare SEQ_ME_POKEGET
    wait_fanfare
    npc_msg 11
    touchscreen_menu_hide
    getmenuchoice VAR_SPECIAL_RESULT
    touchscreen_menu_show
    compare VAR_SPECIAL_RESULT, 0
    goto_if_ne _gift_end
    closemsg
    setvar VAR_TEMP_x4000, 0
    fade_screen 6, 1, 0, RGB_BLACK
    wait_fade
    nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
    fade_screen 6, 1, 1, RGB_BLACK
    wait_fade

_gift_end:
    npc_msg 12
    goto _battle

_party_full:
    npc_msg 13
    wait_button
    closemsg
    releaseall
    end

_01A2:
    white_out
    releaseall
    end

.align 4
.close
