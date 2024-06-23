x: immutable(uint256)
y: immutable(uint256)

m: public(HashMap[uint256, uint256])

@deploy
def __init__(_a: uint256):
    x = 42
    y = 23
    self.m[_a] = 7
    _: uint256[4] = empty(uint256[4])
    
@external
@view
def f() -> (uint256, uint256):
    return (x+x,y)

# ====
# compileViaYul: also
# ----
# constructor(): 3 ->
# gas irOptimized: 137184
# gas legacy: 209361
# gas legacyOptimized: 139324
# f() -> 84, 23
# m(uint256): 3 -> 7
