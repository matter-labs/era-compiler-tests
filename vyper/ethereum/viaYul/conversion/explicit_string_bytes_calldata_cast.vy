# Triggered ICE before
@external
@pure
def f(data: String[100]) -> String[100]:
    test: Bytes[100] = convert(slice(data, 0, 3), Bytes[100])
    return convert(test, String[100])

# ----
# f(string): 0x20, 3, "123" -> 0x20, 3, "123"
