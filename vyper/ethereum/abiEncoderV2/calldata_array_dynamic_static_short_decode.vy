@external
def f(x: DynArray[DynArray[uint256, 5][2],5]) -> uint256:
    _: DynArray[uint256, 5][2] = x[0] # trigger bounds checks
    return 23

# ====
# compileToEwasm: also
# ----
# f(uint256[][2][]): 0x20, 0x01, 0x20, 0x40, 0x60, 0x00, 0x00 -> 23 # this is the common encoding for x.length == 1 && x[0][0].length == 0 && x[0][1].length == 0 #
# f(uint256[][2][]): 0x20, 0x01, 0x20, 0x00, 0x00 -> 23 # exotic, but still valid encoding #
# f(uint256[][2][]): 0x20, 0x01, 0x20, 0x00 -> 23 # unchecked in Vyper
