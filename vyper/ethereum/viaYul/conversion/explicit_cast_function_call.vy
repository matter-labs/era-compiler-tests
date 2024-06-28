@internal
@pure
def f(b: bytes32) -> bytes32:
    return b
    
@external
@view
def g() -> bytes32:
    return self.f(convert(convert(convert(0x12345678, uint32), bytes4), bytes32))

# ----
# g() -> 0x1234567800000000000000000000000000000000000000000000000000000000
