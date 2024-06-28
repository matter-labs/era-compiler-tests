@external
def f(_b: bool) -> uint256:
    if _b:
        return 1
    else:
        return 0

@external
def g(_in: bool) -> bool:
    return _in

# ----
# f(bool): 0x0 -> 0x0
# f(bool): 0x1 -> 0x1
# f(bool): 0x2 -> FAILURE
# f(bool): 0x3 -> FAILURE
# f(bool): 0xff -> FAILURE
# g(bool): 0x0 -> 0x0
# g(bool): 0x1 -> 0x1
# g(bool): 0x2 -> FAILURE
# g(bool): 0x3 -> FAILURE
# g(bool): 0xff -> FAILURE
