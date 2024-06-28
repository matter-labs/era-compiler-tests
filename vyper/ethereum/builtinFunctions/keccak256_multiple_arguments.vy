@external
def foo(a: uint256, b: uint256, c: uint256) -> bytes32:
    return keccak256(concat(convert(a, bytes32), convert(b, bytes32), convert(c, bytes32)))

# ----
# foo(uint256,uint256,uint256): 0xa, 0xc, 0xd -> 0xbc740a98aae5923e8f04c9aa798c9ee82f69e319997699f2782c40828db9fd81
