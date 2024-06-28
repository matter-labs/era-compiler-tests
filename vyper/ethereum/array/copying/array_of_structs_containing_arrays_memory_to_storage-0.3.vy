struct S:
    p: uint136
    b: uint128[3]
    c: uint128[3]
    
s: S[3]

@external
def f() -> (uint256, uint256, uint128, uint128):
    m: S[3] = empty(S[3])
    m[1] = S({p: 0, b: [1, 2, 3], c: empty(uint128[3])})
    m[1].c[0] = 1
    m[1].c[1] = 2
    m[1].c[2] = 3
    self.s = m
    assert self.s[1].b[1] == m[1].b[1]
    assert self.s[1].c[0] == m[1].c[0]
    return (3, 3, self.s[1].b[2], self.s[1].c[0])
    
# ----
# f() -> 3, 3, 3, 1
# gas irOptimized: 183316
