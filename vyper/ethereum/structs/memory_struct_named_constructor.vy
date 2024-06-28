struct S:
    a: uint256
    x: bool
    
@external
def s() -> S:
    return S(x=True, a=8)

# ----
# s() -> 8, true
