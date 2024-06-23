interface Self:
    def f(x: DynArray[DynArray[uint256, 5][2],5]) -> uint256: nonpayable

@external
def f(x: DynArray[DynArray[uint256, 5][2],5]) -> uint256:
    return 42

@external
def g(x: DynArray[DynArray[uint256, 5][2],5]) -> uint256:
    return extcall Self(self).f(x)

# ----
# g(uint256[][2][]): 0x20, 0x01, 0x20, 0x40, 0x60, 0x00, 0x00 -> 42
# g(uint256[][2][]): 0x20, 0x01, 0x20, 0x00, 0x00 -> 42
# g(uint256[][2][]): 0x20, 0x01, 0x20, 0x00 -> 42
