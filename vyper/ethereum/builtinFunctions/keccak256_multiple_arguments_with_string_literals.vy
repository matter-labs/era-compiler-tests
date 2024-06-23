@external
def foo() -> bytes32:
    return keccak256("foo")

@external
def bar(a: uint256, b: uint256) -> bytes32:
    return keccak256(concat(convert(a, bytes32), slice(convert(b, bytes32), 30, 2), slice(convert(145, bytes32), 31, 1), convert("foo", Bytes[3])))

# ====
# compileViaYul: also
# ----
# foo() -> 0x41b1a0649752af1b28b3dc29a1556eee781e4a4c3a1f7f53f90fa834de098c4d
# bar(uint256,uint256): 0xa, 0xc -> 0x6990f36476dc412b1c4baa48e2d9f4aa4bb313f61fda367c8fdbbb2232dc6146
