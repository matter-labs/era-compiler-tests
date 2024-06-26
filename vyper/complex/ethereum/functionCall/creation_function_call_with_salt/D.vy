interface C:
    def init_(newI: uint256): nonpayable
    def i() -> uint256: view

c: C

@deploy
def __init__(v: uint256, _c: address):
    self.c = C(create_forwarder_to(_c, salt = convert(convert("abc", Bytes[3]), bytes32)))
    extcall self.c.init_(v)

@external
def f() -> uint256:
    return staticcall self.c.i()
