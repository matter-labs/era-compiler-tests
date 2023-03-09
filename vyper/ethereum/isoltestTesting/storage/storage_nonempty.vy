x: uint256

@external
def set(_a: uint256):
    self.x = _a
    
# ====
# compileViaYul: also
# ----
# storageEmpty -> 1
# set(uint256): 1 ->
# storageEmpty -> 0
