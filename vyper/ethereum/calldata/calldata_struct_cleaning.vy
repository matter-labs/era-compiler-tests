struct S:
    a: uint8
    b: bytes1

@external
@pure
def f(s: S) -> (uint256, bytes32):
    tmp1: uint8 = s.a
    tmp2: bytes1 = s.b
    return (convert(tmp1, uint256), convert(tmp2, bytes32))

# ----
# f((uint8,bytes1)): 0x12, hex"3400000000000000000000000000000000000000000000000000000000000000" -> 0x12, hex"3400000000000000000000000000000000000000000000000000000000000000" # double check that the valid case goes through #
# f((uint8,bytes1)): 0x1234, hex"5678000000000000000000000000000000000000000000000000000000000000" -> FAILURE
# f((uint8,bytes1)): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> FAILURE
