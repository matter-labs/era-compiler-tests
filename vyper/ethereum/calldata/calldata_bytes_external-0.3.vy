interface Self:
    def test(x: Bytes[100]) -> Bytes[100]: nonpayable

@external
def test(x: Bytes[100]) -> Bytes[100]:
    return x

@external
def tester(x: Bytes[100]) -> bytes32:
    return convert(slice(Self(self).test(x), 2, 1), bytes32)
# ====
# EVMVersion: >=byzantium
# compileViaYul: also
# ----
# tester(bytes): 0x20, 0x08, "abcdefgh" -> "c"
