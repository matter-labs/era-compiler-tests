import callable as Callable

@external
def main(salt: bytes32, implementation: address, x: uint256, y: uint256, z: uint256) -> uint256:
    callee: address = create_from_blueprint(implementation, x, y, z, salt=salt)

    return Callable(callee).get()
