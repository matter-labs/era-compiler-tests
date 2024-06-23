data: public(uint256[8])
struct st:
    a: uint256
    finalArray: uint256[4]
multiple_map: public(HashMap[uint256, HashMap[uint256, st[5]]])

@external
def __init__():
    self.data[0] = 8
    
    self.multiple_map[2][1][2].a = 3
    self.multiple_map[2][1][2].finalArray[3] = 5
    

# ====
# compileViaYul: also
# ----
# data(uint256): 0 -> 8
# data(uint256): 8 -> FAILURE
# multiple_map(uint256,uint256,uint256): 2, 1, 2 -> 3, 0, 0, 0, 5
