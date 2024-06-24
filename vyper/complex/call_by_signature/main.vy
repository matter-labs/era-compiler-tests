import storage as Storage

@external
def main(_value: uint256, storage_address: address) -> uint256:
    raw_call(storage_address, abi_decode(_value, method_id=method_id("set(uint256)")))
    return Storage(storage_address).get() * 2
