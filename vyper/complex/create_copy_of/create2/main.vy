import callable as Callable

@external
def main(salt: bytes32, implementation: address) -> uint256:
    callee: address = create_copy_of(implementation, salt=salt)

    Callable(callee).set(10)
    return Callable(callee).get()
