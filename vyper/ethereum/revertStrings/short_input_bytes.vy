@external
def e(a: Bytes[100]) -> uint256:
    return 7
    
# ====
# EVMVersion: >=byzantium
# revertStrings: debug
# ----
# e(bytes): 0x20, 7 -> FAILURE
