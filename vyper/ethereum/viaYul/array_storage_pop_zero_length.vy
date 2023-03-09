storageArray: DynArray[uint256, 5]

@external
def popEmpty():
    self.storageArray.pop()
    
# ====
# EVMVersion: >=petersburg
# ----
# popEmpty() -> FAILURE
