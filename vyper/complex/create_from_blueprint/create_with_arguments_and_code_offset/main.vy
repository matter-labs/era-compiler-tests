import callable as Callable

@external
def main(implementation: address, code_offset: uint256, x: uint256, y: uint256, z: uint256) -> uint256:
    callee: address = create_from_blueprint(implementation, x, y, z, code_offset=code_offset)

    return Callable(callee).get()
