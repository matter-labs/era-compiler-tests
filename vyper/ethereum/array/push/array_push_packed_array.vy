x: DynArray[uint80, 10]

@external
def test() -> (uint80, uint80, uint80, uint80):
    self.x.append(1)
    self.x.append(2)
    self.x.append(3)
    self.x.append(4)
    self.x.append(5)
    self.x.pop()
    return (self.x[0], self.x[1], self.x[2], self.x[3])

# ----
# test() -> 1, 2, 3, 4
# gas irOptimized: 93017
# gas legacy: 92798
# gas legacyOptimized: 92062
