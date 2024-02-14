@external
def f(a: DynArray[uint256, 5]) -> DynArray[DynArray[uint256, 5], 2]:
    m: DynArray[DynArray[uint256, 5], 2] = [[],[]]
    m[0] = a

    return m
