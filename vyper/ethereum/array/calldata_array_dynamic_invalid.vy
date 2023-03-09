@external
def f(a: DynArray[DynArray[uint256, 3], 3]) -> uint256:
    return 42
    
@external
def g(a: DynArray[DynArray[uint256, 3], 3]) -> uint256:
    _: DynArray[uint256, 3] = a[0]
    return 42

# ====
# compileToEwasm: also
# ----
# f(uint256[][]): 0x20, 0x0 -> 42 # valid access stub #
# f(uint256[][]): 0x20, 0x1 -> FAILURE # invalid on argument decoding #
# f(uint256[][]): 0x20, 0x1, 0x20 -> 42 # invalid on outer access #
# g(uint256[][]): 0x20, 0x1, 0x20 -> FAILURE
# f(uint256[][]): 0x20, 0x1, 0x20, 0x2, 0x42 -> 42 # invalid on inner access #
# g(uint256[][]): 0x20, 0x1, 0x20, 0x2, 0x42 -> FAILURE
