@external
def f(data: Bytes[100]) -> Bytes[192]:
    data_: Bytes[100] = data
    return _abi_encode(data_)
# ----
# f(bytes): 0x20, 0x08, "abcdefgh" -> 0x20, 0x60, 0x20, 8, 44048183304486788309563647967830685498285570828042699209880294173606615711744
