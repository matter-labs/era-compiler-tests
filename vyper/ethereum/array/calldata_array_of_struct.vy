struct S:
    a: uint256
    b: uint256

@external
@pure
def f(s: S[2]) -> (uint256, uint256, uint256, uint256, uint256):
    return (2, s[0].a, s[0].b, s[1].a, s[1].b)

# ----
# f((uint256,uint256)[2]): 0x1, 0x2, 0x3, 0x4 -> 2, 1, 2, 3, 4
