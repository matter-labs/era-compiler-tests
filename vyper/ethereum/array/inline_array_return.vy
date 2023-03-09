tester: uint8[5]

@external
def f() -> uint8[5]:
    return ([1, 2, 3, 4, 5])

@internal
def _f() -> uint8[5]:
    return ([1, 2, 3, 4, 5])

@external
def test() -> (uint8, uint8, uint8, uint8, uint8):
    self.tester = self._f()
    return (self.tester[0], self.tester[1], self.tester[2], self.tester[3], self.tester[4])

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 1, 2, 3, 4, 5
