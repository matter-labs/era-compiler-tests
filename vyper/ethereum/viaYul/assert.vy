@external
@pure
def f(a: bool) -> bool:
    b: bool = a
    x: bool = b
    assert b
    return x

@external
@pure
def fail() -> bool:
    raise
    
@external
@pure
def succeed() -> bool:
    x: bool = True
    assert True
    return x
    
# ----
# f(bool): true -> true
# f(bool): false -> FAILURE
# fail() -> FAILURE
# succeed() -> true
