@external
@payable
def main(second: address, third: address) -> uint256:
    result: Bytes[32] = raw_call(second, abi_encode(third, method_id=method_id("main(address)")), max_outsize = 32, is_delegate_call = True)
    return extract32(result, 0, output_type = uint256)
