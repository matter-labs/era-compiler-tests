data: public(uint24[18])

@external
def set(_data: uint24[18]) -> uint256:
    self.data = _data
    return 18
    
@external
def get() -> uint24[18]:
    return self.data
    
# ----
# set(uint24[18]): 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18 -> 18
# gas irOptimized: 99616
# gas legacy: 103563
# gas legacyOptimized: 101397
# data(uint256): 7 -> 8
# data(uint256): 15 -> 16
# data(uint256): 18 -> FAILURE
# get() -> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18
