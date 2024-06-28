@external
@pure
def f(s: String[100]) -> Bytes[100]:
    return convert(s, Bytes[100])

# ----
# f(string): 32, 5, "Hello" -> 32, 5, "Hello"
