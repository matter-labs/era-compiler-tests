interface Self:
    def f(): nonpayable

@external
def f():
    pass

@external
def init_():
    Self(self).f()
