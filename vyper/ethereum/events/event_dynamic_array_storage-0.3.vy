event E:
    _: DynArray[uint256, 5]

arr: DynArray[uint256, 5]

@external
def createEvent(x: uint256):
    for _ in range(3):
        if not len(self.arr) < 3:
            break
        self.arr.append(0)
    self.arr[0] = x
    self.arr[1] = x + 1
    self.arr[2] = x + 2
    log E(self.arr)
    
# ----
# createEvent(uint256): 42 ->
# ~ emit E(uint256[]): 0x20, 0x03, 0x2a, 0x2b, 0x2c
# gas irOptimized: 113517
# gas legacy: 116393
# gas legacyOptimized: 114415
