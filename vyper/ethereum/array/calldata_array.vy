@external
@pure
def f(s: uint256[2]) -> (uint256, uint256):
    return (s[0], s[1])
# ----
# f(uint256[2]): 42, 23 -> 42, 23
