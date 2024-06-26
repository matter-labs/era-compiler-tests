interface Self:
    def gggg(x: bool) -> bool: pure

@external
@pure
def gggg(x: bool) -> bool:
    return x
    
@external
@view
def f(a: uint256) -> bool:
    x: bool = False
    x = convert(a, bool)
    return staticcall Self(self).gggg(x)
    
# ====
# compileViaYul: also
# ----
# f(uint256): 0 -> false
# gggg(bool): 0 -> false # test validation as well as sanity check #
# f(uint256): 1 -> true
# gggg(bool): 1 -> true
# f(uint256): 2 -> true
# gggg(bool): 2 -> FAILURE
# f(uint256): 0x1000 -> true
# gggg(bool): 0x1000 -> FAILURE
