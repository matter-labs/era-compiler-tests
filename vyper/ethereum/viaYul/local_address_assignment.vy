@external
@pure
def f(a: address) -> address:
    b: address = a
    return b
    
# ----
# f(address): 0x1234 -> 0x1234
