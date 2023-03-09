storageArray: DynArray[uint256, 2]

@external
def test(v: uint256):
    self.storageArray.append(v)
    
@external
@view
def getLength() -> uint256:
    return len(self.storageArray)
    
@external
@view
def fetch(a: uint256) -> uint256:
    return self.storageArray[a]
    
# ----
# getLength() -> 0
# test(uint256): 42 ->
# getLength() -> 1
# fetch(uint256): 0 -> 42
# fetch(uint256): 1 -> FAILURE
# test(uint256): 23 ->
# getLength() -> 2
# fetch(uint256): 0 -> 42
# fetch(uint256): 1 -> 23
# fetch(uint256): 2 -> FAILURE
