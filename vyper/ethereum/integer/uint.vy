@external
@pure
def uintMinA() -> bool:
    uint8_min: uint8  = 0
    assert uint8_min == 0

    uint16_min: uint16 = 0
    assert uint16_min == 0

    uint24_min: uint24 = 0
    assert uint24_min == 0

    uint32_min: uint32 = 0
    assert uint32_min == 0

    uint40_min: uint40 = 0
    assert uint40_min == 0

    uint48_min: uint48 = 0
    assert uint48_min == 0

    uint56_min: uint56 = 0
    assert uint56_min == 0

    uint64_min: uint64 = 0
    assert uint64_min == 0

    return True

@external
@pure
def uintMinB() -> bool:
    uint72_min: uint72 = 0
    assert uint72_min == 0

    uint80_min: uint80 = 0
    assert uint80_min == 0

    uint88_min: uint88 = 0
    assert uint88_min == 0

    uint96_min: uint96 = 0
    assert uint96_min == 0

    uint104_min: uint104 = 0
    assert uint104_min  == 0

    uint112_min: uint112 = 0
    assert uint112_min  == 0

    uint120_min: uint120 = 0
    assert uint120_min  == 0

    uint128_min: uint128 = 0
    assert uint128_min  == 0

    return True

@external
@pure
def uintMinC() -> bool:
    uint136_min: uint136 = 0
    assert uint136_min  == 0

    uint144_min: uint144 = 0
    assert uint144_min  == 0

    uint152_min: uint152 = 0
    assert uint152_min  == 0

    uint160_min: uint160 = 0
    assert uint160_min  == 0

    uint168_min: uint168 = 0
    assert uint168_min  == 0

    uint176_min: uint176 = 0
    assert uint176_min  == 0

    uint184_min: uint184 = 0
    assert uint184_min  == 0

    uint192_min: uint192 = 0
    assert uint192_min  == 0

    return True

@external
@pure
def uintMinD() -> bool:
    uint200_min: uint200 = 0
    assert uint200_min  == 0

    uint208_min: uint208 = 0
    assert uint208_min  == 0

    uint216_min: uint216 = 0
    assert uint216_min  == 0

    uint224_min: uint224 = 0
    assert uint224_min  == 0

    uint232_min: uint232 = 0
    assert uint232_min  == 0

    uint240_min: uint240 = 0
    assert uint240_min  == 0

    uint248_min: uint248 = 0
    assert uint248_min  == 0

    uint256_min: uint256 = 0
    assert uint256_min  == 0

    return True

@external
@pure
def uintMaxA() -> bool:
    uint8_max: uint8  = max_value(uint8)
    assert uint8_max == max_value(uint8)

    uint16_max: uint16 = max_value(uint16)
    assert uint16_max == max_value(uint16)

    uint24_max: uint24 = max_value(uint24)
    assert uint24_max == max_value(uint24)

    uint32_max: uint32 = max_value(uint32)
    assert uint32_max == max_value(uint32)

    uint40_max: uint40 = max_value(uint40)
    assert uint40_max == max_value(uint40)

    uint48_max: uint48 = max_value(uint48)
    assert uint48_max == max_value(uint48)

    uint56_max: uint56 = max_value(uint56)
    assert uint56_max == max_value(uint56)

    uint64_max: uint64 = max_value(uint64)
    assert uint64_max == max_value(uint64)

    return True

@external
@pure
def uintMaxB() -> bool:
    uint72_max: uint72 = max_value(uint72)
    assert uint72_max == max_value(uint72)

    uint80_max: uint80 = max_value(uint80)
    assert uint80_max == max_value(uint80)

    uint88_max: uint88 = max_value(uint88)
    assert uint88_max == max_value(uint88)

    uint96_max: uint96 = max_value(uint96)
    assert uint96_max == max_value(uint96)

    uint104_max: uint104 = max_value(uint104)
    assert uint104_max  == max_value(uint104)

    uint112_max: uint112 = max_value(uint112)
    assert uint112_max  == max_value(uint112)

    uint120_max: uint120 = max_value(uint120)
    assert uint120_max  == max_value(uint120)

    uint128_max: uint128 = max_value(uint128)
    assert uint128_max  == max_value(uint128)

    return True

@external
@pure
def uintMaxC() -> bool:
    uint136_max: uint136 = max_value(uint136)
    assert uint136_max  == max_value(uint136)

    uint144_max: uint144 = max_value(uint144)
    assert uint144_max  == max_value(uint144)

    uint152_max: uint152 = max_value(uint152)
    assert uint152_max  == max_value(uint152)

    uint160_max: uint160 = max_value(uint160)
    assert uint160_max  == max_value(uint160)

    uint168_max: uint168 = max_value(uint168)
    assert uint168_max  == max_value(uint168)

    uint176_max: uint176 = max_value(uint176)
    assert uint176_max  == max_value(uint176)

    uint184_max: uint184 = max_value(uint184)
    assert uint184_max  == max_value(uint184)

    uint192_max: uint192 = max_value(uint192)
    assert uint192_max  == max_value(uint192)

    return True

@external
@pure
def uintMaxD() -> bool:
    uint200_max: uint200 = max_value(uint200)
    assert uint200_max  == max_value(uint200)

    uint208_max: uint208 = max_value(uint208)
    assert uint208_max  == max_value(uint208)

    uint216_max: uint216 = max_value(uint216)
    assert uint216_max  == max_value(uint216)

    uint224_max: uint224 = max_value(uint224)
    assert uint224_max  == max_value(uint224)

    uint232_max: uint232 = max_value(uint232)
    assert uint232_max  == max_value(uint232)

    uint240_max: uint240 = max_value(uint240)
    assert uint240_max  == max_value(uint240)

    uint248_max: uint248 = max_value(uint248)
    assert uint248_max  == max_value(uint248)

    uint256_max: uint256 = max_value(uint256)
    assert uint256_max  == 115792089237316195423570985008687907853269984665640564039457584007913129639935

    return True

# ----
# uintMinA() -> true
# uintMinB() -> true
# uintMinC() -> true
# uintMinD() -> true
# uintMaxA() -> true
# uintMaxB() -> true
# uintMaxC() -> true
# uintMaxD() -> true
