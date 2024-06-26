interface C:
    def init_(): nonpayable
    def i() -> uint256: view

@external
def f(_c: address) -> uint256:
    c: address = create_forwarder_to(_c)
    extcall C(c).init_()
    return staticcall C(c).i()
