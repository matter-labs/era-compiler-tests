test1: uint256
test2: uint256
test3: uint256
test4: uint256
test5: uint256
test6: uint256
test7: uint256
map: HashMap[String[100], uint256]

@external
def set(s: String[100]) -> (uint256[3], uint256[2], uint256):
    self.map[s] = 0
    return empty(uint256[3]), empty(uint256[2]), empty(uint256)

# ====
# compileViaYul: also
# ----
# set(string): 0x20, 32, "01234567890123456789012345678901" -> 0, 0, 0, 0, 0, 0
