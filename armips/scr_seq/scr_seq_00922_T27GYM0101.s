.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/vars.s"

// Ecruteak Gym, gym guide, text archive to grab from: 614.txt
// expanded from pret/pokeheartgold scr_seq_0922_T27GYM0101.s with pret2armips.py, so the bytes match the original script
// HeartHard: the gym guide offers to edge the whole party after talking (see _edge_offer at the end)

.create "build/a012/2_922", 0

    .word scr_seq_T27GYM0101_000 - . - 4
    .word scr_seq_T27GYM0101_001 - . - 4
    .word scr_seq_T27GYM0101_002 - . - 4
    .word scr_seq_T27GYM0101_003 - . - 4
    .word scr_seq_T27GYM0101_004 - . - 4
    .word scr_seq_T27GYM0101_005 - . - 4
    .halfword 64787
scr_seq_T27GYM0101_000:
    .halfword 314
    .halfword 142
    .halfword 37
    .halfword 16385
    .halfword 17
    .halfword 16385
    .halfword 0
    .halfword 28
    .byte 5
    .word _00AC-.-4
    .halfword 32
    .halfword 2404
    .halfword 28
    .byte 0
    .word _00A6-.-4
    .halfword 147
    .halfword 37
    .halfword 16385
    .halfword 17
    .halfword 16385
    .halfword 1
    .halfword 28
    .byte 1
    .word _0085-.-4
    .halfword 484
    .halfword 16384
    .halfword 17
    .halfword 16384
    .halfword 1
    .halfword 28
    .byte 5
    .word _0068-.-4
    .halfword 30
    .halfword 749
    .halfword 22
    .word _0083-.-4
_0068:
    .halfword 17
    .halfword 16384
    .halfword 2
    .halfword 28
    .byte 5
    .word _007F-.-4
    .halfword 30
    .halfword 749
    .halfword 22
    .word _0083-.-4
_007F:
    .halfword 31
    .halfword 749
_0083:
    .halfword 2
_0085:
    .halfword 484
    .halfword 16384
    .halfword 17
    .halfword 16384
    .halfword 5
    .halfword 28
    .byte 5
    .word _00A0-.-4
    .halfword 30
    .halfword 749
    .halfword 22
    .word _00A4-.-4
_00A0:
    .halfword 31
    .halfword 749
_00A4:
    .halfword 2
_00A6:
    .halfword 31
    .halfword 749
    .halfword 2
_00AC:
    .halfword 30
    .halfword 749
    .halfword 2
scr_seq_T27GYM0101_004:
    .halfword 609
    .halfword 96
    .halfword 94
    .halfword 6
    .word _0108-.-4
    .halfword 95
    .halfword 45
    .byte 9
    .halfword 53
    .halfword 94
    .halfword 6
    .word _0118-.-4
    .halfword 94
    .halfword 255
    .word _0128-.-4
    .halfword 95
    .halfword 41
    .halfword 16505
    .halfword 1
    .halfword 174
    .halfword 6
    .halfword 1
    .halfword 0
    .halfword 0
    .halfword 175
    .halfword 176
    .halfword 78
    .halfword 7
    .halfword 376
    .halfword 182
    .halfword 1
    .halfword 174
    .halfword 6
    .halfword 1
    .halfword 1
    .halfword 0
    .halfword 175
    .halfword 97
    .halfword 2
    .align 4
_0108:
    .halfword 75
    .halfword 1
    .halfword 13
    .halfword 3
    .halfword 63
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_0118:
    .halfword 9
    .halfword 1
    .halfword 71
    .halfword 1
    .halfword 12
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_0128:
    .halfword 63
    .halfword 1
    .halfword 13
    .halfword 1
    .halfword 63
    .halfword 1
    .halfword 254
    .halfword 0
scr_seq_T27GYM0101_001:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 3
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 1
    .word _01D9-.-4
    .halfword 45
    .byte 0
    .halfword 53
    .halfword 213
    .halfword 31
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
    .word _01EF-.-4
    .halfword 45
    .byte 1
    .halfword 295
    .halfword 3
    .halfword 39
    .halfword 16692
    .halfword 1
    .halfword 515
    .halfword 22
    .halfword 30
    .halfword 2456
    .halfword 190
    .byte 0
    .halfword 45
    .byte 2
    .halfword 78
    .halfword 1189
    .halfword 79
    .halfword 45
    .byte 3
    .halfword 22
    .word _019B-.-4
_019B:
    .halfword 41
    .halfword 32772
    .halfword 357
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
    .word _01CF-.-4
    .halfword 20
    .halfword 2033
    .halfword 30
    .halfword 166
    .halfword 45
    .byte 5
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_01CF:
    .halfword 20
    .halfword 2009
    .halfword 53
    .halfword 97
    .halfword 2
_01D9:
    .halfword 32
    .halfword 166
    .halfword 28
    .byte 0
    .word _019B-.-4
    .halfword 45
    .byte 6
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_01EF:
    .halfword 219
    .halfword 97
    .halfword 2
scr_seq_T27GYM0101_002:
    .halfword 609
    .halfword 96
    .halfword 73
    .halfword 1585
    .halfword 94
    .halfword 255
    .word _0230-.-4
    .halfword 95
    .halfword 174
    .halfword 6
    .halfword 1
    .halfword 0
    .halfword 0
    .halfword 175
    .halfword 176
    .halfword 80
    .halfword 0
    .halfword 16
    .halfword 49
    .halfword 0
    .halfword 174
    .halfword 6
    .halfword 1
    .halfword 1
    .halfword 0
    .halfword 175
    .halfword 97
    .halfword 2
    .align 4
_0230:
    .halfword 1
    .halfword 2
    .halfword 2
    .halfword 2
    .halfword 0
    .halfword 2
    .halfword 3
    .halfword 2
    .halfword 1
    .halfword 2
    .halfword 2
    .halfword 2
    .halfword 0
    .halfword 2
    .halfword 3
    .halfword 2
    .halfword 1
    .halfword 2
    .halfword 2
    .halfword 2
    .halfword 0
    .halfword 2
    .halfword 3
    .halfword 2
    .halfword 1
    .halfword 2
    .halfword 2
    .halfword 2
    .halfword 0
    .halfword 2
    .halfword 3
    .halfword 1
    .halfword 69
    .halfword 0
    .halfword 254
    .halfword 0
scr_seq_T27GYM0101_003:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 3
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 1
    .word _029E-.-4
    .halfword 45
    .byte 7
    .halfword 50
    .halfword 26
    .word _edge_offer-.-4
    .halfword 53
    .halfword 97
    .halfword 2
_029E:
    .halfword 190
    .byte 0
    .halfword 45
    .byte 8
    .halfword 50
    .halfword 26
    .word _edge_offer-.-4
    .halfword 53
    .halfword 97
    .halfword 2
scr_seq_T27GYM0101_005:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 3
    .halfword 32780
    .halfword 190
    .byte 0
    .halfword 17
    .halfword 32780
    .halfword 0
    .halfword 28
    .byte 5
    .word _02D3-.-4
    .halfword 45
    .byte 10
    .halfword 22
    .word _02D6-.-4
_02D3:
    .halfword 45
    .byte 11
_02D6:
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2

// asks whether the whole party should be brought right up to its next level
_edge_offer:
    npc_msg 12
    yesno VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _edge_offer_end
    EdgeParty
    npc_msg 13
    wait_button
_edge_offer_end:
    return

.align 4
.close
