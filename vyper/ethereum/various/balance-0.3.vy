@external
@payable
def __init__():
    pass

@external
def getBalance() -> uint256:
    return self.balance

# ----
# constructor(), 23 wei ->
# getBalance() -> 23
