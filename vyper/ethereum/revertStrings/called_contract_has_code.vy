interface C:
    def f(): nonpayable
    
@external
def f():
    pass
    
@external
def g():
    c: C = convert(0x0000000000000000000000000000000000000000000000000000000000000000,C)
    c.f()
    
# ====
# EVMVersion: >=byzantium
# revertStrings: debug
# ----
# g() -> FAILURE
