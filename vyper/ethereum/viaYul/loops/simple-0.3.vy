@external
def f() -> uint256:
    x: uint256 = 1
    for a in range(10):
        x = x + x
    return x

@external
def j():
    for _ in range(10000000):
        break
        
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 1024
# j() ->
