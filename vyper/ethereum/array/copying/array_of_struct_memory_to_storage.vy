struct S:
    a: uint128
    b: uint64
    c: uint128
unused: uint128[137]
s: S[3]
@external
def f() -> (uint128, uint64, uint128):
    m: S[3] = empty(S[3])
    m[2].a = 10
    m[1].b = 11
    m[0].c = 12
    self.s = m
    return (self.s[2].a, self.s[1].b, self.s[0].c)
# ====
# compileViaYul: true
# ----
# f() -> 10, 11, 12
# gas irOptimized: 119149
