interface First:
    def fact(n: uint256, first: address, second: address) -> uint256: nonpayable

@external
def fact(n: uint256, first: address, second: address) -> uint256:
    if n == 0:
        return 1
    return extcall First(first).fact(n - 1, first, second) * n
