import callable as Callable

@external
def main(implementation: address, code_offset: uint256) -> uint256:
    callee: address = create_from_blueprint(implementation, code_offset=code_offset)

    Callable(callee).set(10)
    return Callable(callee).get()
