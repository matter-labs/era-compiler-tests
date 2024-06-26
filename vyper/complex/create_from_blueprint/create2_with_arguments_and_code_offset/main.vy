interface Callable:
    def get() -> uint256: view

@external
def main(salt: bytes32, implementation: address, code_offset: uint256, x: uint256, y: uint256, z: uint256) -> uint256:
    callee: address = create_from_blueprint(implementation, x, y, z, code_offset=code_offset, salt=salt)

    return staticcall Callable(callee).get()
