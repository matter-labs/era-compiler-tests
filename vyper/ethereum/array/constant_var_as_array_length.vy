LEN: constant(uint256) = 3
a: public(uint256[LEN])

@deploy
def __init__(_a: uint256[LEN]):
    self.a = _a

# ====
# compileViaYul: also
# ----
# constructor(): 1, 2, 3 ->
# gas irOptimized: 143598
# gas legacy: 183490
# gas legacyOptimized: 151938
# a(uint256): 0 -> 1
# a(uint256): 1 -> 2
# a(uint256): 2 -> 3
