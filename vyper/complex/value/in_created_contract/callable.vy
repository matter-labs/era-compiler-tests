@external
@payable
def f() -> uint256:
    return self.balance*(2**128)+msg.value
