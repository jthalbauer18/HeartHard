.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/vars.s"
.include "armips/include/soundeffects.s"

.include "asm/include/items.inc"

// Item balls on the overworld, text archive to grab from: 199.txt
// ported from pret/pokeheartgold scr_seq_0141.s
// HeartHard: healing items, X items, repels, vitamins and rare candies in Johto are swapped for
// evolution items, berries and poke balls, the comment behind an entry names the original item


.create "build/a012/2_141", 0

scrdef scr_seq_0141_000
scrdef scr_seq_0141_001
scrdef scr_seq_0141_002
scrdef scr_seq_0141_003
scrdef scr_seq_0141_004
scrdef scr_seq_0141_005
scrdef scr_seq_0141_006
scrdef scr_seq_0141_007
scrdef scr_seq_0141_008
scrdef scr_seq_0141_009
scrdef scr_seq_0141_010
scrdef scr_seq_0141_011
scrdef scr_seq_0141_012
scrdef scr_seq_0141_013
scrdef scr_seq_0141_014
scrdef scr_seq_0141_015
scrdef scr_seq_0141_016
scrdef scr_seq_0141_017
scrdef scr_seq_0141_018
scrdef scr_seq_0141_019
scrdef scr_seq_0141_020
scrdef scr_seq_0141_021
scrdef scr_seq_0141_022
scrdef scr_seq_0141_023
scrdef scr_seq_0141_024
scrdef scr_seq_0141_025
scrdef scr_seq_0141_026
scrdef scr_seq_0141_027
scrdef scr_seq_0141_028
scrdef scr_seq_0141_029
scrdef scr_seq_0141_030
scrdef scr_seq_0141_031
scrdef scr_seq_0141_032
scrdef scr_seq_0141_033
scrdef scr_seq_0141_034
scrdef scr_seq_0141_035
scrdef scr_seq_0141_036
scrdef scr_seq_0141_037
scrdef scr_seq_0141_038
scrdef scr_seq_0141_039
scrdef scr_seq_0141_040
scrdef scr_seq_0141_041
scrdef scr_seq_0141_042
scrdef scr_seq_0141_043
scrdef scr_seq_0141_044
scrdef scr_seq_0141_045
scrdef scr_seq_0141_046
scrdef scr_seq_0141_047
scrdef scr_seq_0141_048
scrdef scr_seq_0141_049
scrdef scr_seq_0141_050
scrdef scr_seq_0141_051
scrdef scr_seq_0141_052
scrdef scr_seq_0141_053
scrdef scr_seq_0141_054
scrdef scr_seq_0141_055
scrdef scr_seq_0141_056
scrdef scr_seq_0141_057
scrdef scr_seq_0141_058
scrdef scr_seq_0141_059
scrdef scr_seq_0141_060
scrdef scr_seq_0141_061
scrdef scr_seq_0141_062
scrdef scr_seq_0141_063
scrdef scr_seq_0141_064
scrdef scr_seq_0141_065
scrdef scr_seq_0141_066
scrdef scr_seq_0141_067
scrdef scr_seq_0141_068
scrdef scr_seq_0141_069
scrdef scr_seq_0141_070
scrdef scr_seq_0141_071
scrdef scr_seq_0141_072
scrdef scr_seq_0141_073
scrdef scr_seq_0141_074
scrdef scr_seq_0141_075
scrdef scr_seq_0141_076
scrdef scr_seq_0141_077
scrdef scr_seq_0141_078
scrdef scr_seq_0141_079
scrdef scr_seq_0141_080
scrdef scr_seq_0141_081
scrdef scr_seq_0141_082
scrdef scr_seq_0141_083
scrdef scr_seq_0141_084
scrdef scr_seq_0141_085
scrdef scr_seq_0141_086
scrdef scr_seq_0141_087
scrdef scr_seq_0141_088
scrdef scr_seq_0141_089
scrdef scr_seq_0141_090
scrdef scr_seq_0141_091
scrdef scr_seq_0141_092
scrdef scr_seq_0141_093
scrdef scr_seq_0141_094
scrdef scr_seq_0141_095
scrdef scr_seq_0141_096
scrdef scr_seq_0141_097
scrdef scr_seq_0141_098
scrdef scr_seq_0141_099
scrdef scr_seq_0141_100
scrdef scr_seq_0141_101
scrdef scr_seq_0141_102
scrdef scr_seq_0141_103
scrdef scr_seq_0141_104
scrdef scr_seq_0141_105
scrdef scr_seq_0141_106
scrdef scr_seq_0141_107
scrdef scr_seq_0141_108
scrdef scr_seq_0141_109
scrdef scr_seq_0141_110
scrdef scr_seq_0141_111
scrdef scr_seq_0141_112
scrdef scr_seq_0141_113
scrdef scr_seq_0141_114
scrdef scr_seq_0141_115
scrdef scr_seq_0141_116
scrdef scr_seq_0141_117
scrdef scr_seq_0141_118
scrdef scr_seq_0141_119
scrdef scr_seq_0141_120
scrdef scr_seq_0141_121
scrdef scr_seq_0141_122
scrdef scr_seq_0141_123
scrdef scr_seq_0141_124
scrdef scr_seq_0141_125
scrdef scr_seq_0141_126
scrdef scr_seq_0141_127
scrdef scr_seq_0141_128
scrdef scr_seq_0141_129
scrdef scr_seq_0141_130
scrdef scr_seq_0141_131
scrdef scr_seq_0141_132
scrdef scr_seq_0141_133
scrdef scr_seq_0141_134
scrdef scr_seq_0141_135
scrdef scr_seq_0141_136
scrdef scr_seq_0141_137
scrdef scr_seq_0141_138
scrdef scr_seq_0141_139
scrdef scr_seq_0141_140
scrdef scr_seq_0141_141
scrdef scr_seq_0141_142
scrdef scr_seq_0141_143
scrdef scr_seq_0141_144
scrdef scr_seq_0141_145
scrdef scr_seq_0141_146
scrdef scr_seq_0141_147
scrdef scr_seq_0141_148
scrdef scr_seq_0141_149
scrdef scr_seq_0141_150
scrdef scr_seq_0141_151
scrdef scr_seq_0141_152
scrdef scr_seq_0141_153
scrdef scr_seq_0141_154
scrdef scr_seq_0141_155
scrdef scr_seq_0141_156
scrdef scr_seq_0141_157
scrdef scr_seq_0141_158
scrdef scr_seq_0141_159
scrdef scr_seq_0141_160
scrdef scr_seq_0141_161
scrdef scr_seq_0141_162
scrdef scr_seq_0141_163
scrdef scr_seq_0141_164
scrdef scr_seq_0141_165
scrdef scr_seq_0141_166
scrdef scr_seq_0141_167
scrdef scr_seq_0141_168
scrdef scr_seq_0141_169
scrdef scr_seq_0141_170
scrdef scr_seq_0141_171
scrdef scr_seq_0141_172
scrdef scr_seq_0141_173
scrdef scr_seq_0141_174
scrdef scr_seq_0141_175
scrdef scr_seq_0141_176
scrdef scr_seq_0141_177
scrdef scr_seq_0141_178
scrdef scr_seq_0141_179
scrdef scr_seq_0141_180
scrdef scr_seq_0141_181
scrdef scr_seq_0141_182
scrdef scr_seq_0141_183
scrdef scr_seq_0141_184
scrdef scr_seq_0141_185
scrdef scr_seq_0141_186
scrdef scr_seq_0141_187
scrdef scr_seq_0141_188
scrdef scr_seq_0141_189
scrdef scr_seq_0141_190
scrdef scr_seq_0141_191
scrdef scr_seq_0141_192
scrdef scr_seq_0141_193
scrdef scr_seq_0141_194
scrdef scr_seq_0141_195
scrdef scr_seq_0141_196
scrdef scr_seq_0141_197
scrdef scr_seq_0141_198
scrdef scr_seq_0141_199
scrdef scr_seq_0141_200
scrdef scr_seq_0141_201
scrdef scr_seq_0141_202
scrdef scr_seq_0141_203
scrdef scr_seq_0141_204
scrdef scr_seq_0141_205
scrdef scr_seq_0141_206
scrdef scr_seq_0141_207
scrdef scr_seq_0141_208
scrdef scr_seq_0141_209
scrdef scr_seq_0141_210
scrdef scr_seq_0141_211
scrdef scr_seq_0141_212
scrdef scr_seq_0141_213
scrdef scr_seq_0141_214
scrdef scr_seq_0141_215
scrdef scr_seq_0141_216
scrdef scr_seq_0141_217
scrdef scr_seq_0141_218
scrdef scr_seq_0141_219
scrdef scr_seq_0141_220
scrdef scr_seq_0141_221
scrdef scr_seq_0141_222
scrdef scr_seq_0141_223
scrdef scr_seq_0141_224
scrdef scr_seq_0141_225
scrdef scr_seq_0141_226
scrdef scr_seq_0141_227
scrdef scr_seq_0141_228
scrdef scr_seq_0141_229
scrdef scr_seq_0141_230
scrdef scr_seq_0141_231
scrdef scr_seq_0141_232
scrdef scr_seq_0141_233
scrdef scr_seq_0141_234
scrdef scr_seq_0141_235
scrdef scr_seq_0141_236
scrdef scr_seq_0141_237
scrdef scr_seq_0141_238
scrdef scr_seq_0141_239
scrdef scr_seq_0141_240
scrdef scr_seq_0141_241
scrdef scr_seq_0141_242
scrdef scr_seq_0141_243
scrdef scr_seq_0141_244
scrdef scr_seq_0141_245
scrdef scr_seq_0141_246
scrdef scr_seq_0141_247
scrdef scr_seq_0141_248
scrdef scr_seq_0141_249
scrdef scr_seq_0141_250
scrdef scr_seq_0141_251
scrdef scr_seq_0141_252
scrdef scr_seq_0141_253
scrdef scr_seq_0141_254
scrdef scr_seq_0141_255
scrdef_end

scr_seq_0141_000: // r29_potion (was POTION)
    setvar VAR_SPECIAL_x8008, ITEM_POKE_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_001: // r30_antidote (was ANTIDOTE)
    setvar VAR_SPECIAL_x8008, ITEM_PERSIM_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_002: // r30_potion (was POTION)
    setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_003: // r31_potion (was POTION)
    setvar VAR_SPECIAL_x8008, ITEM_ORAN_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_004: // r31_poke_ball
    setvar VAR_SPECIAL_x8008, ITEM_POKE_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_005: // t22_rare_candy (was RARE_CANDY)
    setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_006: // t22_pp_up
    setvar VAR_SPECIAL_x8008, ITEM_PP_UP
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_007: // d15r0101_parlyz_heal (was PARALYZE_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_ASPEAR_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_008: // d15r0102_x_accuracy (was X_ACCURACY)
    setvar VAR_SPECIAL_x8008, ITEM_POKE_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_009: // d15r0103_potion (was POTION)
    setvar VAR_SPECIAL_x8008, ITEM_ORAN_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_010: // d15r0103_escape_rope (was ESCAPE_ROPE)
    setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_011: // d24r0101_potion (was POTION)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_012: // d24r0101_hyper_potion (was HYPER_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_RAWST_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_013: // d24r0212_heal_powder (was HEAL_POWDER)
    setvar VAR_SPECIAL_x8008, ITEM_LEPPA_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_014: // d24r0212_energypowder (was ENERGY_POWDER)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_015: // d24r0212_oran_berry (was ORAN_BERRY)
    setvar VAR_SPECIAL_x8008, ITEM_NET_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_016: // d24r0212_pecha_berry (was PECHA_BERRY)
    setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_017: // d24r0213_heal_powder (was HEAL_POWDER)
    setvar VAR_SPECIAL_x8008, ITEM_OCCA_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_018: // d24r0213_energy_root (was ENERGY_ROOT)
    setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_019: // d24r0213_sitrus_berry (was SITRUS_BERRY)
    setvar VAR_SPECIAL_x8008, ITEM_CHERI_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_020: // d24r0213_moon_stone
    setvar VAR_SPECIAL_x8008, ITEM_MOON_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_021: // d24r0215_stardust
    setvar VAR_SPECIAL_x8008, ITEM_STARDUST
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_022: // d24r0215_star_piece
    setvar VAR_SPECIAL_x8008, ITEM_STAR_PIECE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_023: // d24r0215_leppa_berry (was LEPPA_BERRY)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_024: // d24r0215_mystic_water
    setvar VAR_SPECIAL_x8008, ITEM_MYSTIC_WATER
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_025: // d24r0214_revival_herb (was REVIVAL_HERB)
    setvar VAR_SPECIAL_x8008, ITEM_PECHA_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_026: // d24r0214_charcoal
    setvar VAR_SPECIAL_x8008, ITEM_CHARCOAL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_027: // d24r0214_life_orb
    setvar VAR_SPECIAL_x8008, ITEM_LIFE_ORB
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_028: // d24r0214_leppa_berry (was LEPPA_BERRY)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_029: // r32_repel (was REPEL)
    setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_030: // r32_great_ball
    setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_031: // r32_tm09
    setvar VAR_SPECIAL_x8008, ITEM_TM09
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_032: // r32_shell_bell
    setvar VAR_SPECIAL_x8008, ITEM_SHELL_BELL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_033: // d25r0101_x_attack (was X_ATTACK)
    setvar VAR_SPECIAL_x8008, ITEM_NET_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_034: // d25r0101_great_ball
    setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_035: // d25r0101_potion (was POTION)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_036: // d25r0101_awakening (was AWAKENING)
    setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_037: // d25r0102_x_defense (was X_DEFENSE)
    setvar VAR_SPECIAL_x8008, ITEM_NET_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_038: // d25r0102_tm39
    setvar VAR_SPECIAL_x8008, ITEM_TM39
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_039: // d25r0103_elixir (was ELIXIR)
    setvar VAR_SPECIAL_x8008, ITEM_SITRUS_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_040: // d25r0103_hyper_potion (was HYPER_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_ORAN_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_041: // d26r0102_super_potion (was SUPER_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_GREAT_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_042: // d26r0103_tm18
    setvar VAR_SPECIAL_x8008, ITEM_TM18
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_043: // d36r0101_revive (was REVIVE)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_044: // d36r0101_x_attack (was X_ATTACK)
    setvar VAR_SPECIAL_x8008, ITEM_FIRE_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_045: // d36r0101_antidote (was ANTIDOTE)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_046: // d36r0101_ether (was ETHER)
    setvar VAR_SPECIAL_x8008, ITEM_WACAN_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_047: // r34_nugget
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_048: // r34_tm63
    setvar VAR_SPECIAL_x8008, ITEM_TM63
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_049: // d37r0105_tm82
    setvar VAR_SPECIAL_x8008, ITEM_TM82
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_050: // d37r0105_max_ether (was MAX_ETHER)
    setvar VAR_SPECIAL_x8008, ITEM_LINKING_CORD
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_051: // d37r0105_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_052: // d37r0103_burn_heal (was BURN_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_SITRUS_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_053: // d37r0103_amulet_coin
    setvar VAR_SPECIAL_x8008, ITEM_AMULET_COIN
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_054: // d37r0103_ether (was ETHER)
    setvar VAR_SPECIAL_x8008, ITEM_EVERSTONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_055: // d37r0103_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_056: // d37r0104_full_heal (was FULL_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_RINDO_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_057: // d37r0104_smoke_ball
    setvar VAR_SPECIAL_x8008, ITEM_SMOKE_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_058: // d37r0102_coin_case
    setvar VAR_SPECIAL_x8008, ITEM_COIN_CASE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_059: // t25r1101_tm78
    setvar VAR_SPECIAL_x8008, ITEM_TM78
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_060: // d23r0104_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_061: // r35_tm66
    setvar VAR_SPECIAL_x8008, ITEM_TM66
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_062: // r35_parlyz_heal (was PARALYZE_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_ASPEAR_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_063: // d22r0101_soothe_bell
    setvar VAR_SPECIAL_x8008, ITEM_SOOTHE_BELL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_064: // d22r0101_tm28
    setvar VAR_SPECIAL_x8008, ITEM_TM28
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_065: // d22r0101_shiny_stone
    setvar VAR_SPECIAL_x8008, ITEM_SHINY_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_066: // r36_hyper_potion (was HYPER_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_LEAF_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_067: // d18r0101_antidote (was ANTIDOTE)
    setvar VAR_SPECIAL_x8008, ITEM_SHUCA_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_068: // d18r0101_hp_up (was HP_UP)
    setvar VAR_SPECIAL_x8008, ITEM_KEBIA_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_069: // d18r0102_tm12
    setvar VAR_SPECIAL_x8008, ITEM_TM12
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_070: // d17r0103_full_heal (was FULL_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_TANGA_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_071: // d17r0104_escape_rope (was ESCAPE_ROPE)
    setvar VAR_SPECIAL_x8008, ITEM_DEEP_SEA_TOOTH
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_072: // d17r0104_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_073: // d17r0104_pp_up
    setvar VAR_SPECIAL_x8008, ITEM_PP_UP
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_074: // d17r0105_rare_candy (was RARE_CANDY)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_075: // d17r0106_max_potion (was MAX_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_076: // d17r0106_full_heal (was FULL_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_077: // d17r0107_max_revive (was MAX_REVIVE)
    setvar VAR_SPECIAL_x8008, ITEM_LIECHI_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_078: // d17r0108_full_restore (was FULL_RESTORE)
    setvar VAR_SPECIAL_x8008, ITEM_UP_GRADE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_079: // d17r0108_max_elixir (was MAX_ELIXIR)
    setvar VAR_SPECIAL_x8008, ITEM_ELECTIRIZER
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_080: // d17r0108_nugget
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_081: // d17r0109_hp_up (was HP_UP)
    setvar VAR_SPECIAL_x8008, ITEM_LEAF_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_082: // r38_max_potion (was MAX_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_COBA_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_083: // r38_lax_incense
    setvar VAR_SPECIAL_x8008, ITEM_LAX_INCENSE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_084: // r39_tm60
    setvar VAR_SPECIAL_x8008, ITEM_TM60
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_085: // t26_tm57
    setvar VAR_SPECIAL_x8008, ITEM_TM57
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_086: // d27r0103_rare_candy (was RARE_CANDY)
    setvar VAR_SPECIAL_x8008, ITEM_REAPER_CLOTH
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_087: // d27r0104_ether (was ETHER)
    setvar VAR_SPECIAL_x8008, ITEM_LUM_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_088: // d27r0105_tm87
    setvar VAR_SPECIAL_x8008, ITEM_TM87
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_089: // d27r0106_super_repel (was SUPER_REPEL)
    setvar VAR_SPECIAL_x8008, ITEM_SITRUS_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_090: // d27r0107_super_potion (was SUPER_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_OVAL_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_091: // w40_tm88
    setvar VAR_SPECIAL_x8008, ITEM_TM88
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_092: // d40r0101_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_093: // d40r0101_ultra_ball_2
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_094: // d40r0102_escape_rope (was ESCAPE_ROPE)
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_095: // d40r0102_carbos (was CARBOS)
    setvar VAR_SPECIAL_x8008, ITEM_RAZOR_FANG
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_096: // d40r0102_full_restore (was FULL_RESTORE)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_097: // d40r0102_nugget
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_098: // d40r0102_calcium (was CALCIUM)
    setvar VAR_SPECIAL_x8008, ITEM_PETAYA_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_099: // d40r0104_max_revive (was MAX_REVIVE)
    setvar VAR_SPECIAL_x8008, ITEM_SACHET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_100: // d40r0104_full_restore (was FULL_RESTORE)
    setvar VAR_SPECIAL_x8008, ITEM_DEEP_SEA_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_101: // d40r0104_max_elixir (was MAX_ELIXIR)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_102: // d40r0106_rare_candy (was RARE_CANDY)
    setvar VAR_SPECIAL_x8008, ITEM_MAGMARIZER
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_103: // r47_revive (was REVIVE)
    setvar VAR_SPECIAL_x8008, ITEM_WATER_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_104: // r47_lagging_tail
    setvar VAR_SPECIAL_x8008, ITEM_LAGGING_TAIL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_105: // r47_wave_incense
    setvar VAR_SPECIAL_x8008, ITEM_WAVE_INCENSE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_106: // r47_white_flute (was WHITE_FLUTE)
    setvar VAR_SPECIAL_x8008, ITEM_COLBUR_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_107: // r48_nugget
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_108: // r42_super_potion (was SUPER_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_PRISM_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_109: // r42_dubious_disc
    setvar VAR_SPECIAL_x8008, ITEM_DUBIOUS_DISC
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_110: // r42_tm65
    setvar VAR_SPECIAL_x8008, ITEM_TM65
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_111: // d38r0101_ether (was ETHER)
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_112: // d38r0101_revive (was REVIVE)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_113: // d38r0102_escape_rope (was ESCAPE_ROPE)
    setvar VAR_SPECIAL_x8008, ITEM_KASIB_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_114: // d38r0102_nugget
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_115: // d38r0102_iron_ball
    setvar VAR_SPECIAL_x8008, ITEM_IRON_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_116: // d38r0102_max_potion (was MAX_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_CHILAN_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_117: // d38r0102_iron (was IRON)
    setvar VAR_SPECIAL_x8008, ITEM_TIMER_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_118: // d38r0102_max_revive (was MAX_REVIVE)
    setvar VAR_SPECIAL_x8008, ITEM_LEPPA_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_119: // d38r0102_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_120: // d38r0102_full_incense
    setvar VAR_SPECIAL_x8008, ITEM_FULL_INCENSE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_121: // d38r0102_protector
    setvar VAR_SPECIAL_x8008, ITEM_PROTECTOR
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_122: // d38r0103_rare_candy (was RARE_CANDY)
    setvar VAR_SPECIAL_x8008, ITEM_SITRUS_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_123: // d38r0103_max_potion (was MAX_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_LINKING_CORD
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_124: // d38r0103_tm40
    setvar VAR_SPECIAL_x8008, ITEM_TM40
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_125: // d38r0103_elixir (was ELIXIR)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_126: // d38r0103_dragon_scale
    setvar VAR_SPECIAL_x8008, ITEM_DRAGON_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_127: // d38r0103_escape_rope (was ESCAPE_ROPE)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_128: // d38r0104_carbos (was CARBOS)
    setvar VAR_SPECIAL_x8008, ITEM_TIMER_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_129: // d38r0104_pp_up
    setvar VAR_SPECIAL_x8008, ITEM_PP_UP
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_130: // d38r0104_full_restore (was FULL_RESTORE)
    setvar VAR_SPECIAL_x8008, ITEM_TIMER_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_131: // d38r0104_max_ether (was MAX_ETHER)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_132: // d38r0104_hyper_potion (was HYPER_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_133: // d35r0102_hyper_potion (was HYPER_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_134: // d35r0102_guard_spec_ (was GUARD_SPEC)
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_135: // d35r0102_nugget
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_136: // d35r0103_tm46
    setvar VAR_SPECIAL_x8008, ITEM_TM46
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_137: // d35r0104_tm49
    setvar VAR_SPECIAL_x8008, ITEM_TM49
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_138: // d35r0104_full_heal (was FULL_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_139: // d35r0104_protein (was PROTEIN)
    setvar VAR_SPECIAL_x8008, ITEM_SITRUS_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_140: // d35r0104_x_special (was X_SPECIAL)
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_141: // d35r0104_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_142: // r43_max_ether (was MAX_ETHER)
    setvar VAR_SPECIAL_x8008, ITEM_BABIRI_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_143: // t29_tm43
    setvar VAR_SPECIAL_x8008, ITEM_TM43
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_144: // t29_choice_specs
    setvar VAR_SPECIAL_x8008, ITEM_CHOICE_SPECS
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_145: // t29_red_flute (was RED_FLUTE)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_146: // r44_max_repel (was MAX_REPEL)
    setvar VAR_SPECIAL_x8008, ITEM_HABAN_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_147: // r44_max_revive (was MAX_REVIVE)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_148: // r44_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_149: // d39r0101_hm07
    setvar VAR_SPECIAL_x8008, ITEM_HM07
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_150: // d39r0101_protein (was PROTEIN)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_151: // d39r0101_pp_up
    setvar VAR_SPECIAL_x8008, ITEM_PP_UP
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_152: // d39r0103_full_heal (was FULL_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_DAWN_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_153: // d39r0103_max_potion (was MAX_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_154: // d39r0104_nevermeltice
    setvar VAR_SPECIAL_x8008, ITEM_NEVER_MELT_ICE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_155: // d39r0103_tm72
    setvar VAR_SPECIAL_x8008, ITEM_TM72
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_156: // d39r0102_iron (was IRON)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_157: // d44r0102_calcium (was CALCIUM)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_158: // d44r0102_max_elixir (was MAX_ELIXIR)
    setvar VAR_SPECIAL_x8008, ITEM_LEPPA_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_159: // d44r0102_dragon_fang
    setvar VAR_SPECIAL_x8008, ITEM_DRAGON_FANG
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_160: // r45_elixir (was ELIXIR)
    setvar VAR_SPECIAL_x8008, ITEM_ICE_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_161: // r45_max_potion (was MAX_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_ROSELI_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_162: // r45_full_heal (was FULL_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_163: // r45_nugget
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_164: // r45_revive (was REVIVE)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_165: // r46_x_speed (was X_SPEED)
    setvar VAR_SPECIAL_x8008, ITEM_POKE_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_166: // d42r0101_tm54
    setvar VAR_SPECIAL_x8008, ITEM_TM54
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_167: // d42r0101_revive (was REVIVE)
    setvar VAR_SPECIAL_x8008, ITEM_SHINY_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_168: // d42r0102_potion (was POTION)
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_169: // d42r0102_hyper_potion (was HYPER_POTION)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_170: // d42r0102_full_heal (was FULL_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_QUICK_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_171: // d42r0102_dire_hit (was DIRE_HIT)
    setvar VAR_SPECIAL_x8008, ITEM_QUICK_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_172: // d42r0102_black_flute (was BLACK_FLUTE)
    setvar VAR_SPECIAL_x8008, ITEM_SITRUS_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_173: // d45r0101_moon_stone
    setvar VAR_SPECIAL_x8008, ITEM_MOON_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_174: // r27_rare_candy (was RARE_CANDY)
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_175: // r27_tm02
    setvar VAR_SPECIAL_x8008, ITEM_TM02
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_176: // r27_destiny_knot
    setvar VAR_SPECIAL_x8008, ITEM_DESTINY_KNOT
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_177: // r26_max_elixir (was MAX_ELIXIR)
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_178: // d43r0101_max_revive (was MAX_REVIVE)
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_179: // d43r0101_full_heal (was FULL_HEAL)
    setvar VAR_SPECIAL_x8008, ITEM_HEART_SCALE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_180: // d43r0101_potion (was POTION)
    setvar VAR_SPECIAL_x8008, ITEM_SITRUS_BERRY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_181: // d43r0102_tm26
    setvar VAR_SPECIAL_x8008, ITEM_TM26
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_182: // d43r0102_hp_up (was HP_UP)
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_183: // d43r0102_full_restore (was FULL_RESTORE)
    setvar VAR_SPECIAL_x8008, ITEM_DUSK_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_184: // d43r0103_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_185: // d43r0103_tm79
    setvar VAR_SPECIAL_x8008, ITEM_TM79
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_186: // d43r0103_rare_candy (was RARE_CANDY)
    setvar VAR_SPECIAL_x8008, ITEM_QUICK_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_187: // t06_luck_incense
    setvar VAR_SPECIAL_x8008, ITEM_LUCK_INCENSE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_188: // t06_sticky_barb
    setvar VAR_SPECIAL_x8008, ITEM_STICKY_BARB
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_189: // d01r0101_pp_max
    setvar VAR_SPECIAL_x8008, ITEM_PP_MAX
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_190: // d01r0101_rock_incense
    setvar VAR_SPECIAL_x8008, ITEM_ROCK_INCENSE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_191: // r06_tm62
    setvar VAR_SPECIAL_x8008, ITEM_TM62
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_192: // r08_tm41
    setvar VAR_SPECIAL_x8008, ITEM_TM41
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_193: // r10r0101_tm69
    setvar VAR_SPECIAL_x8008, ITEM_TM69
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_194: // d05r0101_elixir
    setvar VAR_SPECIAL_x8008, ITEM_ELIXIR
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_195: // d05r0101_tm56
    setvar VAR_SPECIAL_x8008, ITEM_TM56
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_196: // d05r0102_iron
    setvar VAR_SPECIAL_x8008, ITEM_IRON
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_197: // d05r0102_pp_up
    setvar VAR_SPECIAL_x8008, ITEM_PP_UP
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_198: // d05r0102_revive
    setvar VAR_SPECIAL_x8008, ITEM_REVIVE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_199: // d05r0102_oval_stone
    setvar VAR_SPECIAL_x8008, ITEM_OVAL_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_200: // r09_tm91
    setvar VAR_SPECIAL_x8008, ITEM_TM91
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_201: // r09_full_restore
    setvar VAR_SPECIAL_x8008, ITEM_FULL_RESTORE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_202: // r09_light_clay
    setvar VAR_SPECIAL_x8008, ITEM_LIGHT_CLAY
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_203: // r09_max_potion
    setvar VAR_SPECIAL_x8008, ITEM_MAX_POTION
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_204: // r25_protein
    setvar VAR_SPECIAL_x8008, ITEM_PROTEIN
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_205: // r07_mental_herb
    setvar VAR_SPECIAL_x8008, ITEM_MENTAL_HERB
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_206: // t07_tm67
    setvar VAR_SPECIAL_x8008, ITEM_TM67
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_207: // r12_calcium
    setvar VAR_SPECIAL_x8008, ITEM_CALCIUM
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_208: // r12_yellow_flute
    setvar VAR_SPECIAL_x8008, ITEM_YELLOW_FLUTE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_209: // r15_pp_up
    setvar VAR_SPECIAL_x8008, ITEM_PP_UP
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_210: // r15_rose_incense
    setvar VAR_SPECIAL_x8008, ITEM_ROSE_INCENSE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_211: // r11_tm86
    setvar VAR_SPECIAL_x8008, ITEM_TM86
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_212: // r02r0101_carbos
    setvar VAR_SPECIAL_x8008, ITEM_CARBOS
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_213: // r02_elixir
    setvar VAR_SPECIAL_x8008, ITEM_ELIXIR
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_214: // d46r0101_dire_hit
    setvar VAR_SPECIAL_x8008, ITEM_DIRE_HIT
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_215: // d46r0101_blue_flute
    setvar VAR_SPECIAL_x8008, ITEM_BLUE_FLUTE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_216: // d46r0101_leaf_stone
    setvar VAR_SPECIAL_x8008, ITEM_LEAF_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_217: // d46r0101_tm77
    setvar VAR_SPECIAL_x8008, ITEM_TM77
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_218: // t03_wise_glasses
    setvar VAR_SPECIAL_x8008, ITEM_WISE_GLASSES
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_219: // r03_big_root
    setvar VAR_SPECIAL_x8008, ITEM_BIG_ROOT
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_220: // r04_hp_up
    setvar VAR_SPECIAL_x8008, ITEM_HP_UP
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_221: // t09_magmarizer
    setvar VAR_SPECIAL_x8008, ITEM_MAGMARIZER
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_222: // d11r0102_ice_heal
    setvar VAR_SPECIAL_x8008, ITEM_ICE_HEAL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_223: // d11r0102_grip_claw
    setvar VAR_SPECIAL_x8008, ITEM_GRIP_CLAW
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_224: // d11r0103_water_stone
    setvar VAR_SPECIAL_x8008, ITEM_WATER_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_225: // d11r0104_revive
    setvar VAR_SPECIAL_x8008, ITEM_REVIVE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_226: // d11r0104_big_pearl
    setvar VAR_SPECIAL_x8008, ITEM_BIG_PEARL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_227: // d11r0105_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_228: // d11r0105_tm13
    setvar VAR_SPECIAL_x8008, ITEM_TM13
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_229: // w19_tm55
    setvar VAR_SPECIAL_x8008, ITEM_TM55
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_230: // r28_tm35
    setvar VAR_SPECIAL_x8008, ITEM_TM35
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_231: // t31_reaper_cloth
    setvar VAR_SPECIAL_x8008, ITEM_REAPER_CLOTH
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_232: // d41r0101_full_restore
    setvar VAR_SPECIAL_x8008, ITEM_FULL_RESTORE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_233: // d41r0102_pure_incense
    setvar VAR_SPECIAL_x8008, ITEM_PURE_INCENSE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_234: // d41r0102_dawn_stone
    setvar VAR_SPECIAL_x8008, ITEM_DAWN_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_235: // d41r0103_escape_rope
    setvar VAR_SPECIAL_x8008, ITEM_ESCAPE_ROPE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_236: // d41r0103_tm76
    setvar VAR_SPECIAL_x8008, ITEM_TM76
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_237: // d41r0104_expert_belt
    setvar VAR_SPECIAL_x8008, ITEM_EXPERT_BELT
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_238: // d41r0106_max_elixir
    setvar VAR_SPECIAL_x8008, ITEM_MAX_ELIXIR
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_239: // d41r0106_calcium
    setvar VAR_SPECIAL_x8008, ITEM_CALCIUM
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_240: // d41r0106_protein
    setvar VAR_SPECIAL_x8008, ITEM_PROTEIN
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_241: // d41r0106_max_revive
    setvar VAR_SPECIAL_x8008, ITEM_MAX_REVIVE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_242: // d03r0101_max_elixir
    setvar VAR_SPECIAL_x8008, ITEM_MAX_ELIXIR
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_243: // d03r0101_full_restore
    setvar VAR_SPECIAL_x8008, ITEM_FULL_RESTORE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_244: // d03r0101_nugget
    setvar VAR_SPECIAL_x8008, ITEM_NUGGET
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_245: // d03r0101_sea_incense
    setvar VAR_SPECIAL_x8008, ITEM_SEA_INCENSE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_246: // d03r0102_pp_up
    setvar VAR_SPECIAL_x8008, ITEM_PP_UP
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_247: // d03r0102_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_248: // d03r0102_tm24
    setvar VAR_SPECIAL_x8008, ITEM_TM24
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_249: // d03r0102_odd_incense
    setvar VAR_SPECIAL_x8008, ITEM_ODD_INCENSE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_250: // d03r0103_max_revive
    setvar VAR_SPECIAL_x8008, ITEM_MAX_REVIVE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_251: // d03r0103_ultra_ball
    setvar VAR_SPECIAL_x8008, ITEM_ULTRA_BALL
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_252: // d03r0103_dusk_stone
    setvar VAR_SPECIAL_x8008, ITEM_DUSK_STONE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_253: // d03r0103_electirizer
    setvar VAR_SPECIAL_x8008, ITEM_ELECTIRIZER
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_254: // d03r0103_black_sludge
    setvar VAR_SPECIAL_x8008, ITEM_BLACK_SLUDGE
    setvar VAR_SPECIAL_x8009, 1
    goto scr_seq_0141_255
    end

scr_seq_0141_255:
    play_se SEQ_SE_DP_SELECT
    lockall
    faceplayer
    wait_se SEQ_SE_DP_SELECT
    copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_x8008
    copyvar VAR_SPECIAL_x8005, VAR_SPECIAL_x8009
    hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _give
    goto _no_space

_release:
    closemsg
    releaseall
    end

_give:
    callstd std_hidden_item_fanfare
    hide_person VAR_SPECIAL_LAST_TALKED
    giveitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
    itemistmorhm VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _tm
    buffer_players_name 0
    buffer_item_name_indef 1, VAR_SPECIAL_x8004
    npc_msg 3
    goto _put_away

_tm:
    buffer_players_name 0
    buffer_item_name_indef 1, VAR_SPECIAL_x8004
    buffer_tmhm_move_name 2, VAR_SPECIAL_x8004
    npc_msg 6
    goto _put_away

_put_away:
    wait_fanfare
    buffer_players_name 0
    buffer_item_name 1, VAR_SPECIAL_x8004
    getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
    buffer_pocket_name 2, VAR_SPECIAL_RESULT
    npc_msg 9
    wait_button
    setvar VAR_SPECIAL_RESULT, 1
    goto _release

_no_space:
    buffer_item_name 0, VAR_SPECIAL_x8004
    npc_msg 4
    wait_button
    setvar VAR_SPECIAL_RESULT, 0
    goto _release

.align 4
.close
