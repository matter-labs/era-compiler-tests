x: uint256
y: uint256

@external
def __init__():
    self.x = 1
    self.y = 2
    
@external
def a() -> uint256:
    x: uint256 = self.y
    return x
    
# ----
# a() -> 2
