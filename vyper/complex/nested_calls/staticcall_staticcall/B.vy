import C as C

@external
def main(c: address):
    raw_call(c, method_id("main()"), is_static_call=True)
