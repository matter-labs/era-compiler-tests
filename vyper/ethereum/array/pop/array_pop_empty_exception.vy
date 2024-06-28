data: DynArray[uint256, 10]

@external
def test() -> bool:
    self.data.pop()
    return True
    
# ----
# test() -> FAILURE
