struct S:
    a: uint256
    x: bool
    
@external
def s() -> S:
    return S(x=True, a=8)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# s() -> 8, true
