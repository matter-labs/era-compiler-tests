@external
@payable
def main(testContract: address) -> uint256:
    result: Bytes[32] = raw_call(testContract, method_id("value()"), max_outsize = 32, is_delegate_call = True)
    return extract32(result, 0, output_type = uint256)
