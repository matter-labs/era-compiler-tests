@external
@pure
def f(a: bool) -> bool:
    b: bool = a
    x: bool = b
    assert b
    return x

# ----
# f(bool): true -> true
# f(bool): false -> FAILURE
