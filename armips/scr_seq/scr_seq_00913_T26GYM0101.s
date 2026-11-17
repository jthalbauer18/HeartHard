.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/vars.s"

// Olivine Gym, gym guide, text archive to grab from: 606.txt
// expanded from pret/pokeheartgold scr_seq_0913_T26GYM0101.s with pret2armips.py, so the bytes match the original script
// HeartHard: the gym guide offers to edge the whole party after talking (see _edge_offer at the end)

.create "build/a012/2_913", 0

    .word scr_seq_T26GYM0101_000 - . - 4
    .word scr_seq_T26GYM0101_001 - . - 4
    .word scr_seq_T26GYM0101_002 - . - 4
    .word scr_seq_T26GYM0101_003 - . - 4
    .word scr_seq_T26GYM0101_004 - . - 4
    .word scr_seq_T26GYM0101_005 - . - 4
    .word scr_seq_T26GYM0101_006 - . - 4
    .word scr_seq_T26GYM0101_007 - . - 4
    .halfword 64787
scr_seq_T26GYM0101_007:
    .halfword 142
    .halfword 38
    .halfword 16385
    .halfword 17
    .halfword 16385
    .halfword 0
    .halfword 28
    .byte 5
    .word _015C-.-4
    .halfword 32
    .halfword 2404
    .halfword 28
    .byte 0
    .word _015A-.-4
    .halfword 31
    .halfword 473
    .halfword 147
    .halfword 38
    .halfword 16385
    .halfword 17
    .halfword 16385
    .halfword 1
    .halfword 28
    .byte 1
    .word _007A-.-4
    .halfword 522
    .halfword 16384
    .halfword 17
    .halfword 16384
    .halfword 13
    .halfword 28
    .byte 5
    .word _0072-.-4
    .halfword 30
    .halfword 473
    .halfword 22
    .word _0078-.-4
_0072:
    .halfword 22
    .word _009D-.-4
_0078:
    .halfword 2
_007A:
    .halfword 522
    .halfword 16384
    .halfword 17
    .halfword 16384
    .halfword 12
    .halfword 28
    .byte 5
    .word _0095-.-4
    .halfword 30
    .halfword 473
    .halfword 22
    .word _009B-.-4
_0095:
    .halfword 22
    .word _009D-.-4
_009B:
    .halfword 2
_009D:
    .halfword 147
    .halfword 28
    .halfword 16385
    .halfword 17
    .halfword 16385
    .halfword 1
    .halfword 28
    .byte 1
    .word _015A-.-4
    .halfword 294
    .halfword 15
    .halfword 16386
    .halfword 17
    .halfword 16386
    .halfword 1
    .halfword 28
    .byte 1
    .word _00CB-.-4
    .halfword 22
    .word _015A-.-4
    .halfword 2
_00CB:
    .halfword 484
    .halfword 16384
    .halfword 17
    .halfword 16384
    .halfword 6
    .halfword 28
    .byte 5
    .word _00E8-.-4
    .halfword 22
    .word _0109-.-4
_00E2:
    .halfword 22
    .word _0107-.-4
_00E8:
    .halfword 17
    .halfword 16384
    .halfword 0
    .halfword 28
    .byte 5
    .word _0101-.-4
    .halfword 22
    .word _0109-.-4
_00FB:
    .halfword 22
    .word _0107-.-4
_0101:
    .halfword 22
    .word _015A-.-4
_0107:
    .halfword 2
_0109:
    .halfword 522
    .halfword 16384
    .halfword 17
    .halfword 16384
    .halfword 14
    .halfword 28
    .byte 5
    .word _0124-.-4
    .halfword 30
    .halfword 473
    .halfword 22
    .word _0158-.-4
_0124:
    .halfword 17
    .halfword 16384
    .halfword 15
    .halfword 28
    .byte 5
    .word _013B-.-4
    .halfword 30
    .halfword 473
    .halfword 22
    .word _0158-.-4
_013B:
    .halfword 17
    .halfword 16384
    .halfword 16
    .halfword 28
    .byte 5
    .word _0152-.-4
    .halfword 30
    .halfword 473
    .halfword 22
    .word _0158-.-4
_0152:
    .halfword 22
    .word _015A-.-4
_0158:
    .halfword 2
_015A:
    .halfword 2
_015C:
    .halfword 30
    .halfword 473
    .halfword 2
scr_seq_T26GYM0101_000:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 5
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 1
    .word _020C-.-4
    .halfword 45
    .byte 0
    .halfword 53
    .halfword 213
    .halfword 33
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
    .word _0235-.-4
    .halfword 45
    .byte 1
    .halfword 190
    .byte 0
    .halfword 45
    .byte 2
    .halfword 78
    .halfword 1189
    .halfword 79
    .halfword 295
    .halfword 5
    .halfword 39
    .halfword 16692
    .halfword 1
    .halfword 515
    .halfword 22
    .halfword 17
    .halfword 16692
    .halfword 3
    .halfword 28
    .byte 5
    .word _01CB-.-4
    .halfword 41
    .halfword 16503
    .halfword 1
_01CB:
    .halfword 45
    .byte 3
_01CE:
    .halfword 41
    .halfword 32772
    .halfword 350
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
    .word _0202-.-4
    .halfword 20
    .halfword 2033
    .halfword 45
    .byte 5
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 30
    .halfword 194
    .halfword 2
_0202:
    .halfword 20
    .halfword 2009
    .halfword 53
    .halfword 97
    .halfword 2
_020C:
    .halfword 32
    .halfword 194
    .halfword 28
    .byte 0
    .word _01CE-.-4
    .halfword 147
    .halfword 38
    .halfword 16385
    .halfword 17
    .halfword 16385
    .halfword 1
    .halfword 28
    .byte 1
    .word _023B-.-4
    .halfword 45
    .byte 6
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_0235:
    .halfword 219
    .halfword 97
    .halfword 2
_023B:
    .halfword 32
    .halfword 358
    .halfword 28
    .byte 1
    .word _036F-.-4
    .halfword 17
    .halfword 16384
    .halfword 77
    .halfword 28
    .byte 1
    .word _0264-.-4
    .halfword 41
    .halfword 16384
    .halfword 77
    .halfword 45
    .byte 7
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_0264:
    .halfword 45
    .byte 8
    .halfword 746
    .halfword 748
    .halfword 32780
    .halfword 747
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 1
    .word _034B-.-4
    .halfword 45
    .byte 9
    .halfword 53
    .halfword 174
    .halfword 6
    .halfword 1
    .halfword 0
    .halfword 0
    .halfword 175
    .halfword 566
    .halfword 351
    .halfword 32780
    .halfword 150
    .halfword 174
    .halfword 6
    .halfword 1
    .halfword 1
    .halfword 0
    .halfword 175
    .halfword 17
    .halfword 32780
    .halfword 255
    .halfword 28
    .byte 1
    .word _034B-.-4
    .halfword 42
    .halfword 32772
    .halfword 32780
    .halfword 354
    .halfword 32772
    .halfword 16387
    .halfword 827
    .halfword 32772
    .halfword 16388
    .halfword 17
    .halfword 16387
    .halfword 0
    .halfword 28
    .byte 1
    .word _0356-.-4
    .halfword 17
    .halfword 16388
    .halfword 0
    .halfword 28
    .byte 1
    .word _030E-.-4
    .halfword 17
    .halfword 16387
    .halfword 487
    .halfword 28
    .byte 1
    .word _0364-.-4
    .halfword 17
    .halfword 16387
    .halfword 492
    .halfword 28
    .byte 1
    .word _0364-.-4
    .halfword 17
    .halfword 16387
    .halfword 172
    .halfword 28
    .byte 1
    .word _0364-.-4
    .halfword 17
    .halfword 16387
    .halfword 479
    .halfword 28
    .byte 1
    .word _0364-.-4
_030E:
    .halfword 199
    .byte 1
    .halfword 32772
    .halfword 45
    .byte 13
    .halfword 746
    .halfword 748
    .halfword 32780
    .halfword 747
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 1
    .word _034B-.-4
    .halfword 53
    .halfword 470
    .byte 5
    .halfword 473
    .halfword 32772
    .halfword 474
    .halfword 30
    .halfword 358
    .halfword 41
    .halfword 16384
    .halfword 55
    .halfword 45
    .byte 11
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_034B:
    .halfword 45
    .byte 10
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_0356:
    .halfword 190
    .byte 0
    .halfword 45
    .byte 14
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_0364:
    .halfword 45
    .byte 15
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_036F:
    .halfword 17
    .halfword 16384
    .halfword 55
    .halfword 28
    .byte 5
    .word _0385-.-4
    .halfword 45
    .byte 11
    .halfword 22
    .word _0388-.-4
_0385:
    .halfword 45
    .byte 12
_0388:
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
scr_seq_T26GYM0101_001:
    .halfword 609
    .halfword 96
    .halfword 94
    .halfword 2
    .word _040C-.-4
    .halfword 95
    .halfword 105
    .halfword 16384
    .halfword 16385
    .halfword 17
    .halfword 16384
    .halfword 5
    .halfword 28
    .byte 5
    .word _03BF-.-4
    .halfword 94
    .halfword 2
    .word _0414-.-4
    .halfword 22
    .word _03E2-.-4
_03BF:
    .halfword 17
    .halfword 16384
    .halfword 6
    .halfword 28
    .byte 5
    .word _03DA-.-4
    .halfword 94
    .halfword 2
    .word _041C-.-4
    .halfword 22
    .word _03E2-.-4
_03DA:
    .halfword 94
    .halfword 2
    .word _0424-.-4
_03E2:
    .halfword 94
    .halfword 255
    .word _042C-.-4
    .halfword 95
    .halfword 45
    .byte 19
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 17
    .halfword 16654
    .halfword 1
    .halfword 28
    .byte 5
    .word _0408-.-4
    .halfword 41
    .halfword 16654
    .halfword 2
_0408:
    .halfword 2
    .align 4
_040C:
    .halfword 75
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_0414:
    .halfword 15
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_041C:
    .halfword 15
    .halfword 2
    .halfword 254
    .halfword 0
    .align 4
_0424:
    .halfword 15
    .halfword 3
    .halfword 254
    .halfword 0
    .align 4
_042C:
    .halfword 34
    .halfword 1
    .halfword 254
    .halfword 0
    .align 4
_0434:
    .halfword 35
    .halfword 1
    .halfword 254
    .halfword 0
scr_seq_T26GYM0101_002:
    .halfword 609
    .halfword 96
    .halfword 94
    .halfword 1
    .word _040C-.-4
    .halfword 95
    .halfword 105
    .halfword 16384
    .halfword 16385
    .halfword 17
    .halfword 16384
    .halfword 5
    .halfword 28
    .byte 5
    .word _046B-.-4
    .halfword 94
    .halfword 1
    .word _04B8-.-4
    .halfword 22
    .word _048E-.-4
_046B:
    .halfword 17
    .halfword 16384
    .halfword 6
    .halfword 28
    .byte 5
    .word _0486-.-4
    .halfword 94
    .halfword 1
    .word _04C0-.-4
    .halfword 22
    .word _048E-.-4
_0486:
    .halfword 94
    .halfword 1
    .word _04C8-.-4
_048E:
    .halfword 94
    .halfword 255
    .word _0434-.-4
    .halfword 95
    .halfword 45
    .byte 21
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 17
    .halfword 16654
    .halfword 2
    .halfword 28
    .byte 5
    .word _04B4-.-4
    .halfword 41
    .halfword 16654
    .halfword 3
_04B4:
    .halfword 2
    .align 4
_04B8:
    .halfword 14
    .halfword 3
    .halfword 254
    .halfword 0
    .align 4
_04C0:
    .halfword 14
    .halfword 2
    .halfword 254
    .halfword 0
    .align 4
_04C8:
    .halfword 14
    .halfword 1
    .halfword 254
    .halfword 0
scr_seq_T26GYM0101_003:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 5
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 5
    .word _04F4-.-4
    .halfword 45
    .byte 20
    .halfword 22
    .word _04F7-.-4
_04F4:
    .halfword 45
    .byte 19
_04F7:
    .halfword 50
    .halfword 26
    .word _edge_offer-.-4
    .halfword 53
    .halfword 97
    .halfword 17
    .halfword 16654
    .halfword 1
    .halfword 28
    .byte 5
    .word _0510-.-4
    .halfword 41
    .halfword 16654
    .halfword 2
_0510:
    .halfword 2
scr_seq_T26GYM0101_004:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 5
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 5
    .word _0536-.-4
    .halfword 45
    .byte 22
    .halfword 22
    .word _0539-.-4
_0536:
    .halfword 45
    .byte 21
_0539:
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 17
    .halfword 16654
    .halfword 2
    .halfword 28
    .byte 5
    .word _0552-.-4
    .halfword 41
    .halfword 16654
    .halfword 3
_0552:
    .halfword 2
scr_seq_T26GYM0101_005:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 5
    .halfword 32780
    .halfword 17
    .halfword 32780
    .halfword 1
    .halfword 28
    .byte 1
    .word _0590-.-4
    .halfword 17
    .halfword 16654
    .halfword 0
    .halfword 28
    .byte 5
    .word _0585-.-4
    .halfword 45
    .byte 16
    .halfword 22
    .word _0588-.-4
_0585:
    .halfword 45
    .byte 17
_0588:
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
_0590:
    .halfword 45
    .byte 18
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2
scr_seq_T26GYM0101_006:
    .halfword 73
    .halfword 1500
    .halfword 96
    .halfword 104
    .halfword 294
    .halfword 5
    .halfword 32780
    .halfword 190
    .byte 0
    .halfword 17
    .halfword 32780
    .halfword 0
    .halfword 28
    .byte 5
    .word _05C2-.-4
    .halfword 45
    .byte 23
    .halfword 22
    .word _05C5-.-4
_05C2:
    .halfword 45
    .byte 24
_05C5:
    .halfword 50
    .halfword 53
    .halfword 97
    .halfword 2

// asks whether the whole party should be brought right up to its next level
_edge_offer:
    npc_msg 25
    yesno VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _edge_offer_end
    EdgeParty
    npc_msg 26
    wait_button
_edge_offer_end:
    return

.align 4
.close
