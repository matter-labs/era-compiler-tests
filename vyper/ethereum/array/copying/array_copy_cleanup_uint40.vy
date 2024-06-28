# Issue 9832: Test to see if cleanup is performed properly after array copying
x: uint40[20]

@external
def f() -> bool:
    self.x[0] = 42
    self.x[1] = 42
    self.x[2] = 42
    self.x[3] = 42
    
    self.x[4] = 42
    self.x[5] = 42
    self.x[6] = 42
    self.x[7] = 42
    
    self.x[8] = 42
    self.x[9] = 42
    self.x[10] = 42
    self.x[11] = 42
    
    self.x[12] = 42
    self.x[13] = 42
    self.x[14] = 42
    self.x[15] = 42
    
    self.x[16] = 42
    self.x[17] = 42
    self.x[18] = 42
    self.x[19] = 42
    
    y: uint40[20] = empty(uint40[20])
    y[0] = 23
    self.x = y
    
    assert self.x[0] == 23
    assert self.x[1] == 0
    assert self.x[2] == 0
    assert self.x[3] == 0
    
    assert self.x[4] == 0
    assert self.x[5] == 0
    assert self.x[6] == 0
    assert self.x[7] == 0
    
    assert self.x[8] == 0
    assert self.x[9] == 0
    assert self.x[10] == 0
    assert self.x[11] == 0
    
    assert self.x[12] == 0
    assert self.x[13] == 0
    assert self.x[14] == 0
    assert self.x[15] == 0
    
    assert self.x[16] == 0
    assert self.x[17] == 0
    assert self.x[18] == 0
    assert self.x[19] == 0
    
    return True
    
# ----
# f() -> true
# gas irOptimized: 153260
# gas legacy: 155961
# gas legacyOptimized: 153588
