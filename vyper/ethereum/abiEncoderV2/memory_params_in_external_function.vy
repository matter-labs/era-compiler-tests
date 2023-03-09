interface Self:
    def f(a: Bytes[100], b: Bytes[100], c: uint256[4]) -> (uint256, bytes1, uint256, bytes1, uint256, uint256): pure

@external
@pure
def f(a: Bytes[100], b: Bytes[100], c: uint256[4]) -> (uint256, bytes1, uint256, bytes1, uint256, uint256):
    return (len(a), convert(slice(a, 1, 1), bytes1), len(b), convert(slice(b, 2, 1), bytes1), 4, c[3])

@external
def g() -> (uint256, bytes1, uint256, bytes1, uint256, uint256):
    x: uint256[4] = empty(uint256[4])
    x[3] = 7
    return Self(self).f(convert("abc", Bytes[100]), convert("def", Bytes[100]), x)

# ====
# compileViaYul: also
# ----
# g() -> 3, 0x6200000000000000000000000000000000000000000000000000000000000000, 3, 0x6600000000000000000000000000000000000000000000000000000000000000, 4, 7
