@external
def f() -> (uint256, uint256):
    x: uint256 = 3
    y: uint256 = 6
    z: uint256[2] = [x, y]
    return (z[0], z[1])

# ----
# f() -> 3, 6
