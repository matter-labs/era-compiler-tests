@external
def f():
    pass

@external
def g():
    raise
    
@external
def h(_flag: bool):
    assert _flag
    
# ----
# f() ->
# g() -> FAILURE
# h(): false -> FAILURE
