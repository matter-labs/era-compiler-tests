struct S:
    x: uint256
    y: uint256

@internal
@pure
def _f(s: S) -> (uint256, uint256):
    return (s.x, s.y)
@external
@view
def f(_: uint256, s: S, __: uint256) -> (uint256, uint256):
    return self._f(s)
# ----
# f(uint256,(uint256,uint256),uint256): 7, 1, 2, 4 -> 1, 2
