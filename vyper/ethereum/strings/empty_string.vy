@external
@pure
def f() -> String[100]:
    return ""
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x20, 0
