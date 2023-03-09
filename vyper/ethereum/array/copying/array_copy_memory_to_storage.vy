unused: uint128[13]
a: uint32[3]
b: uint32[3]

@external
def g() -> (uint32, uint32, uint32):
    m: uint32[3] = empty(uint32[3])
    m[0] = 1
    m[1] = 2
    m[2] = 3
    self.a = m
    self.b = m
    assert self.a[0] == self.b[0] and self.a[1] == self.b[1] and self.a[2] == self.b[2]
    return (self.a[0], self.b[1], self.a[2])

# ====
# compileViaYul: also
# ----
# g() -> 1, 2, 3
