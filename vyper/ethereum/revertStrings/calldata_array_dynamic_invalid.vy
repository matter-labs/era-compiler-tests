@external
def f(a: DynArray[DynArray[uint256, 5], 5]) -> uint256:
    return 42
    
# ----
# f(uint256[][]): 0x20, 1 -> FAILURE
