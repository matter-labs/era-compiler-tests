interface A:
    def f() -> uint256: view

interface B:
    def f() -> uint256: view

a: immutable(uint256)
x: public(uint256)
y: public(uint256)

@deploy
def __init__(_a: address, _b: address):
    a = 3
    self.x = staticcall A(create_forwarder_to(_a)).f()
    self.y = staticcall B(create_forwarder_to(_b)).f()

@external
def f(_a: address, _b: address) -> (uint256, uint256, uint256):
    return (a, staticcall A(create_forwarder_to(_a)).f(), staticcall B(create_forwarder_to(_b)).f())