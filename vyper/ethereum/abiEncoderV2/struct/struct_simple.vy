struct S:
    a: uint256
    b: uint8
    c: uint8
    d: bytes32
@external
@pure
def f(s: S) -> (uint256, uint256, uint256, uint256):
    return (s.a, convert(s.b, uint256), convert(s.c, uint256), convert(s.d, uint256))
# ----
# f((uint256,uint8,uint8,bytes32)): 1, 2, 3, "ab" -> 1, 2, 3, left(0x6162)
