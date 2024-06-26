data: DynArray[uint16, 48]

@external
def test() -> (uint16, uint16, uint16):
    for i: uint256 in range(1, 49):
        self.data.append(convert(i, uint16))
    for j: uint256 in range(1, 11):
        self.data.pop()
    x: uint16 = self.data[len(self.data) - 1]
    for k: uint256 in range(1, 11):
        self.data.pop()
    y: uint16 = self.data[len(self.data) - 1]
    for l: uint256 in range(1, 11):
        self.data.pop()
    z: uint16 = self.data[len(self.data) - 1]
    for m: uint256 in range(1, 19):
        self.data.pop()
    return x, y, z
    
# ----
# test() -> 38, 28, 18
# gas irOptimized: 186364
# gas legacy: 189492
# gas legacyOptimized: 178294
# storageEmpty -> 0
