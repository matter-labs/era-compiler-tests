@external
@pure
def f(a: address) -> address:
    b: address = a
    return b
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(address): 0x1234 -> 0x1234
