import C as C

c: C

@external
def __init__(v: uint256, _c: address):
    self.c = C(create_forwarder_to(_c))
    self.c.init_(v)

@external
def f() -> uint256:
    return self.c.i()
