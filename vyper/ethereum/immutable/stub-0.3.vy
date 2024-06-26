x: immutable(uint256)
y: immutable(uint256)

@external
def __init__():
    x = 42
    y = 23
    
@external
@view
def f() -> (uint256, uint256):
    return (x+x,y)

# ====
# compileViaYul: also
# ----
# f() -> 84, 23
