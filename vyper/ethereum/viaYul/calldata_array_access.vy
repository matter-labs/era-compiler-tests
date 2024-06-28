@external
def f(x: uint256[2], i: uint256) -> uint256:
    return x[i]
    
@external
def f2(x: uint256[1][1], i: uint256, j: uint256) -> uint256:
    return x[i][j]

# ----
# f(uint256[2],uint256): 23, 42, 0 -> 23
# f(uint256[2],uint256): 23, 42, 1 -> 42
# f(uint256[2],uint256): 23, 42, 2 -> FAILURE
# f2(uint256[1][1],uint256,uint256): 23, 0, 0 -> 23
