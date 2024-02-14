interface Self:
    def f(_: uint256, s: DynArray[uint256, 2][2], __: uint256) -> (uint256, uint256): view

@internal
@pure
def g1(s: DynArray[uint256, 2][2]) -> (uint256, DynArray[uint256, 2]):
    return (s[0][1], s[1])
    
@external
@view
def f(_: uint256, s: DynArray[uint256, 2][2], __: uint256) -> (uint256, uint256):
    x: uint256 = empty(uint256)
    y: DynArray[uint256, 2] = empty(DynArray[uint256, 2])
    (x, y) = self.g1(s)
    return (x, y[0])
    
@external
def g() -> (uint256, uint256):
    x: DynArray[uint256, 2][2] = empty(DynArray[uint256, 2][2])
    x[0] = [0, 0]
    x[1] = [0, 0]
    x[0][1] = 7
    x[1][0] = 8
    return Self(self).f(4, x, 5)
    
# ----
# g() -> 7, 8
