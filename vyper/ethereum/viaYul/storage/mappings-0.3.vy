simple: HashMap[uint256, uint256]
str: HashMap[String[100], uint256]
twodim: HashMap[uint256, HashMap[uint256, uint256]]

@external
def test_simple(_off: uint256) -> (uint256, uint256, uint256):
    self.simple[_off + 2] = 3
    self.simple[_off + 3] = 4
    self.simple[MAX_UINT256] = 5
    return self.simple[2 + _off], self.simple[3 + _off], self.simple[MAX_UINT256]
    
@external
def test_str() -> bool:
    self.str["abc"] = 3
    s: String[100] = "abc"
    return self.str[s] == 3

@external
def test_twodim() -> (uint256, uint256):
    self.twodim[2][3] = 3
    return self.twodim[3][2], self.twodim[2][3]

# ----
# test_simple(uint256): 0 -> 3, 4, 5
# test_simple(uint256): 1 -> 3, 4, 5
# test_simple(uint256): 2 -> 3, 4, 5
# test_str() -> true
# test_twodim() -> 0, 3
