a: uint256
b: uint256
c: uint256
inner: DynArray[uint16, 16]
data: DynArray[DynArray[uint16, 20], 48]

@external
def __init__():
    self.inner = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

@external
def test() -> (uint256, uint256, uint256):
    for i in range(1, 49):
        self.data.append(self.inner)
    for j in range(1, 11):
        self.data.pop()
    x: uint256 = convert(self.data[len(self.data) - 1][0], uint256)
    for k in range(1, 11):
        self.data.pop()
    y: uint256 = convert(self.data[len(self.data) - 1][1], uint256)
    for l in range(1, 11):
        self.data.pop()
    z: uint256 = convert(self.data[len(self.data) - 1][2], uint256)
    for m in range(1, 19):
        self.data.pop()
    self.inner = empty(DynArray[uint16, 16])
    return x, y, z
    
# ----
# test() -> 1, 2, 3
# gas irOptimized: 2280132
# gas legacy: 2273434
# gas legacyOptimized: 2261820
# storageEmpty -> 0
