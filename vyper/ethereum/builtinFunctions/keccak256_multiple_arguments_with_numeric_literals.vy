@external
def foo(a: uint256, b: uint256) -> bytes32:
    return keccak256(concat(convert(a, bytes32), slice(convert(b, bytes32), 30, 2), slice(convert(145, bytes32), 31, 1)))
# ====
# compileViaYul: also
# ----
# foo(uint256,uint256): 0xa, 0xc -> 0x88acd45f75907e7c560318bc1a5249850a0999c4896717b1167d05d116e6dbad
