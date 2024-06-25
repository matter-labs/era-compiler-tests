interface C:
    def f(y: uint256): payable
    def g(y: uint256): nonpayable
    def h(): nonpayable
    def x() -> uint256: view

c: C

@deploy
def __init__(_c: address):
    self.c = C(create_forwarder_to(_c))

@external
@payable
def f() -> uint256:
    extcall self.c.g(3)
    return staticcall self.c.x()

@external
def g() -> uint256:
    extcall self.c.g(8)
    return staticcall self.c.x()

@external
def h() -> uint256:
    extcall self.c.h()
    return staticcall self.c.x()
