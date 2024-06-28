struct S:
    a: uint8
    b: uint16
    c: uint128
    d: uint256
    
x: public(HashMap[uint256, HashMap[uint256, S]])

@external
def __init__():
    self.x[1][2].a = 3
    self.x[1][2].b = 4
    self.x[1][2].c = 5
    self.x[1][2].d = 6

# ----
# x(uint256,uint256): 1, 2 -> 3, 4, 5, 6
# x(uint256,uint256): 0, 0 -> 0x00, 0x00, 0x00, 0x00
