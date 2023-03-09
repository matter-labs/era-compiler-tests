interface ICallable:
    def f(a: uint256, x: bool) -> uint256: pure

@external
def main(callable: address) -> uint256:
    return ICallable(callable).f(5, False)
