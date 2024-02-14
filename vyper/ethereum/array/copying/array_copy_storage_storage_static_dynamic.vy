data1: uint256[9]
data2: DynArray[uint256, 9]

@external
def test() -> (uint256, uint256):
    self.data1[8] = 4
    self.data2 = convert(self.data1, DynArray[uint256, 9])
    x: uint256 = len(self.data2)
    y: uint256 = self.data2[8]
    return x,y

# ----
# test() -> 9, 4
# gas irOptimized: 123143
# gas legacy: 123579
# gas legacyOptimized: 123208
