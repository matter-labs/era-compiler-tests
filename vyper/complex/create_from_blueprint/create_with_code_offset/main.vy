interface Callable:
    def get() -> uint256: view
    def set(x: uint256): nonpayable

@external
def main(implementation: address, code_offset: uint256) -> uint256:
    callee: address = create_from_blueprint(implementation, code_offset=code_offset)

    extcall Callable(callee).set(10)
    return staticcall Callable(callee).get()
