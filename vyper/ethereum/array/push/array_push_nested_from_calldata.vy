b: uint8
s: DynArray[DynArray[uint120, 3], 1]
a: uint8

@deploy
def __init__():
    self.b = 23
    self.a = 17

@external
def f(c: DynArray[uint120, 3]) -> uint120:
    self.s.append(c)
    assert len(self.s) == 1
    assert len(self.s[0]) == len(c)
    assert len(self.s[0]) > 0
    return self.s[0][0]

# ----
# f(uint120[]): 0x20, 3, 1, 2, 3 -> 1
# gas irOptimized: 112832
# gas legacy: 113686
# gas legacyOptimized: 113499
