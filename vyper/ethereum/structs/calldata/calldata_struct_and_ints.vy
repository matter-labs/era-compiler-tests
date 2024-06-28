struct S:
    a: uint256
    b: uint256
    
@external
@pure
def f(a: uint256, s: S, b: uint256) -> (uint256, uint256, uint256, uint256):
    return (a, s.a, s.b, b)
    
# ----
# f(uint256,(uint256,uint256),uint256): 1, 2, 3, 4 -> 1, 2, 3, 4
