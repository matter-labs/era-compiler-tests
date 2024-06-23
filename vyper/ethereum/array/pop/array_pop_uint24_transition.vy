a: uint256
b: uint256
c: uint256
data: DynArray[uint24, 30]

@external
def test() -> (uint24, uint24):
    for i: uint256 in range(1, 31):
        self.data.append(convert(i, uint24))
    for j: uint256 in range(1, 11):
        self.data.pop()
    x: uint24 = self.data[len(self.data) - 1]
    for k: uint256 in range(1, 11):
        self.data.pop()
    y: uint24 = self.data[len(self.data) - 1]
    for l: uint256 in range(1, 11):
        self.data.pop()
    return x, y
    
# ----
# test() -> 20, 10
# gas irOptimized: 158009
# gas legacy: 159279
# gas legacyOptimized: 152921
# storageEmpty -> 0
