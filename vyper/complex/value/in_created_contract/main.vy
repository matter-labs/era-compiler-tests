interface Callable:
    def f() -> uint256: payable

@external
@payable
def f(implementation: address, creation_value: uint256, call_value: uint256) -> uint256:
    callable: address = create_forwarder_to(implementation, value=creation_value)
    return extcall Callable(callable).f(value=call_value, gas=msg.gas)
