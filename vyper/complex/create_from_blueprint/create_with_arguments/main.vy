interface Callable:
    def get() -> uint256: view

@external
def main(implementation: address, x: uint256, y: uint256, z: uint256) -> uint256:
    callee: address = create_from_blueprint(implementation, x, y, z)

    return staticcall Callable(callee).get()
