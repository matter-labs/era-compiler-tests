@external
def main(b: address, c: address):
    raw_call(b, abi_encode(c, method_id=method_id("main(address)")), is_static_call=True)
