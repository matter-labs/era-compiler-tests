interface Second:
    def fact(n: uint256, first: address, second: address) -> uint256: nonpayable

@external
def fact(n: uint256, first: address, second: address) -> uint256:
    if n == 0:
        return 1
    return extcall Second(second).fact(n - 1, first, second) * n
