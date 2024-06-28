@internal
@pure
def _f(b: Bytes[100], i: uint256) -> bytes32:
    return convert(slice(b, i, 1), bytes32)

@external
@view
def f(_: uint256, b: Bytes[100], __: uint256) -> bytes32:
    return self._f(b, 2)
# ----
# f(uint256,bytes,uint256): 7, 0x60, 7, 4, "abcd" -> "c"
