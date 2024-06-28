@external
def f(c: uint256[2]) -> (uint256, uint256):
    m1: uint256[2] = c
    return (m1[0], m1[1])
# ----
# f(uint256[2]): 43, 57 -> 43, 57
