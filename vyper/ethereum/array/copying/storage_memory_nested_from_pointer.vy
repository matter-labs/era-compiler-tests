a: uint72[5][4]

@external
def f() -> (uint72, uint72, uint72, uint72, uint72, uint72, uint72):
    self.a[0][0] = 1
    self.a[0][3] = 2
    self.a[1][1] = 3
    self.a[1][4] = 4
    self.a[2][0] = 5
    self.a[3][2] = 6
    self.a[3][3] = 7
    a_: uint72[5][4] = self.a
    m: uint72[5][4] = a_
    return (m[0][0], m[0][3], m[1][1], m[1][4], m[2][0], m[3][2], m[3][3])
    
# ----
# f() -> 1, 2, 3, 4, 5, 6, 7
# gas irOptimized: 207785
# gas legacy: 212330
# gas legacyOptimized: 211491
