@external
def f(_a: Bytes[100], _b: Bytes[100], _c: Bytes[100]) -> (uint256, bytes32, bytes32, bytes32):
    _a_: Bytes[100] = _a
    _c_: Bytes[100] = _c
    return (len(_a_) + len(_b) + len(_c_), convert(slice(_a_, 1, 1), bytes32), convert(slice(_b, 1, 1), bytes32), convert(slice(_c_, 1, 1), bytes32))
interface Self:
    def f(_a: Bytes[100], _b: Bytes[100], _c: Bytes[100]) -> (uint256, bytes32, bytes32, bytes32): nonpayable
@external
def g() -> (uint256, bytes32, bytes32, bytes32):
    x: Bytes[100] = b"\x00\x08\x00"
    y: Bytes[100] = b"\x00\x09\x00\x00"
    z: Bytes[100] = b"\x00\x0a\x00\x00\x00\x00\x00"
    return Self(self).f(x, y, z)
# ----
# g() -> 0x0e, 0x0800000000000000000000000000000000000000000000000000000000000000, 0x0900000000000000000000000000000000000000000000000000000000000000, 0x0a00000000000000000000000000000000000000000000000000000000000000
