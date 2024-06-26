interface C:
    def init_(): payable
    def x() -> uint256: view

@external
def f(c: address):
    _: address = create_forwarder_to(c)

@external
@payable
def g(_c: address) -> uint256:
    c: address = create_forwarder_to(_c)
    extcall C(c).init_(value = 11)
    return staticcall C(c).x()
