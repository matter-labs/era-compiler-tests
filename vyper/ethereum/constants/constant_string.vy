a: constant(Bytes[100]) = b"\x03\x01\x02"
b: constant(String[100]) = "hello"

@external
def f() -> Bytes[100]:
    return a

@external
def h() -> Bytes[100]:
    return convert(b, Bytes[100])

# ----
# f() -> 0x20, 3, "\x03\x01\x02"
# h() -> 0x20, 5, "hello"
