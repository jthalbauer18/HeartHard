.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/vars.s"

// Cianwood Gym, the gym statue (this gym has no guide), text archive to grab from: 574.txt
// expanded from pret/pokeheartgold scr_seq_0877_T24GYM0101.s with pret2armips.py, so the bytes match the original script
// HeartHard: the gym guide offers to edge the whole party after talking (see _edge_offer at the end)

.create "build/a012/2_877", 0

    .word scr_seq_T24GYM0101_000 - . - 4
    .word scr_seq_T24GYM0101_001 - . - 4
    .word scr_seq_T24GYM0101_002 - . - 4
    .word scr_seq_T24GYM0101_003 - . - 4
    .halfword 64787
scr_seq_T24GYM0101_001:
    .halfword 318
    .halfword 31
    .halfword 2433
    .halfword 2
scr_seq_T24GYM0101_000:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 17
    .halfword 16384
    .halfword 0
    .halfword 28
    .byte 1
    .word _010A-.-4
    .halfword 294
    .halfword 4
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 1
    .word _00EE-.-4
    .halfword 45
    .byte 0
    .halfword 53
    .halfword 213
    .halfword 34
    .halfword 0
    .byte 0
    .byte 0
    .halfword 220
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 0
    .halfword 28
    .byte 1
    .word _0104-.-4
    .halfword 45
    .byte 3
    .halfword 36
    .halfword 156
    .halfword 36
    .halfword 157
    .halfword 36
    .halfword 251
    .halfword 36
    .halfword 159
    .halfword 190
    .byte 0
    .halfword 45
    .byte 4
    .halfword 295
    .halfword 4
    .halfword 78
    .halfword 1189
    .halfword 79
    .halfword 39
    .halfword 16692
    .halfword 1
    .halfword 515
    .halfword 22
    .halfword 41
    .halfword 16662
    .halfword 1
    .halfword 17
    .halfword 16692
    .halfword 3
    .halfword 28
    .byte 5
    .word _00A6-.-4
    .halfword 41
    .halfword 16503
    .halfword 1
_00A6:
    .halfword 45
    .byte 5
    .halfword 22
    .word _00AF-.-4
_00AF:
    .halfword 41
    .halfword 32772
    .halfword 328
    .halfword 41
    .halfword 32773
    .halfword 1
    .halfword 127
    .halfword 32772
    .halfword 32773
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 0
    .halfword 28
    .byte 1
    .word _00E3-.-4
    .halfword 20
    .halfword 2033
    .halfword 30
    .halfword 186
    .halfword 45
    .byte 6
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_00E3:
    .halfword 45
    .byte 7
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_00EE:
    .halfword 32
    .halfword 186
    .halfword 28
    .byte 0
    .word _00AF-.-4
    .halfword 45
    .byte 8
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_0104:
    .halfword 219
    .halfword 97
    .halfword 2
_010A:
    .halfword 45
    .byte 9
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
scr_seq_T24GYM0101_002:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 17
    .halfword 16384
    .halfword 0
    .halfword 28
    .byte 1
    .word _0135-.-4
    .halfword 45
    .byte 12
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_0135:
    .halfword 45
    .byte 10
    .halfword 746
    .halfword 748
    .halfword 32780
    .halfword 747
    .halfword 17
    .halfword 32780
    .halfword 0
    .halfword 28
    .byte 1
    .word _0153-.-4
    .halfword 53
    .halfword 97
    .halfword 2
_0153:
    .halfword 190
    .byte 0
    .halfword 45
    .byte 11
    .halfword 53
    .halfword 30
    .halfword 2433
    .halfword 74
    .halfword 2143
    .halfword 73
    .halfword 1754
    .halfword 73
    .halfword 2172
    .halfword 319
    .halfword 16384
    .halfword 97
    .halfword 2
scr_seq_T24GYM0101_003:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 4
    .halfword 32780
    .halfword 190
    .byte 0
    .halfword 17
    .halfword 32780
    .halfword 0
    .halfword 28
    .byte 5
    .word _019A-.-4
    .halfword 45
    .byte 13
    .halfword 22
    .word _019D-.-4
_019A:
    .halfword 45
    .byte 14
_019D:
    .halfword 50
    .halfword 26
    .word _edge_offer-.-4
    .halfword 53
    .halfword 97
    .halfword 2

// asks whether the whole party should be brought right up to its next level
_edge_offer:
    npc_msg 15
    yesno VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _edge_offer_end
    EdgeParty
    npc_msg 16
    wait_button
_edge_offer_end:
    return

.align 4
.close
