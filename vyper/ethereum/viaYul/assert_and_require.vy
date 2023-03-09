@external
@pure
def f(a: bool) -> bool:
    b: bool = a
    x: bool = b
    assert b
    return x

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(bool): true -> true
# f(bool): false -> FAILURE
