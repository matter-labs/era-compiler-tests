interface Self:
    def f(n: uint256) -> uint256: nonpayable

@external
def f(n: uint256) -> uint256:
    callee: address = create_copy_of(self)

    if n == 1:
        return 1

    return Self(callee).f(n - 1) + n
