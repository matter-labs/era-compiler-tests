interface Self:
    def main(n: uint256, implementation: address) -> uint256: nonpayable

@external
def main(n: uint256, implementation: address) -> uint256:
    if n == 1:
        return 1

    forwarder: address = create_copy_of(implementation, salt=convert(0, bytes32))

    return Self(forwarder).main(n - 1, implementation) * n
