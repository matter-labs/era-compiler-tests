@external
@pure
def f(b: bool) -> bool:
    return b
# ----
# f(bool): true -> true
# f(bool): false -> false
# f(bool): 0x000000 -> false
# f(bool): 0xffffff -> FAILURE
