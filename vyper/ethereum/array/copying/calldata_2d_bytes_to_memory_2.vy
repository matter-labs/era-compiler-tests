struct _Bytes:
    inner: Bytes[100]

@internal
def g(_m: _Bytes[2]):
    m: _Bytes[2] = _m
    assert len(m[0].inner) > 1
    assert len(m[1].inner) > 1
    assert slice(m[0].inner, 0, 1) == slice(m[1].inner, 0, 1)
    assert slice(m[0].inner, 1, 1) == slice(m[1].inner, 1, 1)

@external
def f(c: _Bytes[2]):
    self.g(c)
# ----
# f((bytes)[2]): 0x20, 0x40, 0x60, 0x40, 0x20, 2, "ab" ->
# f((bytes)[2]): 0x20, 0x40, 0x60, 0x40, 0x20, 1, "a" -> FAILURE
