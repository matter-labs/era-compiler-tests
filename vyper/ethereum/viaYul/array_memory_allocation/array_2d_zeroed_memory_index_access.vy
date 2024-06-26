test1: uint256
test2: uint256
test3: uint256
test4: uint256
test5: uint256
test6: uint256
test7: uint256
map: HashMap[String[100], uint256]

@external
def set(s: String[100], a: uint256, b: uint256) -> uint256:
    self.map[s] = 0
    x: uint256[4][2] = empty(uint256[4][2])
    for i: uint256 in range(2):
        x[i] = empty(uint256[4])
    return x[a][b]
    
# ====
# compileViaYul: also
# ----
# set(string,uint256,uint256): 0x60, 0, 0, 32, "01234567890123456789012345678901" -> 0
# set(string,uint256,uint256): 0x60, 1, 3, 32, "01234567890123456789012345678901" -> 0
# set(string,uint256,uint256): 0x60, 3, 3, 32, "01234567890123456789012345678901" -> FAILURE
# set(string,uint256,uint256): 0x60, 1, 5, 32, "01234567890123456789012345678901" -> FAILURE
