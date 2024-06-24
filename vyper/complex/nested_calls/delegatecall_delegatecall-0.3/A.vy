import B as B

@external
def main(b: address, c: address) -> address:
    output: Bytes[32] = raw_call(b, _abi_encode(c, method_id=method_id("main(address)")), max_outsize=32, is_delegate_call=True)
    return convert(convert(output, uint256), address)
