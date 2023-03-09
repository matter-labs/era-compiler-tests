@external
def h(a: DynArray[DynArray[uint256, 3], 3]):
    _: Bytes[600] = _abi_encode(a)
struct S:
    x: DynArray[uint256, 3]
@external
def f(a: S):
    _: Bytes[600] = _abi_encode(a)

# ====
# revertStrings: debug
# ----
# h(uint256[][]): 0x20, 1, 0x20, 0 ->
# h(uint256[][]): 0x20, 1, 0x20, 1 -> FAILURE
# h(uint256[][]): 0x20, 1, 0x20, 2 -> FAILURE
# h(uint256[][]): 0x20, 1, 0x20, 3 -> FAILURE
# f((uint256[])): 0x20, 0x20, 0 ->
# f((uint256[])): 0x20, 0x20, 1 -> FAILURE
# f((uint256[])): 0x20, 0x20, 2 -> FAILURE
# f((uint256[])): 0x20, 0x20, 3 -> FAILURE
