@external
@payable
def main(second: address, third: address, value_next: uint256) -> uint256:
    result: Bytes[32] = raw_call(second, _abi_encode(third, value_next, method_id=method_id("main(address,uint256)")), max_outsize = 32, is_delegate_call = True)
    return extract32(result, 0, output_type = uint256)
