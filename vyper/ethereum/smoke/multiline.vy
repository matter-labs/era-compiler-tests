@external
def f(a: uint256, b: uint256, c: uint256, d: uint256, e: uint256) -> uint256:
    return a + b + c + d + e

# ----
# f(uint256,uint256,uint256,uint256,uint256): 1, 1, 1, 1, 1
# -> 5
# g()
# # g() does not exist #
# -> FAILURE
