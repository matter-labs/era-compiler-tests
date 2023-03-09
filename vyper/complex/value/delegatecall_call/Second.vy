@external
@payable
def main(third: address, value_: uint256) -> uint256:
    result: Bytes[32] = raw_call(third, method_id("value()"), max_outsize = 32, value = value_)
    return extract32(result, 0, output_type = uint256)

