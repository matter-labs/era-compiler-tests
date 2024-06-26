@deploy
@payable
def __init__():
    pass

@external
def getAddress() -> address:
    return self

@external
@view
def balance_() -> uint256:
    return self.balance
