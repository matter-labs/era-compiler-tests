import first as First

@external
def fact(n: uint256, first: address, second: address) -> uint256:
    if n == 0:
        return 1
    return First(first).fact(n - 1, first, second) * n
