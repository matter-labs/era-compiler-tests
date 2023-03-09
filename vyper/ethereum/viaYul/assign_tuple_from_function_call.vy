@internal
@pure
def f() -> (uint256, uint256, uint256):
    return (1, 2, 3)
    
@external
@view
def g() -> (uint256, uint256, uint256):
    a: uint256 = 0
    b: uint256 = 0
    c: uint256 = 0
    (c, b, a) = self.f()
    return a,b,c


# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# g() -> 3, 2, 1
