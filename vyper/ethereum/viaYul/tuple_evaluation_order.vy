x: uint256
y: uint256

@internal
def set(v1: uint256, v2: uint256, v3: uint256) -> (uint256, uint256, uint256):
    self.x = v1
    self.x = v2
    self.x = v3
    return v1, v2, v3
    
@external
def f() -> (uint256, uint256):
    (self.y, self.y, self.y) = self.set(1, 2, 3)
    assert self.y == 1 and self.x == 3
    return (self.x, self.y)
    
# ----
# f() -> 3, 1
