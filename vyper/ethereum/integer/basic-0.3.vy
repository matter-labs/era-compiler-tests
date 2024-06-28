@external
@pure
def basic() -> bool:
    uint_min: uint256 = 0
    assert uint_min  == 0

    uint_max: uint256 = MAX_UINT256
    assert uint_max  == 115792089237316195423570985008687907853269984665640564039457584007913129639935

    int_min: int256 = -2**255
    assert int_min == -2**255
    assert int_min == -57896044618658097711785492504343953926634992332820282019728792003956564819968

    int_max: int256 = 2**255 - 1
    assert int_max == 2**255 - 1
    assert int_max == 57896044618658097711785492504343953926634992332820282019728792003956564819967
    
    return True

# ----
# basic() -> true
