struct S:
    a: uint256
    b: uint256[2]
    c: uint256

@external
@pure
def f(c: S) -> (uint256, uint256, uint256, uint256):
    m: S = c
    return (m.a, m.b[0], m.b[1], m.c)

# ----
# f((uint256,uint256[2],uint256)): 42, 1, 2, 23 -> 42, 1, 2, 23
