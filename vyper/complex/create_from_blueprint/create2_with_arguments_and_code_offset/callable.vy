a: uint256
b: uint256
c: uint256

@deploy
def __init__(x: uint256, y: uint256, z: uint256):
    self.a = x
    self.b = y
    self.c = z

@external
@view
def get() -> uint256:
    return self.a + self.b + self.c
