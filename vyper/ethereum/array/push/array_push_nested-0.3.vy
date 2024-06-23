b: uint8
s: DynArray[DynArray[uint120, 1], 1]
a: uint8

@external
def __init__():
    self.b = 23
    self.a = 17

@external
def f():
    self.s.append([])
    assert len(self.s) == 1
    assert len(self.s[0]) == 0
    self.s[0].append(0)
    assert len(self.s[0]) == 1
    assert self.s[0][0] == 0

# ----
# f() ->
