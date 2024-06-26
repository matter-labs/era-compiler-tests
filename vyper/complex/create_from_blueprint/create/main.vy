interface Callable:
    def get() -> uint256: view
    def set(x: uint256): nonpayable

@external
def main(implementation: address) -> uint256:
    callee: address = create_from_blueprint(implementation)

    extcall Callable(callee).set(10)
    return staticcall Callable(callee).get()
