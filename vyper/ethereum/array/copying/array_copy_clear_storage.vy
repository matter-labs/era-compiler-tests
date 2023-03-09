x: uint256[4]

@external
def f() -> uint256:
    self.x[0] = 42
    self.x[1] = 42
    self.x[2] = 42
    self.x[3] = 42
    y: uint256[4] = empty(uint256[4])
    y[0] = 23
    self.x = y
    assert self.x[1] == 0
    assert self.x[2] == 0
    return self.x[3]
    
# ====
# compileViaYul: also
# ----
# f() -> 0
# gas irOptimized: 135098
# gas legacy: 135313
# gas legacyOptimized: 134548
