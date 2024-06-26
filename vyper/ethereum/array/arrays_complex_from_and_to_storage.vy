data: public(uint24[3][6])

@external
def set(_data: uint24[3][6]) -> uint256:
    self.data = _data
    return 6
    
@external
def get() -> uint24[3][6]:
    return self.data

# ----
# set(uint24[3][6]): 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12 -> 0x06
# gas irOptimized: 189910
# gas legacy: 211149
# gas legacyOptimized: 206054
# data(uint256,uint256): 0x02, 0x02 -> 0x09
# data(uint256,uint256): 0x05, 0x01 -> 0x11
# data(uint256,uint256): 0x06, 0x00 -> FAILURE
# get() -> 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12
