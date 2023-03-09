# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems
import C as C

@external
def f(c: address):
    _: address = create_forwarder_to(c)

@external
@payable
def g(_c: address) -> uint256:
    c: address = create_forwarder_to(_c)
    C(c).init_(value = 11)
    return C(c).x()
