@external
def a() -> uint256:
    return 0
    
@external
def b() -> uint256:
    return 1
    
@external
def c() -> uint256:
    return 2
    
@external
def f() -> uint256:
    return 3
    
# ====
# allowNonExistingFunctions: true
# compileToEwasm: also
# compileViaYul: also
# ----
# a() -> 0
# b() -> 1
# c() -> 2
# f() -> 3
# i_am_not_there() -> FAILURE
