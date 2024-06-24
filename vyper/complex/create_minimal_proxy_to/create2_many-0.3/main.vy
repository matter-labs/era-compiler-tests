import callable as Callable

@external
def main(n: uint8, implementation: address) -> uint256:
    addresses: address[254] = empty(address[254])
    for i in range(254):
        if i >= n:
            break
        addresses[i] = create_forwarder_to(implementation, salt=convert(i, bytes32))
        Callable(addresses[i]).set([convert(i, uint256) + 1, convert(i, uint256) + 3], i + 2)

    result: uint256 = 0
    for i in range(254):
        if i >= n:
            break
        a: uint256[2] = empty(uint256[2])
        b: uint8 = empty(uint8)
        a, b = Callable(addresses[i]).get()
        result += a[0] * a[1] * convert(b, uint256)

    return result
