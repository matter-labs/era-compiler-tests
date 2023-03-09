@external
def f(_: DynArray[uint256, 5]):
    pass
# ----
# f(uint256[]): 0x20, 0 ->
# f(uint256[]): 0x20, 1 -> FAILURE
# f(uint256[]): 0x20, 2 -> FAILURE

