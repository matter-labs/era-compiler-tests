struct S:
    a: int256
    b: uint256
    c: bytes32
@external
@pure
def f(s: S) -> S:
    return s
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f((int256,uint256,bytes32)): 0xff010, 0xff0002, "abcd" -> 0xff010, 0xff0002, "abcd"
# f((int256,uint256,bytes32)): 0xff010, 0xff0002, 0x1111222233334444555566667777888800000000000000000000000000000000 -> 0xff010, 0xff0002, left(0x11112222333344445555666677778888)
