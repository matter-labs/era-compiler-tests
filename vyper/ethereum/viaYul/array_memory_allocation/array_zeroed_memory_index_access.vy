test1: uint256
test2: uint256
test3: uint256
test4: uint256
test5: uint256
test6: uint256
test7: uint256
map: HashMap[String[100], uint256]

@external
def set(s: String[100], a: uint256) -> uint256:
    self.map[s] = 0
    x: uint256[5] = empty(uint256[5])
    return x[a]
    
# ====
# compileViaYul: also
# ----
# set(string,uint256): 0x40, 0, 32, "01234567890123456789012345678901" -> 0
# set(string,uint256): 0x40, 1, 32, "01234567890123456789012345678901" -> 0
# set(string,uint256): 0x40, 4, 32, "01234567890123456789012345678901" -> 0
# set(string,uint256): 0x40, 5, 32, "01234567890123456789012345678901" -> FAILURE
