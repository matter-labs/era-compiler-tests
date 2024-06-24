interface Self:
    def main(n: uint256, implementation: address) -> uint256: nonpayable

@external
def main(n: uint256, implementation: address) -> uint256:
    if n == 1:
        return 1

    callee: address = create_from_blueprint(implementation, salt=convert(0, bytes32))

    return extcall Self(callee).main(n - 1, implementation) * n
