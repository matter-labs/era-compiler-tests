event E:
    _: DynArray[uint256, 5]

@external
def createEvent(x: uint256):
    arr: DynArray[uint256, 5] = [0, 0, 0]
    arr[0] = x
    arr[1] = x + 1
    arr[2] = x + 2
    log E(arr)
# ----
# createEvent(uint256): 42 ->
# ~ emit E(uint256[]): 0x20, 0x03, 0x2a, 0x2b, 0x2c
