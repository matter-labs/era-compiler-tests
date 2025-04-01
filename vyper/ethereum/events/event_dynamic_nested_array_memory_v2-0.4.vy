event E:
    _: DynArray[DynArray[uint256, 5], 5]

@external
def createEvent(x: uint256):
    arr: DynArray[DynArray[uint256, 5], 5] = [[], []]
    arr[0] = [0, 0]
    arr[1] = [0, 0]
    arr[0][0] = x
    arr[0][1] = x + 1
    arr[1][0] = x + 2
    arr[1][1] = x + 3
    log E(arr)
    
# ----
# createEvent(uint256): 42 ->
# ~ emit E(uint256[][]): 0x20, 0x02, 0x40, 0xa0, 0x02, 0x2a, 0x2b, 0x02, 0x2c, 0x2d
