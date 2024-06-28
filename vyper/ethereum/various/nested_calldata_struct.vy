struct S1:
    a: uint256
    b: uint256
    
struct S2:
    a: uint256
    b: uint256
    s: S1
    c: uint256
    
@external
@pure
def f(s: S2) -> (uint256, uint256, uint256, uint256, uint256):
    return (s.a, s.b, s.s.a, s.s.b, s.c)

# ----
# f((uint256,uint256,(uint256,uint256),uint256)): 1, 2, 3, 4, 5 -> 1, 2, 3, 4, 5
