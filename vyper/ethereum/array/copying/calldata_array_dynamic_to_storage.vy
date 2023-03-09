s: DynArray[uint256, 5]

@external
def f(data: DynArray[uint256, 3]) -> uint256:
    self.s = data
    return self.s[0]
    
# ----
# f(uint256[]): 0x20, 0x03, 0x1, 0x2, 0x3 -> 0x1
# gas irOptimized: 110971
# gas legacy: 111565
# gas legacyOptimized: 111347
