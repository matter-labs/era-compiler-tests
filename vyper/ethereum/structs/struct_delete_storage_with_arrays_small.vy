struct S:
    a: uint32
    b: uint32[3]
    x: uint32[2]

s: S

@external
def f() -> uint256:
    self.s.a = 1
    self.s.b[0] = 2
    self.s.b[1] = 3
    self.s.x[0] = 4
    self.s.x[1] = 5
    self.s = empty(S)
    assert self.s.a == 0
    assert self.s.b[0] == 0
    assert self.s.b[1] == 0
    return convert(self.s.a, uint256)*2**160 + convert(self.s.b[0], uint256)**2*128 + convert(self.s.b[1], uint256)**2*96 + convert(self.s.b[2], uint256)**2*64 + convert(self.s.x[0], uint256)**2*32 + convert(self.s.x[1], uint256)

# ====
# compileViaYul: true
# ----
# f() -> 0
# gas irOptimized: 111896
