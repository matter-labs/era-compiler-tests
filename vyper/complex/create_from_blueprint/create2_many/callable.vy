first: uint256[2]
second: uint8

@external
def set(_first: uint256[2], _second: uint8):
    self.first = _first
    self.second = _second

@external
@view
def get() -> (uint256[2], uint8):
    return (self.first, self.second)
