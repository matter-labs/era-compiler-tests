struct S:
    a: uint32
    x: DynArray[S, 2]
s: S

@external
def f() -> (uint256, uint256, uint256):
    self.s.a = 1
    self.s.x.append(empty(S))
    self.s.x.append(empty(S))
    self.s.x[0].a = 2
    self.s.x[1].a = 3
    self.s = empty(S)
    assert self.s.a == 0
    assert len(self.s.x) == 0
    return self.s.a, len(self.s.x[0]), len(self.s.x[1])

# ----
# f() -> 0, 0, 0
# gas irOptimized: 117101
