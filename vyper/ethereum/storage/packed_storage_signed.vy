a: int8
b: uint8
c: int8
d: uint8

@external
def test() -> (uint256, uint256, uint256, uint256):
    self.a = -2
    self.b = convert(-self.a, uint8) * 2
    self.c = convert(((256 + convert(self.a, int256)) * 120 * 121 + 128) % 256, int8)
    return (convert(-self.a, uint256), convert(self.b, uint256), convert(self.c, uint256), convert(self.d, uint256))

# ----
# test() -> 2, 4, 16, 0
