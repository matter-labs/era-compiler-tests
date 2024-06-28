storageArray: uint256[10]

@external
def test_indices():
    for i in range(10):
        self.storageArray[i] = i + 1
        
    for i in range(10):
        assert self.storageArray[i] == i + 1
        
# ----
# test_indices() ->
