# Tests that rational numbers (even negative ones) are encoded properly.
@external
@pure
def f() -> Bytes[100]:
    tmp1: uint8 = 1
    tmp2: int128 = -2
    return _abi_encode(tmp1, tmp2)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x20, 0x40, 0x1, -2
