@external
@pure
def ggg8(x: uint8) -> uint256:
    return convert(x, uint256)
    
@external
@pure
def gg16(x: uint16) -> uint256:
    return convert(x, uint256)

@external
@pure
def gg32(x: uint32) -> uint256:
    return convert(x, uint256)

@external
@pure
def gg64(x: uint64) -> uint256:
    return convert(x, uint256)

@external
@pure
def g128(x: uint128) -> uint256:
    return convert(x, uint256)
    
# ----
# ggg8(uint8): 0 -> 0 # test validation as well as sanity check #
# ggg8(uint8): 1 -> 1
# ggg8(uint8): 0xFE -> 0xFE
# ggg8(uint8): 0xFF -> 0xFF
# ggg8(uint8): 0x0100 -> FAILURE
# ggg8(uint8): 0x0101 -> FAILURE
# ggg8(uint8): -1 -> FAILURE
# gg16(uint16): 0 -> 0
# gg16(uint16): 1 -> 1
# gg16(uint16): 0xFFFE -> 0xFFFE
# gg16(uint16): 0xFFFF -> 0xFFFF
# gg16(uint16): 0x010000 -> FAILURE
# gg16(uint16): 0x010001 -> FAILURE
# gg16(uint16): -1 -> FAILURE
# gg32(uint32): 0 -> 0
# gg32(uint32): 1 -> 1
# gg32(uint32): 0xFFFFFFFE -> 0xFFFFFFFE
# gg32(uint32): 0xFFFFFFFF -> 0xFFFFFFFF
# gg32(uint32): 0x0100000000 -> FAILURE
# gg32(uint32): 0x0100000001 -> FAILURE
# gg32(uint32): -1 -> FAILURE
# gg64(uint64): 0 -> 0
# gg64(uint64): 1 -> 1
# gg64(uint64): 0xFFFFFFFFFFFFFFFE -> 0xFFFFFFFFFFFFFFFE
# gg64(uint64): 0xFFFFFFFFFFFFFFFF -> 0xFFFFFFFFFFFFFFFF
# gg64(uint64): 0x010000000000000000 -> FAILURE
# gg64(uint64): 0x010000000000000001 -> FAILURE
# gg64(uint64): -1 -> FAILURE
# g128(uint128): 0 -> 0
# g128(uint128): 1 -> 1
# g128(uint128): 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE -> 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
# g128(uint128): 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF -> 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
# g128(uint128): 0x0100000000000000000000000000000000 -> FAILURE
# g128(uint128): 0x0100000000000000000000000000000001 -> FAILURE
# g128(uint128): -1 -> FAILURE
