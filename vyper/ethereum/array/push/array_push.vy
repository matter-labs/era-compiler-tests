data: DynArray[uint256, 5]

@external
def test() -> (uint256, uint256, uint256, uint256):
    self.data.append(5)
    x: uint256 = self.data[0]
    self.data.append(4)
    y: uint256 = self.data[1]
    self.data.append(3)
    l: uint256 = len(self.data)
    z: uint256 = self.data[2]
    return x, y, z, l

# ----
# test() -> 5, 4, 3, 3
# gas irOptimized: 111448
# gas legacy: 111838
# gas legacyOptimized: 111128
