@external
def f(x: DynArray[DynArray[uint256, 1208925819614629174706176], 5]) -> uint256:
    return len(x[0])
    
# ----
# f(uint256[][]): 0x20, 1, 0x20, 0x0100000000000000000000 -> FAILURE
