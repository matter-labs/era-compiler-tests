import callable as Callable

@external
def main(salt: bytes32, implementation: address) -> uint256:
    forwarder: address = create_from_blueprint(implementation, salt=salt)

    Callable(forwarder).set(10)
    return Callable(forwarder).get()
