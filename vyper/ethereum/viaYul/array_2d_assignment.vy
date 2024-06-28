@external
@pure
def f(n: uint256) -> uint256:
    a: uint256[3][2] = empty(uint256[3][2])
    a[1][1] = n
    b: uint256[3] = a[1]
    return b[1]
    
# ----
# f(uint256): 42 -> 42
