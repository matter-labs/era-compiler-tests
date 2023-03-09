@external
@pure
def g(x: address) -> uint256:
    return convert(x, uint256)

# ====
# compileViaYul: also
# ----
# g(address): 0 -> 0 # test validation as well as sanity check #
# g(address): 1 -> 1
# g(address): 2 -> 2
# g(address): 0xabcdef0123456789abcdef0123456789abcdefff -> 0xabcdef0123456789abcdef0123456789abcdefff
# g(address): 0xffffffffffffffffffffffffffffffffffffffff -> 0xffffffffffffffffffffffffffffffffffffffff
# g(address): 0x010000000000000000000000000000000000000000 -> FAILURE
# g(address): 0x01abcdef0123456789abcdef0123456789abcdefff -> FAILURE
# g(address): 0x01ffffffffffffffffffffffffffffffffffffffff -> FAILURE
# g(address): -1 -> FAILURE
