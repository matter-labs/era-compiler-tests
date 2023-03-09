@external
@pure
def gg1(x: bytes1) -> bytes32:
    return convert(x, bytes32)

@external
@pure
def gg2(x: bytes2) -> bytes32:
    return convert(x, bytes32)

@external
@pure
def gg4(x: bytes4) -> bytes32:
    return convert(x, bytes32)

@external
@pure
def gg8(x: bytes8) -> bytes32:
    return convert(x, bytes32)

@external
@pure
def g16(x: bytes16) -> bytes32:
    return convert(x, bytes32)
    
# ====
# compileViaYul: also
# ----
# gg1(bytes1): left(0) -> left(0) # test validation as well as sanity check #
# gg1(bytes1): left(1) -> left(1)
# gg1(bytes1): left(0xFE) -> left(0xFE)
# gg1(bytes1): left(0xFF) -> left(0xFF)
# gg1(bytes1): left(0x0001) -> FAILURE
# gg1(bytes1): left(0x0101) -> FAILURE
# gg1(bytes1): -1 -> FAILURE
# gg2(bytes2): left(0) -> left(0)
# gg2(bytes2): left(1) -> left(1)
# gg2(bytes2): left(0xFFFE) -> left(0xFFFE)
# gg2(bytes2): left(0xFFFF) -> left(0xFFFF)
# gg2(bytes2): left(0x000001) -> FAILURE
# gg2(bytes2): left(0x010001) -> FAILURE
# gg2(bytes2): -1 -> FAILURE
# gg4(bytes4): left(0) -> left(0)
# gg4(bytes4): left(1) -> left(1)
# gg4(bytes4): left(0xFFFFFFFE) -> left(0xFFFFFFFE)
# gg4(bytes4): left(0xFFFFFFFF) -> left(0xFFFFFFFF)
# gg4(bytes4): left(0x0000000001) -> FAILURE
# gg4(bytes4): left(0x0100000001) -> FAILURE
# gg4(bytes4): -1 -> FAILURE
# gg8(bytes8): left(0) -> left(0)
# gg8(bytes8): left(1) -> left(1)
# gg8(bytes8): left(0xFFFFFFFFFFFFFFFE) -> left(0xFFFFFFFFFFFFFFFE)
# gg8(bytes8): left(0xFFFFFFFFFFFFFFFF) -> left(0xFFFFFFFFFFFFFFFF)
# gg8(bytes8): left(0x000000000000000001) -> FAILURE
# gg8(bytes8): left(0x010000000000000001) -> FAILURE
# gg8(bytes8): -1 -> FAILURE
# g16(bytes16): left(0) -> left(0)
# g16(bytes16): left(1) -> left(1)
# g16(bytes16): left(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE) -> left(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)
# g16(bytes16): left(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF) -> left(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
# g16(bytes16): left(0x0000000000000000000000000000000001) -> FAILURE
# g16(bytes16): left(0x0100000000000000000000000000000001) -> FAILURE
# g16(bytes16): -1 -> FAILURE
