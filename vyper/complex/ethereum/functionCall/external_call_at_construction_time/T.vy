interface Self:
    def f(): nonpayable

@external
def f():
    pass

@external
def init_():
    extcall Self(self).f()
