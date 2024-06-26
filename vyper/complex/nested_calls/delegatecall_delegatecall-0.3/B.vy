import C as C

@external
def main(c: address) -> address:
    output: Bytes[32] = raw_call(c, method_id("main()"), max_outsize=32, is_delegate_call=True)
    return convert(convert(output, uint256), address)
