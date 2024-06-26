interface D:
    def g(): nonpayable

d: D

@deploy
def __init__():
    self.d = D(convert(0x1212, address))

@external
def f() -> uint256:
    extcall self.d.g()
    return 7

@external
def g() -> uint256:
    extcall self.d.g(gas=200)
    return 7

@external
def h() -> uint256:
    raw_call(self.d.address, b"")
    return 7

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> FAILURE
# g() -> FAILURE
# h() -> FAILURE
