@external
def f(x: uint256) -> uint256:
    if x > 10:
        return x + 10
    else:
        raise

# ----
# f(uint256): 11 -> 21
# f(uint256): 1 -> FAILURE
