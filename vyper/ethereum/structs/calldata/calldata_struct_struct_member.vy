struct S:
    a: uint64
    b: uint64
    
struct S1:
    a: uint256
    s: S
    c: uint256

@external
@pure
def f(s1: S1) -> (uint256, uint64, uint64, uint256):
    return s1.a, s1.s.a, s1.s.b, s1.c

# ====
# compileViaYul: also
# ----
# f((uint256,(uint64,uint64),uint256)): 42, 1, 2, 23 -> 42, 1, 2, 23
