@external
def f(val: bool):
    assert val
    
@external
def g(val: bool) -> bool:
    assert val == True
    return True
    
@external
def h(val: bool) -> bool:
    assert val
    return True

# ----
# f(): false -> FAILURE
# g(bool): false -> FAILURE
# g(bool): true -> true
# h(bool): false -> FAILURE
# h(bool): true -> true
