@external
def __default__() -> Bytes[100]:
    return slice(msg.data, 0, 3)

@external
def f() -> (bool, Bytes[100]):
    retval: Bytes[100] = raw_call(self, b"abc", max_outsize=100)
    return (True, retval)
# ====
# EVMVersion: >=byzantium
# compileViaYul: also
# ----
# f() -> 0x01, 0x40, 0x60, 0x20, 0x03, 0x6162630000000000000000000000000000000000000000000000000000000000
