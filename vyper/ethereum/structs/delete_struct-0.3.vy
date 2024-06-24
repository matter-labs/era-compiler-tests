struct nestedStruct:
    nestedValue: uint256

struct topStruct:
    nstr: nestedStruct
    topValue: uint256
    
toDelete: uint256
str: topStruct

@external
def __init__():
    self.toDelete = 5
    self.str.topValue = 1
    
    self.str.nstr.nestedValue = 2
    self.str = empty(topStruct)
    self.toDelete = empty(uint256)

@external
def getToDelete() -> uint256:
    return self.toDelete
    
@external
def getTopValue() -> uint256:
    return self.str.topValue
    
@external
def getNestedValue() -> uint256:
    return self.str.nstr.nestedValue  

# ====
# compileViaYul: also
# ----
# getToDelete() -> 0
# getTopValue() -> 0
# getNestedValue() -> 0
