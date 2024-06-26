data: DynArray[uint24[3], 4][4]

@internal
def set(x: DynArray[uint24[3], 4][4]) -> DynArray[uint24[3], 4][4]:
    x[1][2][2] = 1
    x[1][3][2] = 7
    return x

@external
def f() -> DynArray[uint24[3], 4]:
    for _ in range(4):
        if not len(self.data[1]) < 4:
            break
        self.data[1].append(empty(uint24[3]))
    return self.set(self.data)[1]

# ----
# f() -> 0x20, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x07
