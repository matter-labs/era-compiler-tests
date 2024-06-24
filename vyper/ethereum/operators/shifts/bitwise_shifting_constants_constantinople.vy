@external
def shl_1() -> bool:
    c: uint256 = 0
    c = c << 2
    assert c == 4
    return True

@external
def shl_2() -> bool:
    c: uint256 = 0
    c = convert(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, uint256) << 1
    assert c == convert(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, uint256)
    return True

@external
def shl_3() -> bool:
    c: uint256 = 0
    c = convert(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, uint256) << 256
    assert c == 0
    return True

@external
def shr_1() -> bool:
    c: uint256 = 0
    c = 3 >> 1
    assert c == 1
    return True

@external
def shr_2() -> bool:
    c: uint256 = 0
    c = convert(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, uint256) >> 1
    assert c == convert(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, uint256)
    return True

@external
def shr_3() -> bool:
    c: uint256 = 0
    c = convert(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, uint256) >> 256
    assert c == 0
    return True

# ----
# shl_1() -> 0x01
# shl_2() -> 0x01
# shl_3() -> 0x01
# shr_1() -> 0x01
# shr_2() -> 0x01
# shr_3() -> 0x01
