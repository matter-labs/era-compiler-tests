interface Self:
    def f(x: DynArray[DynArray[uint256, 5][2], 5]) -> uint256: nonpayable
    
@external
def f(x: DynArray[DynArray[uint256, 5][2], 5]) -> uint256:
    return 42
    
@external
def g(x: DynArray[DynArray[uint256, 5][2], 5]) -> uint256:
    return Self(self).f(x)
  
# ====
# EVMVersion: >=byzantium
# revertStrings: debug
# ----
# g(uint256[][2][]): 0x20, 0x01, 0x20, 0x00 -> 42
