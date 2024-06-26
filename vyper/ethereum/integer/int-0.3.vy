@external
@pure
def intMinA() -> bool:
    int8_min: int8  = -2**7
    assert int8_min == -2**7

    int16_min: int16  = -2**15
    assert int16_min == -2**15

    int24_min: int24  = -2**23
    assert int24_min == -2**23

    int32_min: int32  = -2**31
    assert int32_min == -2**31

    int40_min: int40  = -2**39
    assert int40_min == -2**39

    int48_min: int48  = -2**47
    assert int48_min == -2**47

    int56_min: int56  = -2**55
    assert int56_min == -2**55

    int64_min: int64  = -2**63
    assert int64_min == -2**63

    return True

@external
@pure
def intMinB() -> bool:
    int72_min: int72  = -2**71
    assert int72_min == -2**71

    int80_min: int80  = -2**79
    assert int80_min == -2**79

    int88_min: int88  = -2**87
    assert int88_min == -2**87

    int96_min: int96  = -2**95
    assert int96_min == -2**95

    int104_min: int104 = -2**103
    assert int104_min == -2**103

    int112_min: int112 = -2**111
    assert int112_min == -2**111

    int120_min: int120 = -2**119
    assert int120_min == -2**119

    int128_min: int128 = MIN_INT128
    assert int128_min == -2**127

    return True

@external
@pure
def intMinC() -> bool:
    int136_min: int136 = -2**135
    assert int136_min == -2**135

    int144_min: int144 = -2**143
    assert int144_min == -2**143

    int152_min: int152 = -2**151
    assert int152_min == -2**151

    int160_min: int160 = -2**159
    assert int160_min == -2**159

    int168_min: int168 = -2**167
    assert int168_min == -2**167

    int176_min: int176 = -2**175
    assert int176_min == -2**175

    int184_min: int184 = -2**183
    assert int184_min == -2**183

    int192_min: int192 = -2**191
    assert int192_min == -2**191

    return True

@external
@pure
def intMinD() -> bool:
    int200_min: int200 = -2**199
    assert int200_min == -2**199

    int208_min: int208 = -2**207
    assert int208_min == -2**207

    int216_min: int216 = -2**215
    assert int216_min == -2**215

    int224_min: int224 = -2**223
    assert int224_min == -2**223

    int232_min: int232 = -2**231
    assert int232_min == -2**231

    int240_min: int240 = -2**239
    assert int240_min == -2**239

    int248_min: int248 = -2**247
    assert int248_min == -2**247

    int256_min: int256 = -2**255
    assert int256_min == -2**255

    return True

@external
@pure
def intMaxA() -> bool:
    int8_max: int8   = 2**7 - 1
    assert int8_max == 2**7 - 1

    int16_max: int16  = 2**15 - 1
    assert int16_max == 2**15 - 1

    int24_max: int24  = 2**23 - 1
    assert int24_max == 2**23 - 1

    int32_max: int32  = 2**31 - 1
    assert int32_max == 2**31 - 1

    int40_max: int40  = 2**39 - 1
    assert int40_max == 2**39 - 1

    int48_max: int48  = 2**47 - 1
    assert int48_max == 2**47 - 1

    int56_max: int56  = 2**55 - 1
    assert int56_max == 2**55 - 1

    int64_max: int64  = 2**63 - 1
    assert int64_max == 2**63 - 1

    return True

@external
@pure
def intMaxB() -> bool:
    int72_max: int72  = 2**71 - 1
    assert int72_max == 2**71 - 1

    int80_max: int80  = 2**79 - 1
    assert int80_max == 2**79 - 1

    int88_max: int88  = 2**87 - 1
    assert int88_max == 2**87 - 1

    int96_max: int96  = 2**95 - 1
    assert int96_max == 2**95 - 1

    int104_max: int104 = 2**103 - 1
    assert int104_max == 2**103 - 1

    int112_max: int112 = 2**111 - 1
    assert int112_max == 2**111 - 1

    int120_max: int120 = 2**119 - 1
    assert int120_max == 2**119 - 1

    int128_max: int128 = MAX_INT128
    assert int128_max == 2**127 - 1

    return True

@external
@pure
def intMaxC() -> bool:
    int136_max: int136 = 2**135 - 1
    assert int136_max == 2**135 - 1

    int144_max: int144 = 2**143 - 1
    assert int144_max == 2**143 - 1

    int152_max: int152 = 2**151 - 1
    assert int152_max == 2**151 - 1

    int160_max: int160 = 2**159 - 1
    assert int160_max == 2**159 - 1

    int168_max: int168 = 2**167 - 1
    assert int168_max == 2**167 - 1

    int176_max: int176 = 2**175 - 1
    assert int176_max == 2**175 - 1

    int184_max: int184 = 2**183 - 1
    assert int184_max == 2**183 - 1

    int192_max: int192 = 2**191 - 1
    assert int192_max == 2**191 - 1

    return True

@external
@pure
def intMaxD() -> bool:
    int200_max: int200 = 2**199 - 1
    assert int200_max == 2**199 - 1

    int208_max: int208 = 2**207 - 1
    assert int208_max == 2**207 - 1

    int216_max: int216 = 2**215 - 1
    assert int216_max == 2**215 - 1

    int224_max: int224 = 2**223 - 1
    assert int224_max == 2**223 - 1

    int232_max: int232 = 2**231 - 1
    assert int232_max == 2**231 - 1

    int240_max: int240 = 2**239 - 1
    assert int240_max == 2**239 - 1

    int248_max: int248 = 2**247 - 1
    assert int248_max == 2**247 - 1

    int256_max: int256 = 2**255 - 1
    assert int256_max == 2**255 - 1

    return True

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# intMinA() -> true
# intMinB() -> true
# intMinC() -> true
# intMinD() -> true
# intMaxA() -> true
# intMaxB() -> true
# intMaxC() -> true
# intMaxD() -> true
