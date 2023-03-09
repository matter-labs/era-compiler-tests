struct Data:
    x: uint256
    y: uint256
data1: Data[9]
data2: Data[9]

@external
def test() -> (uint256, uint256):
    self.data1[8].x = 4
    self.data1[8].y = 5
    self.data2 = self.data1
    x: uint256 = self.data2[8].x
    y: uint256 = self.data2[8].y
    for i in range(9):
        self.data1[i] = empty(Data)
    self.data2 = self.data1
    return x, y

# ====
# compileViaYul: also
# ----
# test() -> 4, 5
# gas irOptimized: 238826
# gas legacy: 238736
# gas legacyOptimized: 237159
# storageEmpty -> 1
