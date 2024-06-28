storageArray: DynArray[uint256, 5]

@external
def popEmpty():
    self.storageArray.pop()
    
# ----
# popEmpty() -> FAILURE
