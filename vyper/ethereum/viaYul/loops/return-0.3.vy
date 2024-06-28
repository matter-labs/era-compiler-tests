@external
def f() -> uint256:
    x: uint256 = 1
    for a in range(10):
        return x
        x = x + x
    x = x + 10
    return x
    
# ----
# f() -> 1
