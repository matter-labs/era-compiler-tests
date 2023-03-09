@external
def f(a: DynArray[int16, 2]) -> bool:
    x: uint32 = convert(convert(a[1], uint16), uint32)
    r: uint256 = convert(x, uint256)
    correct: bool = r == convert(0x7fff, uint256)
    return correct
    
# ----
# f(int16[]): 0x20, 0x02, 0x7fff, 0x7fff -> true
