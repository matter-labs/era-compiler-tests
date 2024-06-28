@external
def f() -> bool:
    x: int256 = -2**255
    assert -x == x
    return True

# ----
# f() -> FAILURE
