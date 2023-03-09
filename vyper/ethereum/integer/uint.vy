@external
@pure
def uintMinA() -> bool:
    uint8_min: uint8  = 0
    assert uint8_min == 0

    uint16_min: uint16  = 0
    assert uint16_min == 0

    uint24_min: uint24  = 0
    assert uint24_min == 0

    uint32_min: uint32  = 0
    assert uint32_min == 0

    uint40_min: uint40  = 0
    assert uint40_min == 0

    uint48_min: uint48  = 0
    assert uint48_min == 0

    uint56_min: uint56  = 0
    assert uint56_min == 0

    uint64_min: uint64  = 0
    assert uint64_min == 0

    return True

@external
@pure
def uintMinB() -> bool:
    uint72_min: uint72  = 0
    assert uint72_min == 0

    uint80_min: uint80  = 0
    assert uint80_min == 0

    uint88_min: uint88  = 0
    assert uint88_min == 0

    uint96_min: uint96  = 0
    assert uint96_min == 0

    uint104_min: uint104  = 0
    assert uint104_min == 0

    uint112_min: uint112  = 0
    assert uint112_min == 0

    uint120_min: uint120  = 0
    assert uint120_min == 0

    uint128_min: uint128  = 0
    assert uint128_min == 0

    return True

@external
@pure
def uintMinC() -> bool:
    uint136_min: uint136  = 0
    assert uint136_min == 0

    uint144_min: uint144  = 0
    assert uint144_min == 0

    uint152_min: uint152  = 0
    assert uint152_min == 0

    uint160_min: uint160  = 0
    assert uint160_min == 0

    uint168_min: uint168  = 0
    assert uint168_min == 0

    uint176_min: uint176  = 0
    assert uint176_min == 0

    uint184_min: uint184  = 0
    assert uint184_min == 0

    uint192_min: uint192  = 0
    assert uint192_min == 0

    return True

@external
@pure
def uintMinD() -> bool:
    uint200_min: uint200  = 0
    assert uint200_min == 0

    uint208_min: uint208  = 0
    assert uint208_min == 0

    uint216_min: uint216  = 0
    assert uint216_min == 0

    uint224_min: uint224  = 0
    assert uint224_min == 0

    uint232_min: uint232  = 0
    assert uint232_min == 0

    uint240_min: uint240  = 0
    assert uint240_min == 0

    uint248_min: uint248  = 0
    assert uint248_min == 0

    uint256_min: uint256  = 0
    assert uint256_min == 0

    return True

@external
@pure
def uintMaxA() -> bool:
    uint8_max: uint8  = 2**8 - 1
    assert uint8_max == 2**8 - 1

    uint16_max: uint16  = 2**16 - 1
    assert uint16_max == 2**16 - 1

    uint24_max: uint24  = 2**24 - 1
    assert uint24_max == 2**24 - 1

    uint32_max: uint32  = 2**32 - 1
    assert uint32_max == 2**32 - 1

    uint40_max: uint40  = 2**40 - 1
    assert uint40_max == 2**40 - 1

    uint48_max: uint48  = 2**48 - 1
    assert uint48_max == 2**48 - 1

    uint56_max: uint56  = 2**56 - 1
    assert uint56_max == 2**56 - 1

    uint64_max: uint64  = 2**64 - 1
    assert uint64_max == 2**64 - 1

    return True

@external
@pure
def uintMaxB() -> bool:
    uint72_max: uint72  = 2**72 - 1
    assert uint72_max == 2**72 - 1

    uint80_max: uint80  = 2**80 - 1
    assert uint80_max == 2**80 - 1

    uint88_max: uint88  = 2**88 - 1
    assert uint88_max == 2**88 - 1

    uint96_max: uint96  = 2**96 - 1
    assert uint96_max == 2**96 - 1

    uint104_max: uint104  = 2**104 - 1
    assert uint104_max == 2**104 - 1

    uint112_max: uint112  = 2**112 - 1
    assert uint112_max == 2**112 - 1

    uint120_max: uint120  = 2**120 - 1
    assert uint120_max == 2**120 - 1

    uint128_max: uint128  = 2**128 - 1
    assert uint128_max == 2**128 - 1

    return True

@external
@pure
def uintMaxC() -> bool:
    uint136_max: uint136  = 2**136 - 1
    assert uint136_max == 2**136 - 1

    uint144_max: uint144  = 2**144 - 1
    assert uint144_max == 2**144 - 1

    uint152_max: uint152  = 2**152 - 1
    assert uint152_max == 2**152 - 1

    uint160_max: uint160  = 2**160 - 1
    assert uint160_max == 2**160 - 1

    uint168_max: uint168  = 2**168 - 1
    assert uint168_max == 2**168 - 1

    uint176_max: uint176  = 2**176 - 1
    assert uint176_max == 2**176 - 1

    uint184_max: uint184  = 2**184 - 1
    assert uint184_max == 2**184 - 1

    uint192_max: uint192  = 2**192 - 1
    assert uint192_max == 2**192 - 1

    return True

@external
@pure
def uintMaxD() -> bool:
    uint200_max: uint200  = 2**200 - 1
    assert uint200_max == 2**200 - 1

    uint208_max: uint208  = 2**208 - 1
    assert uint208_max == 2**208 - 1

    uint216_max: uint216  = 2**216 - 1
    assert uint216_max == 2**216 - 1

    uint224_max: uint224  = 2**224 - 1
    assert uint224_max == 2**224 - 1

    uint232_max: uint232  = 2**232 - 1
    assert uint232_max == 2**232 - 1

    uint240_max: uint240  = 2**240 - 1
    assert uint240_max == 2**240 - 1

    uint248_max: uint248  = 2**248 - 1
    assert uint248_max == 2**248 - 1

    uint256_max: uint256  = MAX_UINT256
    assert uint256_max == 115792089237316195423570985008687907853269984665640564039457584007913129639935

    return True
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# uintMinA() -> true
# uintMinB() -> true
# uintMinC() -> true
# uintMinD() -> true
# uintMaxA() -> true
# uintMaxB() -> true
# uintMaxC() -> true
# uintMaxD() -> true
