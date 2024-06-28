@external
def f(s: String[100]) -> Bytes[100]:
    return convert(s, Bytes[100])
# ----
# f(string): 0x20, 3, "abc" -> 0x20, 3, "abc"
