@external
@payable
def f() -> uint256:
    return self.balance * msg.value
