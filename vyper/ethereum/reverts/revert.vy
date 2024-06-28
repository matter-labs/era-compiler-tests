a: public(uint256)

@deploy
def __init__():
    self.a = 42

@external
def f():
    self.a = 1
    raise


# ----
# f() -> FAILURE
# a() -> 42
