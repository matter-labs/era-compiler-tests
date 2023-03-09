@external
@pure
def f(a: bool) -> bool:
    b: bool = a
    return b
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(bool): true -> true
