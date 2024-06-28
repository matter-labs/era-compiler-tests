# Checks that bytesXX types are properly cleaned before they are compared.
@external
def f(a: bytes2, x: uint16) -> uint256:
    if a != convert(b"ab", bytes2):
        return 1
    if x != convert(0x0102, uint16):
        return 2
    if convert(convert(x, uint24), bytes3) != 0x000102:
        return 3
    return 0
# ----
# f(bytes2,uint16): "abc", 0x40102 -> FAILURE # We input longer data on purpose. #
