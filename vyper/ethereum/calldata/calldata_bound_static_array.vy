@internal
@pure
def reverse(_a: uint256[2]) -> (uint256, uint256):
    return (_a[1], _a[0])

@external
@view
def test(_: uint256, _a: uint256[2], __: uint256) -> (uint256, uint256):
    return self.reverse(_a)

# ====
# compileViaYul: also
# ----
# test(uint256,uint256[2],uint256): 7, 66, 77, 4 -> 77, 66
