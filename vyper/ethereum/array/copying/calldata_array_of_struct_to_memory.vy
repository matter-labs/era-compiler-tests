struct S:
    a: uint256
    b: uint256
    
@external
@pure
def f(s: S[2]) -> (uint256, uint256, uint256, uint256, uint256):
    m: S[2] = s
    return (2, m[0].a, m[0].b, m[1].a, m[1].b)

# ----
# f((uint256,uint256)[2]): 0x1, 0x2, 0x3, 0x4 -> 2, 1, 2, 3, 4
