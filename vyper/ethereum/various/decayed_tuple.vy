@external
def f() -> uint256:
    x: uint256 = 1
    (x) = 2
    return x
    
# ----
# f() -> 2
