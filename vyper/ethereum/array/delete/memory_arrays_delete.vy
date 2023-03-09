@external
def _del() -> uint8[3][4]:
    x: uint8[3][4] = empty(uint8[3][4])
    for i in range(4):
        for j in range(3):
            x[i][j] = i * convert(0x10, uint8) + j
    x[1] = empty(uint8[3])
    x[3][2] = empty(uint8)
    return x

# ====
# compileViaYul: also
# ----
# _del() -> 0, 1, 2, 0, 0, 0, 0x20, 0x21, 0x22, 0x30, 0x31, 0
