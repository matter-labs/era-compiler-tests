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
    m: S2 = s
    return (m.a, m.b, m.s.a, m.s.b, m.c)

# ----
# f((uint256,uint256,(uint256,uint256),uint256)): 1, 2, 3, 4, 5 -> 1, 2, 3, 4, 5
