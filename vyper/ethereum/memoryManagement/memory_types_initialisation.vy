data: HashMap[uint256, uint256]

@internal
def _stat() -> uint256[5]:
    self.data[2] = 3 # make sure to use some memory
    return empty(uint256[5])
    
@external
def stat() -> uint256[5]:
    self.data[2] = 3 # make sure to use some memory
    return empty(uint256[5])
    
@external
def nestedStat() -> uint256[3][7]:
    self._stat()
    return empty(uint256[3][7])
    
# ====
# compileViaYul: also
# ----
# stat() -> 0, 0, 0, 0, 0
# nestedStat() -> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
