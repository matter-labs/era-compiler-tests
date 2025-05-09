# Indexed parameters are always listed first in the output.
# The data is the ABI encoding of just the non-indexed parameters,
# so putting the indexed parameters "in between" would mess
# up the offsets for the reader.

event E:
    a: uint256
    r: indexed(uint256)
    b: uint256
    c: Bytes[100]

@external
def deposit():
    log E(a=1, r=2, b=3, c=convert("def", Bytes[100]))

# ----
# deposit() ->
# ~ emit E(uint256,uint256,uint256,bytes): #0x02, 0x01, 0x03, 0x60, 0x03, "def"
# gas irOptimized: 23709
# gas legacy: 24342
# gas legacyOptimized: 23753
