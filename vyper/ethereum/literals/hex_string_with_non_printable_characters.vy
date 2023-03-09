@external
@pure
def f() -> bytes32:
    result: bytes32 = 0x000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f
    return result

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f
