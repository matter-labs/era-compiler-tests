interface Storage:
    def get() -> uint256: view

@external
def main(_value: uint256, storage_address: address) -> uint256:
    raw_call(storage_address, abi_encode(_value, method_id=method_id("set(uint256)")))
    return staticcall Storage(storage_address).get() * 2
