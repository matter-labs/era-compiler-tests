x: constant(uint256) = as_wei_value(1, "gwei")

@external
@view
def f() -> uint256:
    return x
    
# ----
# f() -> 1000000000
