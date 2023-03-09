data: DynArray[uint256, 5]

@external
def test() -> (uint256, uint256):
    self.data.append(7)
    self.data.append(3)
    x: uint256 = len(self.data)
    self.data.pop()
    x = len(self.data)
    self.data.pop()
    l: uint256 = len(self.data)
    return x, l
    
# ----
# test() -> 1, 0
