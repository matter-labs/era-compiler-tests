interface Self:
    def main(implementation: address) -> uint256: payable

@external
@payable
def main(implementation: address) -> uint256:
    if msg.value == 1:
        return 1

    forwarder: address = create_from_blueprint(implementation)

    return Self(forwarder).main(implementation, value=msg.value-1) * msg.value
