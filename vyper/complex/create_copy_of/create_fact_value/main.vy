interface Self:
    def main(implementation: address) -> uint256: payable

@external
@payable
def main(implementation: address) -> uint256:
    if msg.value == 1:
        return 1

    callee: address = create_copy_of(implementation)

    return Self(callee).main(implementation, value=msg.value-1) * msg.value
