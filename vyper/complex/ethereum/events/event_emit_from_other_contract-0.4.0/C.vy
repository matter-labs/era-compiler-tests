interface D:
    def deposit(_id: bytes32): payable

d: D

@deploy
def __init__(_d: address):
    self.d = D(create_forwarder_to(_d))

@external
@payable
def deposit(_id: bytes32):
    extcall self.d.deposit(_id)
