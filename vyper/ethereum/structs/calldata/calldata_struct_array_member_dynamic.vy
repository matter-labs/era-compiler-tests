struct S:
    a: uint32
    b: DynArray[uint256, 2]
    c: uint64
    
@external
@pure
def f(s: S) -> (uint32, uint256, uint256, uint64):
    a: uint32 = s.a
    b0: uint256 = s.b[0]
    b1: uint256 = s.b[1]
    c: uint64 = s.c
    return a, b0, b1, c

# ----
# f((uint32,uint256[],uint64)): 0x20, 42, 0x60, 23, 2, 1, 2 -> 42, 1, 2, 23
