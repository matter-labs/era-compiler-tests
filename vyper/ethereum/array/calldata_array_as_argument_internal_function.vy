@internal
def f(c: uint256[4]) -> (uint256, uint256):
    return (4, c[0])

@external
def g(c: uint256[4]) -> (uint256, uint256):
    return self.f(c)

# ----
# g(uint256[4]): 1, 2, 3, 4 -> 4, 1
