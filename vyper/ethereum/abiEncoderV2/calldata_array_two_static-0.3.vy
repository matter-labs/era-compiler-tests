interface Self:
    def f(s1: uint256[3], s2: uint256[2], which: bool) -> Bytes[100]: pure

@external
@pure
def f(s1: uint256[3], s2: uint256[2], which: bool) -> Bytes[100]:
    if which:
        return _abi_encode(s1)
    else:
        return _abi_encode(s2)
    
@external
@view
def g(s1: uint256[3], s2: uint256[2], which: bool) -> Bytes[100]:
    return Self(self).f(s1, s2, which)
# ----
# f(uint256[3],uint256[2],bool): 23, 42, 87, 51, 72, true -> 32, 96, 23, 42, 87
# f(uint256[3],uint256[2],bool): 23, 42, 87, 51, 72, false -> 32, 64, 51, 72
# g(uint256[3],uint256[2],bool): 23, 42, 87, 51, 72, true -> 32, 96, 23, 42, 87
# g(uint256[3],uint256[2],bool): 23, 42, 87, 51, 72, false -> 32, 64, 51, 72
