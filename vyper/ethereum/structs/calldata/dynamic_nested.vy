struct S2:
    b: uint256
    
struct S:
    a: uint256
    children: DynArray[S2, 2]
    
@external
@pure
def f(s: S) -> (uint256, uint256, uint256, uint256):
    return (len(s.children), s.a, s.children[0].b, s.children[1].b)

# ----
# f((uint256,(uint256)[])): 32, 17, 64, 2, 23, 42 -> 2, 17, 23, 42
