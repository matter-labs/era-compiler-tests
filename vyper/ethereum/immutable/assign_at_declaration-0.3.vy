a: immutable(uint8)

@external
def __init__():
    a = 2

@external
@view
def f() -> uint256:
    return convert(a, uint256)
    
# ----
# f() -> 2
