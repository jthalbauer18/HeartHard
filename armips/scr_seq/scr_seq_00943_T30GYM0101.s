.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/vars.s"

// Blackthorn Gym, gym guide, text archive to grab from: 631.txt
// expanded from pret/pokeheartgold scr_seq_0943_T30GYM0101.s with pret2armips.py, so the bytes match the original script
// HeartHard: the gym guide offers to edge the whole party after talking (see _edge_offer at the end)

.create "build/a012/2_943", 0

    .word scr_seq_T30GYM0101_000 - . - 4
    .word scr_seq_T30GYM0101_001 - . - 4
    .word scr_seq_T30GYM0101_002 - . - 4
    .word scr_seq_T30GYM0101_003 - . - 4
    .word scr_seq_T30GYM0101_004 - . - 4
    .word scr_seq_T30GYM0101_005 - . - 4
    .halfword 64787
scr_seq_T30GYM0101_001:
    .halfword 329
    .halfword 41
    .halfword 16672
    .halfword 0
    .halfword 142
    .halfword 27
    .halfword 16385
    .halfword 17
    .halfword 16385
    .halfword 0
    .halfword 28
    .byte 5
    .word _010C-.-4
    .halfword 17
    .halfword 16636
    .halfword 2
    .halfword 28
    .byte 4
    .word _0044-.-4
    .halfword 2
_0044:
    .halfword 147
    .halfword 27
    .halfword 16385
    .halfword 17
    .halfword 16385
    .halfword 1
    .halfword 28
    .byte 1
    .word _00BD-.-4
    .halfword 522
    .halfword 16384
    .halfword 17
    .halfword 16384
    .halfword 6
    .halfword 28
    .byte 5
    .word _0072-.-4
    .halfword 30
    .halfword 751
    .halfword 22
    .word _00BB-.-4
_0072:
    .halfword 17
    .halfword 16384
    .halfword 7
    .halfword 28
    .byte 5
    .word _0089-.-4
    .halfword 30
    .halfword 751
    .halfword 22
    .word _00BB-.-4
_0089:
    .halfword 17
    .halfword 16384
    .halfword 8
    .halfword 28
    .byte 5
    .word _00A0-.-4
    .halfword 30
    .halfword 751
    .halfword 22
    .word _00BB-.-4
_00A0:
    .halfword 17
    .halfword 16384
    .halfword 9
    .halfword 28
    .byte 5
    .word _00B7-.-4
    .halfword 30
    .halfword 751
    .halfword 22
    .word _00BB-.-4
_00B7:
    .halfword 31
    .halfword 751
_00BB:
    .halfword 2
_00BD:
    .halfword 522
    .halfword 16384
    .halfword 17
    .halfword 16384
    .halfword 16
    .halfword 28
    .byte 5
    .word _00D8-.-4
    .halfword 30
    .halfword 751
    .halfword 22
    .word _010A-.-4
_00D8:
    .halfword 17
    .halfword 16384
    .halfword 17
    .halfword 28
    .byte 5
    .word _00EF-.-4
    .halfword 30
    .halfword 751
    .halfword 22
    .word _010A-.-4
_00EF:
    .halfword 17
    .halfword 16384
    .halfword 18
    .halfword 28
    .byte 5
    .word _0106-.-4
    .halfword 30
    .halfword 751
    .halfword 22
    .word _010A-.-4
_0106:
    .halfword 31
    .halfword 751
_010A:
    .halfword 2
_010C:
    .halfword 30
    .halfword 751
    .halfword 2
scr_seq_T30GYM0101_000:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 32
    .halfword 234
    .halfword 28
    .byte 1
    .word _018E-.-4
    .halfword 32
    .halfword 209
    .halfword 28
    .byte 1
    .word _017D-.-4
    .halfword 45
    .byte 3
    .halfword 53
    .halfword 213
    .halfword 35
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
    .word _0188-.-4
    .halfword 36
    .halfword 110
    .halfword 36
    .halfword 112
    .halfword 36
    .halfword 111
    .halfword 36
    .halfword 119
    .halfword 36
    .halfword 117
    .halfword 515
    .halfword 22
    .halfword 30
    .halfword 209
    .halfword 30
    .halfword 514
    .halfword 31
    .halfword 515
    .halfword 45
    .byte 4
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_017D:
    .halfword 45
    .byte 5
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_0188:
    .halfword 219
    .halfword 97
    .halfword 2
_018E:
    .halfword 32
    .halfword 218
    .halfword 28
    .byte 1
    .word _01C8-.-4
    .halfword 45
    .byte 6
    .halfword 41
    .halfword 32772
    .halfword 386
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
    .word _01D3-.-4
    .halfword 20
    .halfword 2033
    .halfword 30
    .halfword 218
    .halfword 45
    .byte 7
_01C8:
    .halfword 45
    .byte 9
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_01D3:
    .halfword 45
    .byte 8
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
scr_seq_T30GYM0101_002:
    .halfword 609
    .halfword 96
    .halfword 73
    .halfword 1585
    .halfword 94
    .halfword 255
    .word _0218-.-4
    .halfword 95
    .halfword 174
    .halfword 6
    .halfword 1
    .halfword 0
    .halfword 0
    .halfword 175
    .halfword 176
    .halfword 141
    .halfword 0
    .halfword 8
    .halfword 83
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
_0218:
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
scr_seq_T30GYM0101_003:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 32
    .halfword 209
    .halfword 28
    .byte 1
    .word _0291-.-4
    .halfword 45
    .byte 0
    .halfword 600
    .halfword 783
    .byte 1
    .halfword 607
    .halfword 109
    .halfword 253
    .halfword 56
    .halfword 41
    .halfword 16672
    .halfword 1
    .halfword 50
    .halfword 26
    .word _edge_offer-.-4
    .halfword 53
    .halfword 97
    .halfword 2
_0291:
    .halfword 45
    .byte 1
    .halfword 50
    .halfword 26
    .word _edge_offer-.-4
    .halfword 53
    .halfword 97
    .halfword 2
scr_seq_T30GYM0101_004:
    .halfword 609
    .halfword 96
    .halfword 32
    .halfword 312
    .halfword 28
    .byte 1
    .word _0352-.-4
    .halfword 105
    .halfword 16384
    .halfword 16385
    .halfword 17
    .halfword 16384
    .halfword 12
    .halfword 28
    .byte 5
    .word _02D4-.-4
    .halfword 94
    .halfword 6
    .word _0370-.-4
    .halfword 94
    .halfword 255
    .word _039C-.-4
    .halfword 22
    .word _0307-.-4
_02D4:
    .halfword 17
    .halfword 16384
    .halfword 13
    .halfword 28
    .byte 5
    .word _02F7-.-4
    .halfword 94
    .halfword 6
    .word _0380-.-4
    .halfword 94
    .halfword 255
    .word _03A8-.-4
    .halfword 22
    .word _0307-.-4
_02F7:
    .halfword 94
    .halfword 6
    .word _0390-.-4
    .halfword 94
    .halfword 255
    .word _03B4-.-4
_0307:
    .halfword 95
    .halfword 45
    .byte 2
    .halfword 53
    .halfword 30
    .halfword 312
    .halfword 17
    .halfword 16384
    .halfword 12
    .halfword 28
    .byte 5
    .word _032D-.-4
    .halfword 94
    .halfword 6
    .word _03C0-.-4
    .halfword 22
    .word _0350-.-4
_032D:
    .halfword 17
    .halfword 16384
    .halfword 13
    .halfword 28
    .byte 5
    .word _0348-.-4
    .halfword 94
    .halfword 6
    .word _03CC-.-4
    .halfword 22
    .word _0350-.-4
_0348:
    .halfword 94
    .halfword 6
    .word _03D8-.-4
_0350:
    .halfword 95
_0352:
    .halfword 600
    .halfword 783
    .byte 1
    .halfword 607
    .halfword 109
    .halfword 253
    .halfword 56
    .halfword 41
    .halfword 16672
    .halfword 1
    .halfword 41
    .halfword 16672
    .halfword 1
    .halfword 97
    .halfword 2
    .align 4
_0370:
    .halfword 2
    .halfword 1
    .halfword 75
    .halfword 1
    .halfword 14
    .halfword 2
    .halfword 254
    .halfword 0
    .align 4
_0380:
    .halfword 2
    .halfword 1
    .halfword 75
    .halfword 1
    .halfword 14
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_0390:
    .halfword 2
    .halfword 1
    .halfword 75
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_039C:
    .halfword 63
    .halfword 5
    .halfword 3
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_03A8:
    .halfword 63
    .halfword 4
    .halfword 3
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_03B4:
    .halfword 63
    .halfword 2
    .halfword 3
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_03C0:
    .halfword 15
    .halfword 2
    .halfword 1
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_03CC:
    .halfword 15
    .halfword 1
    .halfword 1
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_03D8:
    .halfword 1
    .halfword 1
    .halfword 254
    .halfword 0
scr_seq_T30GYM0101_005:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 7
    .halfword 32780
    .halfword 190
    .byte 0
    .halfword 17
    .halfword 32780
    .halfword 0
    .halfword 28
    .byte 5
    .word _0407-.-4
    .halfword 45
    .byte 10
    .halfword 22
    .word _040A-.-4
_0407:
    .halfword 45
    .byte 11
_040A:
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
