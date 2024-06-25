# Added custom balance functions

interface Other:
    def getAddress() -> address: nonpayable
    def balance_() -> uint256: view

other: Other

@deploy
@payable
def __init__(_other: address):
    self.other = Other(create_forwarder_to(_other, value = 500))

@external
def getAddress() -> address:
    return extcall self.other.getAddress()

@external
@view
def balance_() -> uint256:
    return self.balance

@external
@view
def balance_other() -> uint256:
    return staticcall self.other.balance_()