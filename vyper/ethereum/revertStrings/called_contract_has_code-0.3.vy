interface C:
    def f(): nonpayable
    
@external
def f():
    pass
    
@external
def g():
    c: C = C(convert(0x0000000000000000000000000000000000000000000000000000000000000000, address))
    c.f()
    
# ----
# g() -> FAILURE
