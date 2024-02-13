import callable as Callable

@external
def main(implementation: address) -> uint256:
    forwarder: address = create_copy_of(implementation)

    Callable(forwarder).set(10)
    return Callable(forwarder).get()
