import D as D

d: D

@deploy
def __init__(_d: address):
    self.d = D(create_forwarder_to(_d))

@external
@payable
def deposit(_id: bytes32):
    self.d.deposit(_id)