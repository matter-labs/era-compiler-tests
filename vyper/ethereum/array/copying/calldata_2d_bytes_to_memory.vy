struct _Bytes:
    inner: Bytes[100]

@internal
def g(_m: _Bytes[2]) -> Bytes[100]:
    m: _Bytes[2] = _m
    return m[0].inner

@external
def f(c: _Bytes[2]) -> Bytes[100]:
    return self.g(c)
# ----
# f((bytes)[2]): 0x20, 0x40, 0x60, 0x40, 0x20, 2, "ab" -> 0x20, 2, "ab"
