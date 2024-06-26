a: immutable(uint256)

@deploy
def __init__():
    a = 5

@external
@view
def f() -> uint256:
    return a
