interface C:
    def main() -> address: nonpayable

@external
def main(c: address) -> address:
    return extcall C(c).main()
