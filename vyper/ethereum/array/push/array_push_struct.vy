struct S:
    a: uint16
    b: uint16
    c: uint16[3]
    d: DynArray[uint16, 4]

data: DynArray[S, 5]

@external
def test() -> (uint16, uint16, uint16, uint16):
    s: S = empty(S)
    s.a = 2
    s.b = 3
    s.c[2] = 4
    s.d = [0, 0, 0, 0]
    s.d[2] = 5
    self.data.append(s)
    return (self.data[0].a, self.data[0].b, self.data[0].c[2], self.data[0].d[2])
    
# ----
# test() -> 2, 3, 4, 5
# gas irOptimized: 135204
# gas legacy: 147484
# gas legacyOptimized: 146456
