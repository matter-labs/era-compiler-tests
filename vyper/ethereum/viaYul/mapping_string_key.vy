map: HashMap[String[100], uint256]

@external
def set(s: String[100]):
    _: uint256 = self.map[s]
    
# ====
# compileViaYul: also
# ----
# set(string): 0x20, 32, "01234567890123456789012345678901" ->
