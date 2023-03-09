@external
def f():
    pass
    
# ====
# EVMVersion: >=byzantium
# revertStrings: debug
# ----
# f(), 1 ether -> FAILURE
# () -> FAILURE
