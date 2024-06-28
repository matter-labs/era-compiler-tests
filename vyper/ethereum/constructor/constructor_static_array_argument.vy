a: public(uint256)
b: public(uint256[3])

@deploy
def __init__(_a: uint256, _b: uint256[3]):
    self.a = _a
    self.b = _b

# ----
# constructor(): 1, 2, 3, 4 ->
# gas irOptimized: 180731
# gas legacy: 221377
# gas legacyOptimized: 177671
# a() -> 1
# b(uint256): 0 -> 2
# b(uint256): 1 -> 3
# b(uint256): 2 -> 4
