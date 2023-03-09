struct s1:
    a: bytes1
    b: bytes1
    c: bytes10
    d: bytes9
    e: bytes10

struct s2:
    a: bytes1
    inner: s1
    b: bytes1
    c: bytes1

x: bytes1
data: s2
y: bytes1

@external
def test() -> bool:
    self.x = 0x01
    self.data.a = 0x02
    self.data.inner.a = 0x03
    self.data.inner.b = 0x04
    self.data.inner.c = convert(b"1234567890", bytes10)
    self.data.inner.d = convert(b"123456789", bytes9)
    self.data.inner.e = convert(b"abcdefghij", bytes10)
    self.data.b = 0x05
    self.data.c = 0x06
    self.y = 0x07
    return self.x == 0x01 and self.data.a == 0x02 and self.data.inner.a == 0x03 and self.data.inner.b == 0x04 and self.data.inner.c == convert(b"1234567890", bytes10) and self.data.inner.d == convert(b"123456789", bytes9) and self.data.inner.e == convert(b"abcdefghij", bytes10) and self.data.b == 0x05 and self.data.c == 0x06 and self.y == 0x07

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# test() -> true
# gas irOptimized: 134587
# gas legacy: 136036
# gas legacyOptimized: 133480
