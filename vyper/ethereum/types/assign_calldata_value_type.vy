@external
@pure
def f(x: uint256) -> (uint256, uint256):
    b: uint256 = x
    x = 42
    return (x, b)

# ----
# f(uint256): 23 -> 42, 23
