@external
def f(x: uint256[1][2][1], i: uint256, j: uint256, k: uint256) -> (uint256, uint256, uint256, uint256):
    return 1, 2, 1, x[i][j][k]

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(uint256[1][2][1],uint256,uint256,uint256): 42, 23, 0, 0, 0 -> 1, 2, 1, 42
# f(uint256[1][2][1],uint256,uint256,uint256): 42, 23, 0, 1, 0 -> 1, 2, 1, 23
# f(uint256[1][2][1],uint256,uint256,uint256): 42, 23, 0, 1, 0 -> 1, 2, 1, 23
# f(uint256[1][2][1],uint256,uint256,uint256): 42, 23, 0, 1, 1 -> FAILURE
# f(uint256[1][2][1],uint256,uint256,uint256): 42, 23, 1, 0, 0 -> FAILURE
# f(uint256[1][2][1],uint256,uint256,uint256): 42, 23, 0, 2, 0 -> FAILURE
# f(uint256[1][2][1],uint256,uint256,uint256): 42, 23, 0, 2, 0 -> FAILURE
