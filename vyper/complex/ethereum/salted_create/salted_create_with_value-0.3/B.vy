x: uint256

@external
@view
def getBalance() -> uint256:
    return self.balance * 1000 + self.x

@external
@payable
def init_(_x: uint256):
    self.x = _x
