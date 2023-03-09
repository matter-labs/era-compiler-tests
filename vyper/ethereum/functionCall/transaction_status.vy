@external
def f():
    pass

@external
def g():
    raise
    
@external
def h():
    assert False
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() ->
# g() -> FAILURE
# h() -> FAILURE
