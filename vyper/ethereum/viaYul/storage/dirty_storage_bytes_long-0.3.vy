b: Bytes[100]

@external
def f() -> bool:
    self.b = b"deadbeefdeadbeefdeadbeefdeadbeef"
    s: bytes1 = convert(slice(self.b, 31, 1), bytes1)
    r: uint256 = convert(convert(s, bytes32), uint256)
    return r == shift(convert(0x66, uint256), 248)

# ----
# f() -> true
