struct testStruct:
    m_value: uint256
    
campaigns: HashMap[uint256, testStruct]

@deploy
def __init__():
    self.campaigns[0].m_value = 2
    
@external
def deleteIt() -> uint256:
    self.campaigns[0] = empty(testStruct)
    return self.campaigns[0].m_value

# ====
# compileViaYul: also
# ----
# deleteIt() -> 0
