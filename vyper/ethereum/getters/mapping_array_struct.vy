struct Y:
    a: uint256
    b: uint256
    
n: public(HashMap[uint256, Y[3]])

@deploy
def __init__():
    self.n[1][0].a = 7
    self.n[1][0].b = 8
    self.n[1][1].a = 9
    self.n[1][1].b = 10
    
# ----
# n(uint256,uint256): 0, 0 -> 0x00, 0x00
# n(uint256,uint256): 1, 0 -> 7, 8
# n(uint256,uint256): 1, 1 -> 9, 0x0a
# n(uint256,uint256): 1, 2 -> 0x00, 0x00
