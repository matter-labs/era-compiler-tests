import C as C

c: C

@external
@payable
def __init__(_c: address):
    self.c = C(create_forwarder_to(_c))

@external
@view
def f() -> uint256:
    return self.c.f()
