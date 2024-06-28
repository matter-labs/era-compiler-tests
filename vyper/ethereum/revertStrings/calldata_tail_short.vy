@external
def f(x: DynArray[DynArray[uint256, 5], 5]):
    _: DynArray[uint256, 5] = x[0]

# ----
# f(uint256[][]): 0x20, 1, 0x20, 2, 0x42 -> FAILURE
