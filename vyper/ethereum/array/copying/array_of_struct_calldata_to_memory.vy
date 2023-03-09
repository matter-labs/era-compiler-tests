struct S:
    a: uint128
    b: uint64
    c: uint128
    
@external
def f(c: S[3]) -> (uint128, uint64, uint128):
    m: S[3] = c
    return (m[2].a, m[1].b, m[0].c)

# ====
# compileViaYul: also
# ----
# f((uint128,uint64,uint128)[3]): 0, 0, 12, 0, 11, 0, 10, 0, 0 -> 10, 11, 12
