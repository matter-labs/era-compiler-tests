test1: uint256
test2: uint256
test3: uint256
test4: uint256
test5: uint256
test6: uint256
test7: uint256
map: HashMap[String[100], uint256]

@external
def set(s: String[100], m: uint256) -> uint256:
    self.map[s] = 0
    x: uint256[4][2] = empty(uint256[4][2])
    return x[m][0]
    
# ----
# set(string,uint256): 0x40, 0, 32, "01234567890123456789012345678901" -> 0
# set(string,uint256): 0x40, 1, 32, "01234567890123456789012345678901" -> 0
# set(string,uint256): 0x40, 2, 32, "01234567890123456789012345678901" -> FAILURE
