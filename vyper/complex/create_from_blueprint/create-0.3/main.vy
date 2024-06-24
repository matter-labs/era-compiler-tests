import callable as Callable

@external
def main(implementation: address) -> uint256:
    callee: address = create_from_blueprint(implementation)

    Callable(callee).set(10)
    return Callable(callee).get()
