b: uint8
s: DynArray[DynArray[uint120, 3], 1]
a: uint8

@external
def __init__():
    self.b = 23
    self.a = 17

@external
def f() -> uint120:
    self.s = empty(DynArray[DynArray[uint120, 3], 1])
    m: DynArray[uint120, 3] = [1, 0, 0]
    m[0] = 1
    self.s.append(m)
    assert len(self.s) == 1
    assert len(self.s[0]) == len(m)
    assert len(self.s[0]) > 0
    return self.s[0][0]
    
# ----
# f() -> 1
