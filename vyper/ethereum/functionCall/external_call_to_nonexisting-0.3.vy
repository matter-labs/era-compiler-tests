# This tests skipping the extcodesize check.

interface I:
    def a(): pure
    def b(): nonpayable
    def c(): payable
    def x() -> uint256: nonpayable
    def y() -> String[100]: nonpayable

i: I

@external
def __init__():
    self.i = I(convert(0xcafecafe, address))
   
@external
def f(c: uint256) -> uint256:
    if c == 0:
        self.i.a()
    elif c == 1:
        self.i.b()
    elif c == 2:
        self.i.c()
    elif c == 3:
        self.i.c()
    elif c == 4:
        self.i.x()
    elif c == 5:
        self.i.y()
    return 1 + c

# ----
# constructor() ->
# gas irOptimized: 308423
# gas legacy: 465314
# gas legacyOptimized: 304481
# f(uint256): 0 -> FAILURE
# f(uint256): 1 -> FAILURE
# f(uint256): 2 -> FAILURE
# f(uint256): 3 -> FAILURE
# f(uint256): 4 -> FAILURE
# f(uint256): 5 -> FAILURE
# f(uint256): 6 -> 7
