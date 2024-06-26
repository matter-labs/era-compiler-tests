interface Self:
    def f(s: S) -> Bytes[600]: nonpayable

struct S:
    a: DynArray[uint256, 10]

@external
def f(s: S) -> Bytes[600]:
    return abi_encode(s)

@external
def g(s: S) -> Bytes[600]:
    return extcall Self(self).f(s)

# ----
# f((uint256[])): 0x20, 0x20, 3, 42, 23, 17 -> 32, 192, 0x20, 0x20, 3, 42, 23, 17
# g((uint256[])): 0x20, 0x20, 3, 42, 23, 17 -> 32, 192, 0x20, 0x20, 3, 42, 23, 17
