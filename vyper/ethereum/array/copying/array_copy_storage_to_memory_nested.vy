a: uint256[2][2]

@external
def f() -> uint256[2][2]:
    self.a[0][0] = 0
    self.a[0][1] = 1
    self.a[1][0] = 2
    self.a[1][1] = 3
    m: uint256[2][2] = self.a
    return m

# ----
# f() -> 0, 1, 2, 3
# gas irOptimized: 161780
# gas legacy: 162278
# gas legacyOptimized: 159955
