x: public(HashMap[uint256, HashMap[uint256, uint256]])

@deploy
def __init__():
    self.x[1][2] = 3
    
# ====
# compileViaYul: also
# ----
# x(uint256,uint256): 1, 2 -> 3
# x(uint256,uint256): 0, 0 -> 0
