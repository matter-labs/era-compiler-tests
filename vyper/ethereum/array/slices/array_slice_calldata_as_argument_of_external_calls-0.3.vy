@external
def f1(c1: Bytes[100], s: uint256, e: uint256, c2: Bytes[100]) -> bool:
    return keccak256(slice(c1, s, e-s)) == keccak256(c2)

@external
def f3(c1: Bytes[100], s: uint256, e: uint256, c2: Bytes[100]) -> bool:
    a: Bytes[200] = _abi_encode(slice(c1, s, e-s))
    b: Bytes[200] = _abi_encode(c2)
    if len(a) != len(b):
        return False
    for i in range(100):
        if not i < len(a):
            break
        if slice(a, i, 1) != slice(b, i, 1):
            return False
    return True

# ----
# f1(bytes,uint256,uint256,bytes): 0x80, 1, 5, 0xC0, 8, "abcdefgh", 4, "bcde" -> true
# f1(bytes,uint256,uint256,bytes): 0x80, 1, 5, 0xC0, 8, "abcdefgh", 4, "bcdf" -> false
# f3(bytes,uint256,uint256,bytes): 0x80, 1, 5, 0xC0, 8, "abcdefgh", 4, "bcde" -> true
# f3(bytes,uint256,uint256,bytes): 0x80, 1, 5, 0xC0, 8, "abcdefgh", 4, "bcdf" -> false
