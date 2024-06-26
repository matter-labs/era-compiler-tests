value: uint256

@external
def set(x: uint256):
    self.value = x

@external
@view
def get() -> uint256:
    return self.value
