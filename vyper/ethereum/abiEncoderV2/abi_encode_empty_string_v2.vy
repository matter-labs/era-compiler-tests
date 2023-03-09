# Tests that this will not end up using a "bytes0" type
# (which would assert)
@external
@pure
def f() -> (Bytes[100], Bytes[100]):
    return (_abi_encode(""), convert("", Bytes[100]))

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x40, 0xa0, 0x40, 0x20, 0x0, 0x0
