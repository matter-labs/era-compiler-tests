value: uint256

@external
def set(_value: uint256):
    self.value = _value

@external
@view
def get() -> uint256:
    return self.value
