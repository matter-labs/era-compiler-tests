import callable as Callable

@external
def main(callable: address) -> uint256:
    return Callable(callable).f(5)
