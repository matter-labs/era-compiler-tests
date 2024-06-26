received: public(uint256)

@external
def recv(x: uint256):
    self.received += x + 1

@external
def __default__():
    self.received = convert(0x80, uint256)