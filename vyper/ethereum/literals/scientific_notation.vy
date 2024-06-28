@external
def f() -> uint256:
    return as_wei_value(2e10, "wei")
    
@external
def g() -> uint256:
    return as_wei_value(200e-2, "wei")

@external
def h() -> uint256:
    return convert(2.5e1, uint256)

@external
def i() -> int256:
    return convert(-2e10, int256)

@external
def j() -> int256:
    return convert(-200e-2, int256)

@external
def k() -> int256:
    return convert(-2.5e1, int256)

# ----
# f() -> 20000000000
# g() -> 2
# h() -> 25
# i() -> -20000000000
# j() -> -2
# k() -> -25
