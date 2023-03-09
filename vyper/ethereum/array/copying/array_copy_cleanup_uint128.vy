# Test to see if cleanup is performed properly during array copying
x: uint128[4]

@external
def f() -> bool:
    self.x[0] = 42
    self.x[1] = 42
    self.x[2] = 42
    self.x[3] = 42

    y: uint128[4] = empty(uint128[4])
    y[0] = 23
    self.x = y

    assert self.x[0] == 23
    assert self.x[1] == 0

    assert self.x[2] == 0
    # Issue 9832: the cleanup was only performed for the first packed type leaving the rest of
    # the slot dirty.
    assert self.x[3] == 0

    return True
# ====
# compileViaYul: also
# ----
# f() -> true
# gas irOptimized: 92740
# gas legacy: 93035
# gas legacyOptimized: 92257
