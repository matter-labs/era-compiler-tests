interface Self:
    def f() -> (uint256, DynArray[bool,2][2], S[2], uint256): nonpayable
    
struct S:
    b: DynArray[bool, 2]
    
@external
def f() -> (uint256, DynArray[bool,2][2], S[2], uint256):
    return (5, [[False], [False, False]], [S({b: [False, False]}), S({b: [False, False, False, False, False]})], 6)

@external
def g() -> (uint256, uint256):
    a: uint256 = 0
    _: DynArray[bool,2][2] = empty(DynArray[bool,2][2])
    __: S[2] = empty(S[2])
    b: uint256 = 0
    (a, _, __, b) = Self(self).f()
    return (a, b)

# ----
# g() -> 5, 6
