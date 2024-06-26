interface Self:
    def f() -> uint256: nonpayable

@external
def f() -> uint256:
    return 0

@external
def init_():
    extcall Self(self).f()
