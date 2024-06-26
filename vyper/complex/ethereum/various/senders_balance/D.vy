interface C:
    def f() -> uint256: view

c: C

@deploy
@payable
def __init__(_c: address):
    self.c = C(create_forwarder_to(_c))

@external
@view
def f() -> uint256:
    return staticcall self.c.f()
