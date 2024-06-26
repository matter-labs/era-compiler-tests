storageArray: uint256[10]

@external
def test_indices():
    for i: uint256 in range(10):
        self.storageArray[i] = i + 1
        
    for i: uint256 in range(10):
        assert self.storageArray[i] == i + 1
        
# ====
# compileViaYul: also
# ----
# test_indices() ->
