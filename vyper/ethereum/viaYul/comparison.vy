@external
@pure
def f(a: address) -> bool:
    return a == convert(0, address)

@external
@pure
def g() -> bool:
    return convert(convert(b"abc", bytes3), bytes4) == convert(b"abc", bytes4)

@external
@pure
def lt_(a: uint256, b: uint256) -> bool:
    return a < b

@external
@pure
def slt_(a: int256, b: int256) -> bool:
    return a < b

@external
@pure
def lte(a: uint256, b: uint256) -> bool:
    return a <= b

@external
@pure
def slte(a: int256, b: int256) -> bool:
    return a <= b

@external
@pure
def gt_(a: uint256, b: uint256) -> bool:
    return a > b

@external
@pure
def sgt_(a: int256, b: int256) -> bool:
    return a > b

@external
@pure
def gte(a: uint256, b: uint256) -> bool:
    return a >= b

@external
@pure
def sgte(a: int256, b: int256) -> bool:
    return a >= b

@external
@pure
def eq_(a: uint256, b: uint256) -> bool:
    return a == b

@external
@pure
def neq(a: uint256, b: uint256) -> bool:
    return a != b    
    
# ----
# f(address): 0x1234 -> false
# f(address): 0x00 -> true
# g() -> true
# lt_(uint256,uint256): 4, 5 -> true
# lt_(uint256,uint256): 5, 5 -> false
# lt_(uint256,uint256): 6, 5 -> false
# gt_(uint256,uint256): 4, 5 -> false
# gt_(uint256,uint256): 5, 5 -> false
# gt_(uint256,uint256): 6, 5 -> true
# lte(uint256,uint256): 4, 5 -> true
# lte(uint256,uint256): 5, 5 -> true
# lte(uint256,uint256): 6, 5 -> false
# gte(uint256,uint256): 4, 5 -> false
# gte(uint256,uint256): 5, 5 -> true
# gte(uint256,uint256): 6, 5 -> true
# eq_(uint256,uint256): 4, 5 -> false
# eq_(uint256,uint256): 5, 5 -> true
# eq_(uint256,uint256): 6, 5 -> false
# neq(uint256,uint256): 4, 5 -> true
# neq(uint256,uint256): 5, 5 -> false
# neq(uint256,uint256): 6, 5 -> true
# slt_(int256,int256): -1, 0 -> true
# slt_(int256,int256): 0, 0 -> false
# slt_(int256,int256): 1, 0 -> false
# sgt_(int256,int256): -1, 0 -> false
# sgt_(int256,int256): 0, 0 -> false
# sgt_(int256,int256): 1, 0 -> true
# slte(int256,int256): -1, 0 -> true
# slte(int256,int256): 0, 0 -> true
# slte(int256,int256): 1, 0 -> false
# sgte(int256,int256): -1, 0 -> false
# sgte(int256,int256): 0, 0 -> true
# sgte(int256,int256): 1, 0 -> true
