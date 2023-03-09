m_nameToRecord: HashMap[String[100], uint256]
@external
def set(key: String[100], _value: uint256):
    self.m_nameToRecord[key] = _value
    
@external
@view
def get(key: String[100]) -> uint256:
    return self.m_nameToRecord[key]
    
@external
def setFixed(_value: uint256):
    self.m_nameToRecord["fixed"] = _value
    
@external
@view
def getFixed() -> uint256:
    return self.m_nameToRecord["fixed"]
    
# ====
# compileViaYul: also
# ----
# set(string,uint256): 0x40, 8, 3, "abc" ->
# get(string): 0x20, 3, "abc" -> 8
# get(string): 0x20, 3, "abe" -> 0
# getFixed() -> 0
# setFixed(uint256): 9 ->
# getFixed() -> 9
