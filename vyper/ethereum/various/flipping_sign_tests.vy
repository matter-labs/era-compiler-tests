@external
def f() -> bool:
    x: int256 = min_value(int256)
    assert -x == x
    return True

# ----
# f() -> FAILURE
