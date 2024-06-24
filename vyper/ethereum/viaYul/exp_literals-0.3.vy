@external
def exp_2(y: uint256) -> uint256:
    return 2 ** y

@external
def exp_minus_2(y: uint256) -> int256:
    return (-2) ** convert(y, int256)

@external
def exp_uint_max(y: uint256) -> uint256:
    return MAX_UINT256 ** y

@external
def exp_int_max(y: uint256) -> int256:
    return ((-2) ** 255) ** convert(y, int256)

@external
def exp_5(y: uint256) -> uint256:
    return 5 ** y

@external
def exp_minus_5(y: uint256) -> int256:
    return (-5) ** convert(y, int256)

@external
def exp_256(y: uint256) -> uint256:
    return 256 ** y

@external
def exp_minus_256(y: uint256) -> int256:
    return (-256) ** convert(y, int256)

# ====
# compileToEwasm: also
# compileViaYul: true
# ----
# exp_2(uint256): 255 -> 57896044618658097711785492504343953926634992332820282019728792003956564819968
# exp_2(uint256): 256 -> FAILURE
# exp_minus_2(uint256): 255 -> -57896044618658097711785492504343953926634992332820282019728792003956564819968
# exp_minus_2(uint256): 256 -> FAILURE
# exp_uint_max(uint256): 1 -> 115792089237316195423570985008687907853269984665640564039457584007913129639935
# exp_uint_max(uint256): 2 -> FAILURE
# exp_int_max(uint256): 1 -> -57896044618658097711785492504343953926634992332820282019728792003956564819968
# exp_int_max(uint256): 2 -> FAILURE
# exp_5(uint256): 110 -> 77037197775489434122239117703397092741524065928615527809597551822662353515625
# exp_5(uint256): 111 -> FAILURE
# exp_minus_5(uint256): 109 -> -15407439555097886824447823540679418548304813185723105561919510364532470703125
# exp_minus_5(uint256): 110 -> FAILURE
# exp_256(uint256): 31 -> 452312848583266388373324160190187140051835877600158453279131187530910662656
# exp_256(uint256): 32 -> FAILURE
# exp_minus_256(uint256): 31 -> -452312848583266388373324160190187140051835877600158453279131187530910662656
# exp_minus_256(uint256): 32 -> FAILURE
