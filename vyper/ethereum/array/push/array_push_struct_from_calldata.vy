struct S:
    a: uint16
    b: uint16
    c: uint16[3]
    d: DynArray[uint16, 4]

data: DynArray[S, 5]

@external
def test(c: S) -> (uint16, uint16, uint16, uint16):
    self.data.append(c)
    return (self.data[0].a, self.data[0].b, self.data[0].c[2], self.data[0].d[2])

# ----
# test((uint16,uint16,uint16[3],uint16[])): 0x20, 2, 3, 0, 0, 4, 0xC0, 4, 0, 0, 5, 0, 0 -> 2, 3, 4, 5
# gas irOptimized: 137092
# gas legacy: 142537
# gas legacyOptimized: 138023
