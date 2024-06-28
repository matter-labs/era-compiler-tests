interface Self:
    def dyn() -> (Bytes[100], uint256, DynArray[bytes20, 10], uint256): nonpayable

@external
def dyn() -> (Bytes[100], uint256, DynArray[bytes20, 10], uint256):
	a: Bytes[100] = b"1234567890123456789012345678901234567890"
	b: uint256 = MAX_UINT256
	c: DynArray[bytes20, 10] = [empty(bytes20), empty(bytes20), empty(bytes20), empty(bytes20)]
	c[0] = convert(convert(1234, uint160), bytes20)
	c[3] = convert(convert(6789, uint160), bytes20)
	d: uint256 = convert(0x1234, uint256)
	return a, b, c, d

@external
def f() -> (Bytes[100], uint256, DynArray[bytes20, 10], uint256):
    return Self(self).dyn()

# ----
# f() -> 0x80, -1, 0xe0, 0x1234, 40, "12345678901234567890123456789012", "34567890", 4, 97767552542602192590433234714624, 0, 0, 537879995309340587922569878831104
