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
    x: bool = True
    assert False
    return x
    
@external
@pure
def succeed() -> bool:
    x: bool = True
    assert True
    return x
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(bool): true -> true
# f(bool): false -> FAILURE
# fail() -> FAILURE
# succeed() -> true
