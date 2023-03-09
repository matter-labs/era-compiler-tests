struct S:
    x: uint256
    y: uint256

@internal
@pure
def reverse(_s: S) -> (uint256, uint256):
    return (_s.y, _s.x)

@external
@view
def test(_: uint256, _s: S, __: uint256) -> (uint256, uint256):
    return self.reverse(_s)
# ====
# compileViaYul: also
# ----
# test(uint256,(uint256,uint256),uint256): 7, 66, 77, 4 -> 77, 66
