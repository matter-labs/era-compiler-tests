struct S:
    a: uint256
    b: uint256[2]
    c: uint256
    
@external
@pure
def f(s: S) -> (uint256, uint256, uint256, uint256):
    return s.a, s.b[0], s.b[1], s.c

# ----
# f((uint256,uint256[2],uint256)): 42, 1, 2, 23 -> 42, 1, 2, 23
