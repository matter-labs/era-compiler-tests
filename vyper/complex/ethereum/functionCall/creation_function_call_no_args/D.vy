import C as C

@external
def f(_c: address) -> uint256:
    c: address = create_forwarder_to(_c)
    C(c).init_()
    return C(c).i()
