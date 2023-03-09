@external
def f(x: DynArray[DynArray[uint256, 5][2], 5]) -> uint256:
    _: uint256 = x[0]
    return 23
    
# ====
# EVMVersion: >=byzantium
# revertStrings: debug
# ----
# f(uint256[][2][]): 0x20, 0x01, 0x20, 0x00 -> FAILURE
