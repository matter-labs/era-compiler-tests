@external
@pure
def f(a: uint256, _b: Bytes[100], c: uint256) -> (uint256, uint256, bytes1, uint256):
    b: Bytes[100] = _b
    return (a, len(b), convert(slice(b, 3, 1), bytes1), c)

@external
@pure
def f_external(a: uint256, b: Bytes[100], c: uint256) -> (uint256, uint256, bytes1, uint256):
    return (a, len(b), convert(slice(b, 3, 1), bytes1), c)

# ====
# compileViaYul: also
# ----
# f(uint256,bytes,uint256): 6, 0x60, 9, 7, "abcdefg" -> 6, 7, "d", 9
# f_external(uint256,bytes,uint256): 6, 0x60, 9, 7, "abcdefg" -> 6, 7, "d", 9
