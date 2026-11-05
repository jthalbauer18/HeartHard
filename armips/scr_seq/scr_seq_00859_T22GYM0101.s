.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/flags.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"

.include "asm/include/items.inc"


// Violet Gym, text archive to grab from: 558.txt
// ported from pret/pokeheartgold scr_seq_0859_T22GYM0101.s

FALKNER_LEVEL_CAP equ 16

// set to 1 if every trainer of split 1 has to be defeated before falkner battles
REQUIRE_ALL_TRAINERS equ 0

FLAG_HIDE_VIOLET_GYM_FALKNER equ 0x2E9
SCORE_EVENT_BADGE_GET equ 22

TRAINER_BUG_CATCHER_WADE equ 4
TRAINER_YOUNGSTER_JOEY equ 8
TRAINER_LEADER_FALKNER_FALKNER equ 20
TRAINER_BIRD_KEEPER_GS_ROD equ 29
TRAINER_SAGE_CHOW equ 43
TRAINER_YOUNGSTER_MIKEY equ 47
TRAINER_BIRD_KEEPER_GS_ABE equ 50
TRAINER_SAGE_NICO equ 51
TRAINER_SAGE_EDMOND equ 52
TRAINER_SAGE_JIN equ 53
TRAINER_SAGE_TROY equ 54
TRAINER_SAGE_NEAL equ 55
TRAINER_BUG_CATCHER_DON equ 249

.create "build/a012/2_859", 0


scrdef scr_seq_0859_000
scrdef scr_seq_0859_001
scrdef scr_seq_0859_002
scrdef scr_seq_0859_003
scrdef scr_seq_0859_004
scrdef scr_seq_0859_005
scrdef_end

scr_seq_0859_000:
    violet_gym_init
    get_phone_book_rematch PHONE_CONTACT_FALKNER, VAR_TEMP_x4001
    compare VAR_TEMP_x4001, 0
    goto_if_ne _00A7
    check_registered_phone_number PHONE_CONTACT_FALKNER, VAR_TEMP_x4001
    compare VAR_TEMP_x4001, 1
    goto_if_eq _007E
    check_badge BADGE_SOUL, VAR_TEMP_x4001
    compare VAR_TEMP_x4001, 1
    goto_if_eq _005B
    goto _00A1

_005B:
    get_weekday VAR_TEMP_x4001
    compare VAR_TEMP_x4001, 1
    goto_if_ne _0076
    setflag FLAG_HIDE_VIOLET_GYM_FALKNER
    goto _007C

_0076:
    goto _00A1

_007C:
    end

_007E:
    get_weekday VAR_TEMP_x4001
    compare VAR_TEMP_x4001, 3
    goto_if_ne _0099
    setflag FLAG_HIDE_VIOLET_GYM_FALKNER
    goto _009F

_0099:
    goto _00A1

_009F:
    end

_00A1:
    clearflag FLAG_HIDE_VIOLET_GYM_FALKNER
    end

_00A7:
    setflag FLAG_HIDE_VIOLET_GYM_FALKNER
    end

scr_seq_0859_001:
    play_se SEQ_SE_DP_SELECT
    lockall
    faceplayer
    check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _0168
.if REQUIRE_ALL_TRAINERS == 1
    // every trainer of split 1 has to be defeated first
    checktrainerflag TRAINER_YOUNGSTER_JOEY
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_YOUNGSTER_MIKEY
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_BUG_CATCHER_DON
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_BUG_CATCHER_WADE
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_SAGE_NICO
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_SAGE_CHOW
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_SAGE_EDMOND
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_SAGE_JIN
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_SAGE_NEAL
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_SAGE_TROY
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_BIRD_KEEPER_GS_ABE
    goto_if 0, _gate_trainers
    checktrainerflag TRAINER_BIRD_KEEPER_GS_ROD
    goto_if 0, _gate_trainers
    // elder li is a scripted battle, this flag is set once he is defeated
    goto_if_unset FLAG_UNK_076, _gate_trainers
.endif
    // no pokemon in the party may be above the level cap
    CheckPartyOverLevel FALKNER_LEVEL_CAP, VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _gate_level
    npc_msg 0
    closemsg
    trainer_battle TRAINER_LEADER_FALKNER_FALKNER, 0, 0, 0
    check_battle_won VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 0
    goto_if_eq _017E
    give_badge BADGE_ZEPHYR
    add_special_game_stat SCORE_EVENT_BADGE_GET
    settrainerflag TRAINER_BIRD_KEEPER_GS_ROD
    settrainerflag TRAINER_BIRD_KEEPER_GS_ABE
    setvar VAR_SCENE_VIOLET_CITY_OW, 1
    setflag FLAG_UNK_192
    setvar VAR_SCENE_ELMS_LAB, 6
    setflag FLAG_UNK_0F4
    setflag FLAG_HIDE_WIFI_CLUB_CLOSED_LADY
    npc_msg 1
    buffer_players_name 0
    npc_msg 2
    play_fanfare SEQ_ME_BADGE
    wait_fanfare
    npc_msg 3
    goto _0126

_0126:
    goto_if_no_item_space ITEM_TM51, 1, _015E
    callstd std_give_item_verbose
    setflag FLAG_GOT_TM51_FROM_FALKNER
    clearflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
    npc_msg 4
    wait_button
    closemsg
    releaseall
    end

_015E:
    callstd std_bag_is_full
    closemsg
    releaseall
    end

_0168:
    goto_if_unset FLAG_GOT_TM51_FROM_FALKNER, _0126
    npc_msg 5
    wait_button
    closemsg
    releaseall
    end

_017E:
    white_out
    releaseall
    end

_gate_trainers:
    npc_msg 11
    wait_button
    closemsg
    releaseall
    end

_gate_level:
    npc_msg 12
    wait_button
    closemsg
    releaseall
    end

scr_seq_0859_002:
    play_se SEQ_SE_DP_SELECT
    lockall
    faceplayer
    check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _01AA
    npc_msg 7
    wait_button
    closemsg
    releaseall
    end

_01AA:
    npc_msg 8
    wait_button
    closemsg
    releaseall
    end

scr_seq_0859_005:
    simple_npc_msg 6
    end

scr_seq_0859_003:
    play_se SEQ_SE_DP_SELECT
    lockall
    faceplayer
    check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
    buffer_players_name 0
    compare VAR_SPECIAL_RESULT, 0
    goto_if_ne _01EF
    npc_msg 9
    goto _01F2

_01EF:
    npc_msg 10
_01F2:
    wait_button
    closemsg
    releaseall
    end

scr_seq_0859_004:
    setvar VAR_TEMP_x4000, 0
    violet_gym_elevator
    end

.align 4
.close
