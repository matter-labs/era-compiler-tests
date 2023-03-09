@external
def f(a: uint8, b: uint8) -> uint8:
    return a + b
# ====
# compileViaYul: also
# ----
# f(uint8,uint8): 254, 0 -> 0xfe
# f(uint8,uint8): 256, 0 -> FAILURE
# f(uint8,uint8): 255, 0 -> 0xff
# f(uint8,uint8): 255, 1 -> FAILURE
