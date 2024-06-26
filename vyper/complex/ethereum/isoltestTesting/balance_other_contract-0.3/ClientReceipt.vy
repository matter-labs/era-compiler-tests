# Added custom balance functions
import Other as Other

other: Other

@external
@payable
def __init__(_other: address):
    self.other = Other(create_forwarder_to(_other, value = 500))

@external
def getAddress() -> address:
    return self.other.getAddress()

@external
@view
def balance_() -> uint256:
    return self.balance

@external
@view
def balance_other() -> uint256:
    return self.other.balance_()