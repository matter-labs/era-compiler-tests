x: uint128[4]
x1: uint64[4]
x2: uint120[4]

@external
def f() -> uint128:
    self.x[0] = 42
    self.x[1] = 42
    self.x[2] = 42
    self.x[3] = 42
    y: uint128[4] = empty(uint128[4])
    y[0] = 23
    self.x = y
    assert self.x[0] == 23
    assert self.x[2] == 0
    assert self.x[3] == 0
    return self.x[1]

@external
def g() -> uint64:
    self.x1[0] = 42
    self.x1[1] = 42
    self.x1[2] = 42
    self.x1[3] = 42
    y: uint64[4] = empty(uint64[4])
    y[0] = 23
    self.x1 = y
    assert self.x1[0] == 23
    assert self.x1[2] == 0
    assert self.x1[3] == 0
    return self.x1[1]
    
@external
def h() -> uint120:
    self.x2[0] = 42
    self.x2[1] = 42
    self.x2[2] = 42
    self.x2[3] = 42
    y: uint120[4] = empty(uint120[4])
    y[0] = 23
    self.x2 = y
    assert self.x2[0] == 23
    assert self.x2[2] == 0
    assert self.x2[3] == 0
    return self.x2[1]

# ====
# compileViaYul: also
# ----
# f() -> 0
# gas irOptimized: 92800
# gas legacy: 93006
# gas legacyOptimized: 92261
# g() -> 0
# h() -> 0
# gas irOptimized: 92862
# gas legacy: 93028
# gas legacyOptimized: 92303
