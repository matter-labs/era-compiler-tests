data: DynArray[uint256, 1]

@external
def test():
    self.data.append(7)
    self.data.pop()
    
# ----
# test() ->
# storageEmpty -> 0
