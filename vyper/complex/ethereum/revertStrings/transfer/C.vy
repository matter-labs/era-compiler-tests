a: address

@deploy
def __init__(_a: address):
    self.a = create_forwarder_to(_a)

@external
@payable
def __default__():
    pass

@external
def f():
    send(self.a, as_wei_value(1, "wei"))

@external
def h():
    send(self.a, as_wei_value(100, "ether"))

@external
@view
def g() -> uint256:
    return self.balance
