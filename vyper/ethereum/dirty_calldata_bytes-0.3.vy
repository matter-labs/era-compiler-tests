@external
def f(b: Bytes[100]) -> bool:
    a: bytes1 = convert(slice(b, 3, 1), bytes1)
    r: uint256 = convert(convert(a, bytes32), uint256)
    return r == shift(convert(0x64, uint256), 248)

# ----
# f(bytes): 0x20, 0x04, "dead" -> true
