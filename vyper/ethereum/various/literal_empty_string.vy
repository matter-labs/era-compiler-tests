interface Self:
    def f(_x: bytes32, _a: uint256): nonpayable

x: public(bytes32)
a: public(uint256)

@external
def f(_x: bytes32, _a: uint256):
    self.x = _x
    self.a = _a
    
@external
def g():
    extcall Self(self).f(convert(b"", bytes32), 2)

# ====
# compileViaYul: also
# ----
# x() -> 0
# a() -> 0
# g() ->
# x() -> 0
# a() -> 2
