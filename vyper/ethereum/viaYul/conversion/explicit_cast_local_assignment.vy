@external
@pure
def f(a: uint256) -> uint8:
    b: uint8 = convert(a, uint8)
    return b

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(uint256): 0x12345678 -> FAILURE
