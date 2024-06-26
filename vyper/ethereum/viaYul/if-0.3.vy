@external
def f(condition: bool) -> uint256:
    x: uint256 = 23
    if condition:
        x = 42
    return x

@external
def g(condition: bool) -> uint256:
    x: uint256 = 0
    if condition:
        x = 42
    else:
        x = 23
    return x

@external
def h(condition: bool) -> uint256:
    if condition:
        return 42
    return 23
    
@external
def i(condition: bool) -> uint256:
    x: uint256 = 0
    if condition:
        x = 10
    else:
        return 23
    x = 42
    return x
    
@external
def j(a: uint256, b: uint256) -> (uint256, uint256):
    x: uint256 = 42
    if a + b < 10:
        x = a
    else:
        x = b
    y: uint256 = 100
    return x, y
    
@external
def k(a: uint256, b: uint256) -> (uint256, uint256):
    x: uint256 = 42
    y: uint256 = 0
    for _ in range(10000000):
        if a + b < 10:
            if a == b:
                x = 99
                y = 99
                break
            else:
                x = a
        else:
            x = b
            if a != b:
                y = 17
            else:
                y = 13
            break
        y = 100
        if not False:
            break
    return x, y
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(bool): 0 -> 23
# f(bool): 1 -> 42
# g(bool): 0 -> 23
# g(bool): 1 -> 42
# h(bool): 0 -> 23
# h(bool): 1 -> 42
# i(bool): 0 -> 23
# i(bool): 1 -> 42
# j(uint256,uint256): 1, 3 -> 1, 100
# j(uint256,uint256): 3, 1 -> 3, 100
# j(uint256,uint256): 10, 23 -> 23, 100
# j(uint256,uint256): 23, 10 -> 10, 100
# k(uint256,uint256): 1, 3 -> 1, 100
# k(uint256,uint256): 3, 1 -> 3, 100
# k(uint256,uint256): 3, 3 -> 99, 99
# k(uint256,uint256): 10, 23 -> 23, 17
# k(uint256,uint256): 23, 10 -> 10, 17
# k(uint256,uint256): 23, 23 -> 23, 13
