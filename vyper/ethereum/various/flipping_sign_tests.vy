@external
def f() -> bool:
    x: int256 = min_value(int256)
    assert -x == x
    return True

# ====
# compileToEwasm: also
# ----
# f() -> FAILURE
