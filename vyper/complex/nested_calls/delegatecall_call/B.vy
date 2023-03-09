import C as C

@external
def main(c: address) -> address:
    return C(c).main()
