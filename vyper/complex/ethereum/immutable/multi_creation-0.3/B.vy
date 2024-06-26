a: immutable(uint256)

@external
def __init__():
    a = 5

@external
@view
def f() -> uint256:
    return a
