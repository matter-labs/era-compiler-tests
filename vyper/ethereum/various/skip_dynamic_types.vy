interface Self:
    def f() -> (uint256, DynArray[uint256, 2], uint256): nonpayable

# The EVM cannot provide access to dynamically-sized return values, so we have to skip them.
@external
def f() -> (uint256, DynArray[uint256, 2], uint256):
    return (7, [0, 0], 8)

@external
def g() -> (uint256, uint256):
    # Previous implementation "moved" b to the second place and did not skip.
    a: uint256 = 0
    b: uint256 = 0
    _: DynArray[uint256, 2] = empty(DynArray[uint256, 2])
    a, _, b = extcall Self(self).f()
    return (a, b)

# ----
# g() -> 7, 8
