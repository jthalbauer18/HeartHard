.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/vars.s"

// Goldenrod Gym, gym guide, text archive to grab from: 582.txt
// expanded from pret/pokeheartgold scr_seq_0886_T25GYM0101.s with pret2armips.py, so the bytes match the original script
// HeartHard: the gym guide offers to edge the whole party after talking (see _edge_offer at the end)

.create "build/a012/2_886", 0

    .word scr_seq_T25GYM0101_000 - . - 4
    .word scr_seq_T25GYM0101_001 - . - 4
    .word scr_seq_T25GYM0101_002 - . - 4
    .word scr_seq_T25GYM0101_003 - . - 4
    .word scr_seq_T25GYM0101_004 - . - 4
    .halfword 64787
scr_seq_T25GYM0101_004:
    .halfword 142
    .halfword 17
    .halfword 16385
    .halfword 17
    .halfword 16385
    .halfword 0
    .halfword 28
    .byte 5
    .word _0106-.-4
    .halfword 32
    .halfword 2404
    .halfword 28
    .byte 0
    .word _0100-.-4
    .halfword 147
    .halfword 17
    .halfword 16385
    .halfword 17
    .halfword 16385
    .halfword 1
    .halfword 28
    .byte 1
    .word _00AF-.-4
    .halfword 522
    .halfword 16384
    .halfword 17
    .halfword 16384
    .halfword 12
    .halfword 28
    .byte 5
    .word _0062-.-4
    .halfword 30
    .halfword 748
    .halfword 22
    .word _00AD-.-4
_0062:
    .halfword 17
    .halfword 16384
    .halfword 13
    .halfword 28
    .byte 5
    .word _0079-.-4
    .halfword 30
    .halfword 748
    .halfword 22
    .word _00AD-.-4
_0079:
    .halfword 17
    .halfword 16384
    .halfword 14
    .halfword 28
    .byte 5
    .word _0090-.-4
    .halfword 30
    .halfword 748
    .halfword 22
    .word _00AD-.-4
_0090:
    .halfword 17
    .halfword 16384
    .halfword 15
    .halfword 28
    .byte 5
    .word _00A7-.-4
    .halfword 30
    .halfword 748
    .halfword 22
    .word _00AD-.-4
_00A7:
    .halfword 22
    .word _0100-.-4
_00AD:
    .halfword 2
_00AF:
    .halfword 522
    .halfword 16384
    .halfword 17
    .halfword 16384
    .halfword 18
    .halfword 28
    .byte 5
    .word _00CA-.-4
    .halfword 30
    .halfword 748
    .halfword 22
    .word _00FE-.-4
_00CA:
    .halfword 17
    .halfword 16384
    .halfword 19
    .halfword 28
    .byte 5
    .word _00E1-.-4
    .halfword 30
    .halfword 748
    .halfword 22
    .word _00FE-.-4
_00E1:
    .halfword 17
    .halfword 16384
    .halfword 20
    .halfword 28
    .byte 5
    .word _00F8-.-4
    .halfword 30
    .halfword 748
    .halfword 22
    .word _00FE-.-4
_00F8:
    .halfword 22
    .word _0100-.-4
_00FE:
    .halfword 2
_0100:
    .halfword 31
    .halfword 748
    .halfword 2
_0106:
    .halfword 30
    .halfword 748
    .halfword 2
scr_seq_T25GYM0101_000:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 2
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 1
    .word _0202-.-4
    .halfword 32
    .halfword 183
    .halfword 28
    .byte 1
    .word _01A0-.-4
    .halfword 17
    .halfword 16650
    .halfword 1
    .halfword 28
    .byte 1
    .word _017D-.-4
    .halfword 45
    .byte 0
    .halfword 53
    .halfword 213
    .halfword 30
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
    .word _0218-.-4
    .halfword 36
    .halfword 22
    .halfword 36
    .halfword 71
    .halfword 36
    .halfword 5
    .halfword 36
    .halfword 70
    .halfword 515
    .halfword 22
    .halfword 339
    .halfword 1
    .halfword 13
    .halfword 0
    .halfword 15
    .halfword 0
_017D:
    .halfword 45
    .byte 2
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 41
    .halfword 16650
    .halfword 1
    .halfword 30
    .halfword 132
    .halfword 41
    .halfword 16602
    .halfword 1
    .halfword 31
    .halfword 547
    .halfword 30
    .halfword 548
    .halfword 2
_01A0:
    .halfword 45
    .byte 3
    .halfword 190
    .byte 0
    .halfword 45
    .byte 4
    .halfword 78
    .halfword 1189
    .halfword 79
    .halfword 295
    .halfword 2
    .halfword 41
    .halfword 16650
    .halfword 2
    .halfword 31
    .halfword 132
    .halfword 30
    .halfword 2456
    .halfword 45
    .byte 5
_01C4:
    .halfword 41
    .halfword 32772
    .halfword 372
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
    .word _01F8-.-4
    .halfword 20
    .halfword 2033
    .halfword 45
    .byte 7
    .halfword 50
    .halfword 53
    .halfword 30
    .halfword 133
    .halfword 97
    .halfword 2
_01F8:
    .halfword 20
    .halfword 2009
    .halfword 53
    .halfword 97
    .halfword 2
_0202:
    .halfword 32
    .halfword 133
    .halfword 28
    .byte 0
    .word _01C4-.-4
    .halfword 45
    .byte 8
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_0218:
    .halfword 219
    .halfword 97
    .halfword 2
scr_seq_T25GYM0101_001:
    .halfword 609
    .halfword 96
    .halfword 94
    .halfword 1
    .word _0260-.-4
    .halfword 95
    .halfword 45
    .byte 9
    .halfword 53
    .halfword 602
    .halfword 0
    .halfword 603
    .halfword 604
    .halfword 55
    .halfword 94
    .halfword 1
    .word _026C-.-4
    .halfword 94
    .halfword 255
    .word _0278-.-4
    .halfword 95
    .halfword 603
    .halfword 602
    .halfword 1
    .halfword 604
    .halfword 48
    .halfword 30
    .halfword 183
    .halfword 97
    .halfword 2
    .align 4
_0260:
    .halfword 75
    .halfword 1
    .halfword 12
    .halfword 3
    .halfword 254
    .halfword 0
    .align 4
_026C:
    .halfword 13
    .halfword 3
    .halfword 32
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_0278:
    .halfword 63
    .halfword 1
    .halfword 12
    .halfword 1
    .halfword 254
    .halfword 0
scr_seq_T25GYM0101_002:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 2
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 1
    .word _02AA-.-4
    .halfword 45
    .byte 10
    .halfword 50
    .halfword 26
    .word _edge_offer-.-4
    .halfword 53
    .halfword 97
    .halfword 2
_02AA:
    .halfword 45
    .byte 11
    .halfword 50
    .halfword 26
    .word _edge_offer-.-4
    .halfword 53
    .halfword 97
    .halfword 2
scr_seq_T25GYM0101_003:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 2
    .halfword 32780
    .halfword 190
    .byte 0
    .halfword 17
    .halfword 32780
    .halfword 0
    .halfword 28
    .byte 5
    .word _02DC-.-4
    .halfword 45
    .byte 12
    .halfword 22
    .word _02DF-.-4
_02DC:
    .halfword 45
    .byte 13
_02DF:
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2

// asks whether the whole party should be brought right up to its next level
_edge_offer:
    npc_msg 14
    yesno VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _edge_offer_end
    EdgeParty
    npc_msg 15
    wait_button
_edge_offer_end:
    return

.align 4
.close
