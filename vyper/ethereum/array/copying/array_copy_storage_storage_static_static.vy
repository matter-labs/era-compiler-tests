data1: uint256[40]
data2: uint256[40]

@external
def test() -> (uint256, uint256):
    self.data1[30] = 4
    self.data1[2] = 7
    self.data1[3] = 9
    self.data2[3] = 8
    self.data1 = self.data2
    return self.data1[3], self.data1[30] # should be cleared

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# test() -> 8, 0
# gas irOptimized: 236090
# gas legacy: 234695
# gas legacyOptimized: 234103
