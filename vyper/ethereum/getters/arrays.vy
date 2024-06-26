a: public(uint8[2][2])

@deploy
def __init__():
    self.a[1][0] = 3
    self.a[1][1] = 4
    
# ====
# compileViaYul: also
# ----
# a(uint256,uint256): 0, 2 -> FAILURE
# a(uint256,uint256): 1, 0 -> 3
# a(uint256,uint256): 1, 1 -> 4
# a(uint256,uint256): 2, 0 -> FAILURE
