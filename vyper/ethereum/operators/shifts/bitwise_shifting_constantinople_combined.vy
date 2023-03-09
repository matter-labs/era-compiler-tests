@external
def shl_zero(a: uint256) -> uint256:
    return shift(a, 0)

@external
def shr_zero(a: uint256) -> uint256:
    return shift(a, -0)

@external
def shl_large(a: uint256) -> uint256:
    return shift(a, convert(0x0110, int256))

@external
def shr_large(a: uint256) -> uint256:
    return shift(a, -convert(0x0110, int256))

@external
def shl_combined(a: uint256) -> uint256:
    return shift(shift(a, 12), 4)

@external
def shr_combined(a: uint256) -> uint256:
    return shift(shift(a, -12), -4)

@external
def shl_combined_large(a: uint256) -> uint256:
    return shift(shift(a, convert(0x40, int256)), convert(convert(0xd0, uint8), int256))

@external
def shl_combined_overflow(a: uint256) -> uint256:
    return shift(shift(a, 2**255-1), convert(0x01, int256))

@external
def shr_combined_large(a: uint256) -> uint256:
    return shift(shift(a, -convert(0x40, int256)), -convert(convert(0xd0, uint8), int256))

@external
def shr_combined_overflow(a: uint256) -> uint256:
    return shift(shift(a, -(2**255-1)), -convert(0x01, int256))

# ====
# EVMVersion: >=constantinople
# compileViaYul: also
# ----
# shl_zero(uint256): 0x00 -> 0x00
# shl_zero(uint256): 0xffff -> 0xffff
# shl_zero(uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
# shr_zero(uint256): 0x00 -> 0x00
# shr_zero(uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
# shl_large(uint256): 0x00 -> 0x00
# shl_large(uint256): 0xffff -> 0x00
# shl_large(uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0x00
# shr_large(uint256): 0x00 -> 0x00
# shr_large(uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0x00
# shl_combined(uint256): 0x00 -> 0x00
# shl_combined(uint256): 0xffff -> 0xffff0000
# shl_combined(uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000
# shr_combined(uint256): 0x00 -> 0x00
# shr_combined(uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
# shl_combined_large(uint256): 0x00 -> 0x00
# shl_combined_large(uint256): 0xffff -> 0x00
# shl_combined_large(uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0x00
# shl_combined_overflow(uint256): 0x02 -> 0x00
# shr_combined_large(uint256): 0x00 -> 0x00
# shr_combined_large(uint256): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0x00
# shr_combined_overflow(uint256): 0x02 -> 0x00
