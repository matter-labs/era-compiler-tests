interface Self:
    def f(s1: DynArray[uint256, 5], s2: DynArray[uint256, 5], which: bool) -> Bytes[300]: pure
    
@external
@pure
def f(s1: DynArray[uint256, 5], s2: DynArray[uint256, 5], which: bool) -> Bytes[300]:
    if which:
        return _abi_encode(s1)
    else:
        return _abi_encode(s2)

@external
@view
def g(s1: DynArray[uint256, 5], s2: DynArray[uint256, 5], which: bool) -> Bytes[300]:
    return Self(self).f(s1, s2, which)
    
# ----
# f(uint256[],uint256[],bool): 0x60, 0xE0, true, 3, 23, 42, 87, 2, 51, 72 -> 32, 160, 0x20, 3, 23, 42, 87
# f(uint256[],uint256[],bool): 0x60, 0xE0, false, 3, 23, 42, 87, 2, 51, 72 -> 32, 128, 0x20, 2, 51, 72
# g(uint256[],uint256[],bool): 0x60, 0xE0, true, 3, 23, 42, 87, 2, 51, 72 -> 32, 160, 0x20, 3, 23, 42, 87
# g(uint256[],uint256[],bool): 0x60, 0xE0, false, 3, 23, 42, 87, 2, 51, 72 -> 32, 128, 0x20, 2, 51, 72
