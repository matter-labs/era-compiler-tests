struct testStruct:
    m_value: uint256
    
data1: testStruct

@external
def __init__():
    self.data1.m_value = 2
    
@external
def deleteMember() -> uint256:
    self.data1.m_value = 4
    self.data1.m_value = empty(uint256)
    return self.data1.m_value

# ----
# deleteMember() -> 0
