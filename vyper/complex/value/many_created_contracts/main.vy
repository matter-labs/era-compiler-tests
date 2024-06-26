interface Callable:
    def f() -> uint256: payable

@external
@payable
def f(implementation: address, n: uint256) -> uint256:
    callables: DynArray[address, 100] = []
    for i: uint256 in range(100):
        if i >= n:
            break
        callables.append(create_forwarder_to(implementation, value=i))

    sum: uint256 = 0
    for i: uint256 in range(100):
        if i >= n:
            break
        sum += extcall Callable(callables[i]).f(value=i, gas=msg.gas)

    return sum
