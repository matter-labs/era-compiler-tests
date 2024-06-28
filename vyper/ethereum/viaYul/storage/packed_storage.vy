x: uint16
y: bytes1
z: uint16

@external
def f(a: uint8) -> uint256:
    self.x = convert(a, uint16)
    self.y = convert(convert(self.x, uint8) + 1, bytes1)
    self.z = convert(convert(self.y, uint8) + 1, uint16)
    self.x = self.z + 1
    return convert(self.x, uint256)
    
# ----
# f(uint8): 6 -> 9
