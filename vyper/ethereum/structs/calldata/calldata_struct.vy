struct S:
    a: uint256
    b: uint256
    
@external
@pure
def f(s: S) -> (uint256, uint256):
    return s.a, s.b

# ----
# f((uint256,uint256)): 42, 23 -> 42, 23
