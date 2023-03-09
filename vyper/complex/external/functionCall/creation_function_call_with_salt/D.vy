# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems
import C as C

c: C

@external
def __init__(v: uint256, _c: address):
    self.c = C(create_forwarder_to(_c, salt = convert(convert("abc", Bytes[3]), bytes32)))
    self.c.init_(v)

@external
def f() -> uint256:
    return self.c.i()
