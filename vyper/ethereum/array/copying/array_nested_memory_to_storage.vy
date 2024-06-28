unused: uint128[13]
a: uint256[2][3]
    
@external
def test3() -> uint256:
    m: uint256[2][3] = empty(uint256[2][3])
    m[0][0] = 7
    m[1][0] = 8
    m[2][0] = 9
    m[0][1] = 7
    m[1][1] = 8
    m[2][1] = 9
    self.a = m
    return self.a[0][0] + self.a[1][0] + self.a[2][1]
    
# ----
# test3() -> 24
# gas irOptimized: 133621
# gas legacy: 134295
# gas legacyOptimized: 133383
