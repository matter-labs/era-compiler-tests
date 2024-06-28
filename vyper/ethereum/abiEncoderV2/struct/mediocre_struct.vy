struct S:
    c: address
@external
def f(a: uint256, s1: S[2], b: uint256) -> (uint256, address, uint256):
    return (a, s1[0].c, b)
# ----
# f(uint256,(address)[2],uint256): 7, 0, 0, 8 -> 7, 0, 8
