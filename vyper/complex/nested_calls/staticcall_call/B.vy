interface C:
    def main(): nonpayable

@external
def main(c: address):
    extcall C(c).main()
