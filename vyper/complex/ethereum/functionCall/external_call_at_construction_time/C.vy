# Constructors are replaced with functions, so the result is other
# This tests skipping the extcodesize check.
import T as T
import U as U

@external
def f(c: uint256, _t: address, _u: address) -> uint256:
    if c == 0:
        t: address = create_forwarder_to(_t)
    elif c == 1:
        u: address = create_forwarder_to(_u)
    return 1 + c
