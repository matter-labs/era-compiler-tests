@internal
@pure
def reverse(_a: DynArray[uint256, 4]) -> (uint256, uint256):
    return (_a[1], _a[0])

@external
@view
def testArray(_: uint256, _a: DynArray[uint256, 4], __: uint256) -> (uint256, uint256):
    return self.reverse(_a)

# ----
# testArray(uint256,uint256[],uint256): 7, 0x60, 4, 2, 66, 77 -> 77, 66
