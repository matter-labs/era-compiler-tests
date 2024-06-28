@internal
@pure
def _g(s: uint256[3][2]) -> (uint256, uint256[3]):
    return (s[0][1], s[1])
@external
@view
def f(_: uint256, s: uint256[3][2], __: uint256) -> (uint256, uint256):
    x: uint256 = 0
    y: uint256[3] = empty(uint256[3])
    (x, y) = self._g(s)
    return (x, y[0])
interface Self:
    def f(_: uint256, s: uint256[3][2], __: uint256) -> (uint256, uint256): pure
@external
def g() -> (uint256, uint256):
    x: uint256[3][2] = empty(uint256[3][2])
    x[0][1] = 7
    x[1][0] = 8
    return Self(self).f(4, x, 5)
# ----
# g() -> 7, 8
