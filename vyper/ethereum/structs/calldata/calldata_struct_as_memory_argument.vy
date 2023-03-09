struct S:
    p1: uint128
    a: uint256[2][2]
    p2: uint32

@internal
def g(p1: uint32, s: S) -> (uint32, uint128, uint256, uint256, uint32):
    s.p1 += 1
    s.a[0][1] += 1
    return (p1, s.p1, s.a[0][0], s.a[1][1], s.p2)
    
@external
def f(p1: uint32, c: S) -> (uint32, uint128, uint256, uint256, uint32):
    return self.g(p1, c)

# ====
# compileViaYul: also
# ----
# f(uint32,(uint128,uint256[][2],uint32)): 55, 0x40, 77, 0x60, 88, 0x40, 0x40, 2, 1, 2 -> 55, 78, 1, 2, 88
