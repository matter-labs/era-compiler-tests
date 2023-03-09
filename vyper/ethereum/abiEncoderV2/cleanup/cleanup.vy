@external
@pure
def f(a: uint16, b: int16, c: address, d: bytes3, e: bool) -> (uint256, uint256, uint256, uint256, uint256):
    return (convert(a, uint256), convert(b, uint256), convert(c, uint256), convert(convert(d, bytes32), uint256), convert(e, uint256))

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(uint16,int16,address,bytes3,bool): 1, 2, 3, "a", true -> 1, 2, 3, "a", true
# f(uint16,int16,address,bytes3,bool): 0xffffff, 0x1ffff, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, "abcd", 1 -> FAILURE
# f(uint16,int16,address,bytes3,bool): 0xffffff, 0, 0, "bcd", 1 -> FAILURE
# f(uint16,int16,address,bytes3,bool): 0, 0x1ffff, 0, "ab", 1 -> FAILURE
# f(uint16,int16,address,bytes3,bool): 0, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, "ad", 1 -> FAILURE
# f(uint16,int16,address,bytes3,bool): 0, 0, 0, "abcd", 1 -> FAILURE
# f(uint16,int16,address,bytes3,bool): 0, 0, 0, "abc", 2 -> FAILURE
