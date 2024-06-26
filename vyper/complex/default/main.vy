interface Callable:
    def f(a: uint256) -> uint256: pure

@external
def main(callable: address) -> uint256:
    return staticcall Callable(callable).f(5)
