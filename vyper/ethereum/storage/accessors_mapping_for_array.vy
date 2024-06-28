data: public(HashMap[uint256, uint256[8]])

@deploy
def __init__():
    self.data[2][2] = 8
    
# ----
# data(uint256,uint256): 2, 2 -> 8
# data(uint256,uint256): 2, 8 -> FAILURE # NB: the original code contained a bug here #
