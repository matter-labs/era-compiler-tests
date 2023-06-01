@external
def f():
    pass

@external
def g():
    raise
    
@external
def h(flag: bool):
    assert flag
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() ->
# g() -> FAILURE
# h(): false -> FAILURE
