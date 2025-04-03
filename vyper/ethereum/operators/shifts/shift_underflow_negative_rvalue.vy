@external
def f(a: uint256, b: uint256) -> uint256:
    return a << b
    
@external
def g(a: uint256, b: uint256) -> uint256:
    return a >> b

# ----
# f(uint256,uint256): 1, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0
# g(uint256,uint256): 1, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0
