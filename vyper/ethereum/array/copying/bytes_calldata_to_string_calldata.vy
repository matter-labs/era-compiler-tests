@external
def f(c: Bytes[100]) -> String[100]:
    return convert(c, String[100])
# ----
# f(bytes): 0x20, 3, "abc" -> 0x20, 3, "abc"
