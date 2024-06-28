@external
@pure
def f(n: uint256) -> uint256:
    a: uint256[3][2] = empty(uint256[3][2])
    a[0][0] = n
    return a[0][0]

# ----
# f(uint256): 42 -> 42
