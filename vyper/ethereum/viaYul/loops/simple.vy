@external
def f() -> uint256:
    x: uint256 = 1
    for a: uint256 in range(10):
        x = x + x
    return x

@external
def j():
    for _: uint256 in range(10000000):
        break
        
# ----
# f() -> 1024
# j() ->
