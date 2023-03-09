@external
def f() -> Bytes[100]:
    x: Bytes[100] = b"12345"
    x = b"123\x615"
    x = b"\x6223\x615"
    return x

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x20, 5, "b23a5"
