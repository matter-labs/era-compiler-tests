struct S:
    p1: uint128
    a: uint256[2][2]
    p2: uint32

s: S

@external
def f(p1: uint32, c: S) -> (uint32, uint128, uint256, uint256, uint32):
    self.s = c
    assert self.s.a[0][0] == c.a[0][0]
    assert self.s.a[1][1] == c.a[1][1]
    return (p1, self.s.p1, self.s.a[0][0], self.s.a[1][1], self.s.p2)

# ====
# compileViaYul: also
# ----
# f(uint32,(uint128,uint256[2][2],uint32)): 55, 77, 1, 2, 1, 2, 88 -> 55, 77, 1, 2, 88
# gas irOptimized: 203397
# gas legacy: 209194
# gas legacyOptimized: 203583
