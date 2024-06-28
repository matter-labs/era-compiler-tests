struct S:
    a: uint128
    b: uint64
    c: uint128
unused: uint128[137]
s: S[3]
@external
def f(c: S[3]) -> (uint128, uint64, uint128):
    self.s = c
    return (self.s[2].a, self.s[1].b, self.s[0].c)

# ----
# f((uint128,uint64,uint128)[3]): 0, 0, 12, 0, 11, 0, 10, 0, 0 -> 10, 11, 12
# gas irOptimized: 121048
