interface Self:
    def g(n: uint256) -> (uint256, uint256): payable

@external
@payable
def g(n: uint256) -> (uint256, uint256):
    return (msg.value * 1000, n)

@external
@payable
def f(n: uint256) -> (uint256, uint256):
    return Self(self).g(n, value=10)

# ----
# g(uint256), 1 ether: 4 -> 1000000000000000000000, 4
# f(uint256), 11 ether: 2 -> 10000, 2
