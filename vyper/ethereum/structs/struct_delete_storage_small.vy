struct S:
    y: uint64 
    z: uint64
    
s: S

@external
def f() -> uint256:
    self.s.y = 1
    self.s.z = 2
    self.s = empty(S)
    assert self.s.y == 0
    assert self.s.z == 0
    return convert(self.s.y, uint256) * 2**64 + convert(self.s.z, uint256)

# ----
# f() -> 0
