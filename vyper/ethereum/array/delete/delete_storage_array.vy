data: uint256[2]

@external
def val() -> uint256:
    self.data[0] = 234
    self.data[1] = 123
    
    assert self.data[0] == 234
    assert self.data[1] == 123
    
    self.data = empty(uint256[2])
    
    return self.data[0]

# ====
# compileViaYul: also
# ----
# val() -> 0
