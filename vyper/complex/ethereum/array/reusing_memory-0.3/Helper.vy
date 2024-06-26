# Invoke some features that use memory and test that they do not interfere with each other.
flag: public(uint256)

@external
def init_(x: uint256):
    self.flag = x