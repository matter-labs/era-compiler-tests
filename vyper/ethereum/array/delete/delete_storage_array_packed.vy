data: uint120[3]

@external
def f() -> (uint120, uint120, uint120):
    self.data[0] = 123
    self.data[1] = 234
    self.data[2] = 345
    self.data = empty(uint120[3])
    return (self.data[0], self.data[1], self.data[2])
    
# ====
# compileViaYul: also
# ----
# f() -> 0, 0, 0
# gas irOptimized: 91098
