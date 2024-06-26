s: HashMap[uint256, uint256]

@external
def set(key: uint256, _value: uint256):
    self.s[key] = _value

@external
@view
def get(key: uint256) -> uint256:
    return self.s[key]
