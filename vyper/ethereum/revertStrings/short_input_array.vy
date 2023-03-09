@external
def f(a: DynArray[uint256, 5]) -> uint256:
    return 7
# ====
# EVMVersion: >=byzantium
# revertStrings: debug
# ----
# f(uint256[]): 0x20, 1 -> FAILURE
