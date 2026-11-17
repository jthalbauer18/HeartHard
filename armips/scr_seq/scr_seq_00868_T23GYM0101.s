.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/vars.s"

// Azalea Gym, gym guide, text archive to grab from: 566.txt
// expanded from pret/pokeheartgold scr_seq_0868_T23GYM0101.s with pret2armips.py, so the bytes match the original script
// HeartHard: the gym guide offers to edge the whole party after talking (see _edge_offer at the end)

.create "build/a012/2_868", 0

    .word scr_seq_T23GYM0101_000 - . - 4
    .word scr_seq_T23GYM0101_001 - . - 4
    .halfword 64787
scr_seq_T23GYM0101_000:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 1
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 1
    .word _0030-.-4
    .halfword 45
    .byte 0
    .halfword 50
    .halfword 26
    .word _edge_offer-.-4
    .halfword 53
    .halfword 97
    .halfword 2
_0030:
    .halfword 45
    .byte 1
    .halfword 50
    .halfword 26
    .word _edge_offer-.-4
    .halfword 53
    .halfword 97
    .halfword 2
scr_seq_T23GYM0101_001:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 1
    .halfword 32780
    .halfword 190
    .byte 0
    .halfword 17
    .halfword 32780
    .halfword 0
    .halfword 28
    .byte 5
    .word _0062-.-4
    .halfword 45
    .byte 2
    .halfword 22
    .word _0065-.-4
_0062:
    .halfword 45
    .byte 3
_0065:
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2

// asks whether the whole party should be brought right up to its next level
_edge_offer:
    npc_msg 4
    yesno VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _edge_offer_end
    EdgeParty
    npc_msg 5
    wait_button
_edge_offer_end:
    return

.align 4
.close
