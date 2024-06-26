struct S:
    a: uint256

interface Self:
    def f(s: S) -> Bytes[100]: nonpayable

@external
def f(s: S) -> Bytes[100]:
    return _abi_encode(s)

@external
def g(s: S) -> Bytes[100]:
    return Self(self).f(s)

# ====
# EVMVersion: >homestead
# compileViaYul: also
# ----
# f((uint256)): 3 -> 32, 32, 3
# g((uint256)): 3 -> 32, 32, 3
