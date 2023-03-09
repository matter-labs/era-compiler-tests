@external
@pure
def not_(a: bool) -> bool:
    return not a

@external
@pure
def bitnot(a: uint256) -> uint256:
    return bitwise_not(a)

@external
@pure
def negate(a: int256) -> int256:
    return -a
    
@external
@pure
def negate_s8(a: int8) -> int8:
    return -a
    
@external
@pure
def negate_s16(a: int16) -> int16:
    return -a
      
# ====
# compileViaYul: true
# compileToEwasm: also
# ----
# not_(bool): true -> false
# not_(bool): false -> true
# bitnot(uint256): 5 -> -6
# bitnot(uint256): 10 -> -11
# bitnot(uint256): 0 -> -1
# bitnot(uint256): -100 -> 99
# negate(int256): -57896044618658097711785492504343953926634992332820282019728792003956564819968 -> FAILURE
# negate(int256): -57896044618658097711785492504343953926634992332820282019728792003956564819967 -> 57896044618658097711785492504343953926634992332820282019728792003956564819967
# negate(int256): 0 -> 0
# negate(int256): 1 -> -1
# negate(int256): -1 -> 1
# negate_s8(int8): -128 -> FAILURE
# negate_s8(int8): -138 -> FAILURE
# negate_s8(int8): -127 -> 127
# negate_s8(int8): 127 -> -127
# negate_s16(int16): -32768 -> FAILURE
# negate_s16(int16): -32767 -> 32767
