import A as A
import B as B

a: immutable(uint256)
x: public(uint256)
y: public(uint256)

@deploy
def __init__(_a: address, _b: address):
    a = 3
    self.x = A(create_forwarder_to(_a)).f()
    self.y = B(create_forwarder_to(_b)).f()

@external
def f(_a: address, _b: address) -> (uint256, uint256, uint256):
    return (a, A(create_forwarder_to(_a)).f(), B(create_forwarder_to(_b)).f())