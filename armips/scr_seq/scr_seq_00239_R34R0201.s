.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/flags.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"

.include "asm/include/items.inc"
.include "asm/include/species.inc"


// Ilex Forest gate on Route 34, text archive to grab from: 386.txt
// ported from pret/pokeheartgold scr_seq_0239_R34R0201.s
// HeartHard: the woman hands out an Eviolite after the TM12, also to players who got the TM before

FLAG_GOT_EVIOLITE_FROM_ILEX_FOREST_GATE_WOMAN equ 2605

.create "build/a012/2_239", 0

scrdef scr_seq_R34R0201_000
scrdef scr_seq_R34R0201_001
scrdef scr_seq_R34R0201_002
scrdef_end

scr_seq_R34R0201_000:
    play_se SEQ_SE_DP_SELECT
    lockall
    faceplayer
    goto_if_set FLAG_GOT_TM12_FROM_ILEX_FOREST_GATE_WOMAN, _eviolite
    npc_msg 0
    wait_button
    goto_if_no_item_space ITEM_TM12, 1, _bag_full
    callstd std_give_item_verbose
    setflag FLAG_GOT_TM12_FROM_ILEX_FOREST_GATE_WOMAN
    npc_msg 2
    wait_button
_eviolite:
    goto_if_set FLAG_GOT_EVIOLITE_FROM_ILEX_FOREST_GATE_WOMAN, _taunt
    npc_msg 5
    wait_button
    goto_if_no_item_space ITEM_EVIOLITE, 1, _bag_full
    callstd std_give_item_verbose
    setflag FLAG_GOT_EVIOLITE_FROM_ILEX_FOREST_GATE_WOMAN
    npc_msg 6
    wait_button_or_walk_away
    closemsg
    releaseall
    end

_taunt:
    npc_msg 2
    wait_button_or_walk_away
    closemsg
    releaseall
    end

_bag_full:
    callstd std_bag_is_full
    closemsg
    releaseall
    end

scr_seq_R34R0201_001:
    play_se SEQ_SE_DP_SELECT
    lockall
    faceplayer
    play_cry SPECIES_BUTTERFREE, 0
    npc_msg 3
    wait_cry
    wait_button_or_walk_away
    closemsg
    releaseall
    end

scr_seq_R34R0201_002:
    simple_npc_msg 4
    end

.align 4
.close
