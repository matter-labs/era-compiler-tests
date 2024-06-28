@internal
@pure
def reverse(_b: Bytes[100]) -> (bytes32, bytes32):
    return (convert(slice(_b, 1, 1), bytes32), convert(slice(_b, 0, 1), bytes32))

@external
@view
def test(_: uint256, _b: Bytes[100], __: uint256) -> (bytes32, bytes32):
    return self.reverse(_b)

# ----
# test(uint256,bytes,uint256): 7, 0x60, 4, 2, "ab" -> "b", "a"
