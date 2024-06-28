@external
def f(x: uint256) -> uint256:
    return convert(slice(convert(31, bytes32), x, 1), uint256)
    
@external
def g(x: uint256) -> uint256:
    return convert(slice(convert(x, bytes32), 31, 1), uint256)

# ----
# f(uint256): 2 -> 0
# g(uint256): 2 -> 2
