@external
@pure
def f() -> uint256:
    b: uint8 = 0
    b = convert(0xff, uint8)
    return convert(b, uint256)
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 255
