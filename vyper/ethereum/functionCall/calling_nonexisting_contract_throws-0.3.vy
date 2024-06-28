interface D:
    def g(): nonpayable

d: D

@external
def __init__():
    self.d = D(convert(0x1212, address))

@external
def f() -> uint256:
    self.d.g()
    return 7

@external
def g() -> uint256:
    self.d.g(gas=200)
    return 7

@external
def h() -> uint256:
    raw_call(self.d.address, b"")
    return 7

# ----
# f() -> FAILURE
# g() -> FAILURE
# h() -> FAILURE
