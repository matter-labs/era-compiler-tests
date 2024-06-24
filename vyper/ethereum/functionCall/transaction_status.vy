@external
def f():
    pass

@external
def g():
    raise
    
@external
def h(_flag: bool):
    assert _flag
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() ->
# g() -> FAILURE
# h(): false -> FAILURE
