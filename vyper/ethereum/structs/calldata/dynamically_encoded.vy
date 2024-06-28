struct S:
    a: Bytes[100]

@external
@pure
def f(s: S) -> (uint256, uint256, uint256):
    return (len(s.a), convert(slice(s.a, 0, 1), uint256), convert(slice(s.a, 1, 1), uint256))

# ----
# f((bytes)): 32, 32, 2, 0x2a17000000000000000000000000000000000000000000000000000000000000 -> 2, 42, 23
