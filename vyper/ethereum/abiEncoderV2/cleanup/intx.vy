@external
def ggg8(x: int8) -> int256:
    return convert(x, int256)

@external
def gg16(x: int16) -> int256:
    return convert(x, int256)

@external
def gg32(x: int32) -> int256:
    return convert(x, int256)

@external
def gg64(x: int64) -> int256:
    return convert(x, int256)

@external
def g128(x: int128) -> int256:
    return convert(x, int256)

# ====
# compileViaYul: also
# ----
# ggg8(int8): 0 -> 0 # test validation as well as sanity check #
# ggg8(int8): 1 -> 1
# ggg8(int8): -1 -> -1
# ggg8(int8): 0x7F -> 0x7F
# ggg8(int8): 0x80 -> FAILURE
# ggg8(int8): 0xFE -> FAILURE
# ggg8(int8): 0xFF -> FAILURE
# ggg8(int8): 0x0100 -> FAILURE
# ggg8(int8): 0x0101 -> FAILURE
# ggg8(int8): 0x01FF -> FAILURE
# ggg8(int8): 0x01FE -> FAILURE
# gg16(int16): 0 -> 0
# gg16(int16): 1 -> 1
# gg16(int16): -1 -> -1
# gg16(int16): 0x7FFF -> 0x7FFF
# gg16(int16): 0x8000 -> FAILURE
# gg16(int16): 0xFFFE -> FAILURE
# gg16(int16): 0xFFFF -> FAILURE
# gg16(int16): 0x010000 -> FAILURE
# gg16(int16): 0x010001 -> FAILURE
# gg16(int16): 0x01FFFF -> FAILURE
# gg16(int16): 0x01FFFE -> FAILURE
# gg32(int32): 0 -> 0
# gg32(int32): 1 -> 1
# gg32(int32): -1 -> -1
# gg32(int32): 0x7FFFFFFF -> 0x7FFFFFFF
# gg32(int32): 0x80000000 -> FAILURE
# gg32(int32): 0xFFFFFFFE -> FAILURE
# gg32(int32): 0xFFFFFFFF -> FAILURE
# gg32(int32): 0x0100000000 -> FAILURE
# gg32(int32): 0x0100000001 -> FAILURE
# gg32(int32): 0x01FFFFFFFF -> FAILURE
# gg32(int32): 0x01FFFFFFFE -> FAILURE
# gg64(int64): 0 -> 0
# gg64(int64): 1 -> 1
# gg64(int64): -1 -> -1
# gg64(int64): 0x7FFFFFFFFFFFFFFF -> 0x7FFFFFFFFFFFFFFF
# gg64(int64): 0x8000000000000000 -> FAILURE
# gg64(int64): 0xFFFFFFFFFFFFFFFE -> FAILURE
# gg64(int64): 0xFFFFFFFFFFFFFFFF -> FAILURE
# gg64(int64): 0x010000000000000000 -> FAILURE
# gg64(int64): 0x010000000000000001 -> FAILURE
# gg64(int64): 0x01FFFFFFFFFFFFFFFF -> FAILURE
# gg64(int64): 0x01FFFFFFFFFFFFFFFE -> FAILURE
# g128(int128): 0 -> 0
# g128(int128): 1 -> 1
# g128(int128): -1 -> -1
# g128(int128): 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF -> 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
# g128(int128): 0x80000000000000000000000000000000 -> FAILURE
# g128(int128): 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE -> FAILURE
# g128(int128): 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF -> FAILURE
# g128(int128): 0x0100000000000000000000000000000000 -> FAILURE
# g128(int128): 0x0100000000000000000000000000000001 -> FAILURE
# g128(int128): 0x01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF -> FAILURE
# g128(int128): 0x01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE -> FAILURE
