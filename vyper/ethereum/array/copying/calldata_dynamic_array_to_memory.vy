@external
def f(a: DynArray[DynArray[uint256, 2], 1]) -> (uint256, DynArray[uint256, 2]):
    m: DynArray[uint256, 2] = a[0]
    return (len(a), m)

# ----
# f(uint256[][]): 0x20, 0x1, 0x20, 0x2, 0x17, 0x2a -> 0x1, 0x40, 0x2, 0x17, 0x2a
