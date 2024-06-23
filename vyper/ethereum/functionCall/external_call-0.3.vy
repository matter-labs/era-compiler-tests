interface Self:
    def g(n: uint256) -> uint256: pure

@external
@pure
def g(n: uint256) -> uint256:
    return n + 1
    
@external
@view
def f(n: uint256) -> uint256:
    return Self(self).g(2 * n)

# ====
# compileViaYul: also
# ----
# g(uint256): 4 -> 5
# f(uint256): 2 -> 5
