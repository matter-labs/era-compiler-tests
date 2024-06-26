# Report https://linear.app/matterlabs/issue/CPR-269/call-with-calldata-variable-bug

interface Callable:
    def f(_p1: uint256[1]) -> uint256: pure

@external
def main(p1: uint256[1], callable: address) -> uint256:
    return staticcall Callable(callable).f(p1)
