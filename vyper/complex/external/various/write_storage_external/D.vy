# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems
import C as C

c: C

@external
def __init__(_c: address):
    self.c = C(create_forwarder_to(_c))

@external
@payable
def f() -> uint256:
    self.c.g(3)
    return self.c.x()

@external
def g() -> uint256:
    self.c.g(8)
    return self.c.x()

@external
def h() -> uint256:
    self.c.h()
    return self.c.x()
