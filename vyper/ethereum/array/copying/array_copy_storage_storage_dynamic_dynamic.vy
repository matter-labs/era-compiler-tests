data1: DynArray[uint256, 10]
data2: DynArray[uint256, 10]

@external
def test() -> (uint256, uint256):
    self.data2.append(11)
    self.data1.append(0)
    self.data1.append(1)
    self.data1.append(2)
    self.data1.append(3)
    self.data1.append(4)
    self.data2 = self.data1
    assert self.data1[0] == self.data2[0]
    x: uint256 = len(self.data2)
    y: uint256 = self.data2[4]
    return x, y

# ----
# test() -> 5, 4
# gas irOptimized: 272950
# gas legacy: 270834
# gas legacyOptimized: 269960
