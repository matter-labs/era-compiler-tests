interface Self:
    def removeSignature(x: Bytes[200]) -> Bytes[200]: pure

@external
@pure
def removeSignature(x: Bytes[200]) -> Bytes[200]:
    return slice(x, 4, len(x)-4)

@external
def f() -> Bytes[200]:
    x: uint16 = convert(0x1234, uint16)
    return staticcall Self(self).removeSignature(abi_encode(0x1234, convert(b"ab", bytes2), convert(x, bytes2), method_id=method_id("g(bytes2,bytes2,bytes2)")))

@external
def f2() -> Bytes[200]:
    x: bytes2 = 0x1234
    return staticcall Self(self).removeSignature(abi_encode(convert(0x1234, uint16), convert(x, uint16), method_id=method_id("h(uint16,uint16)")))

# ====
# EVMVersion: >homestead
# ----
# f() -> 0x20, 0x60, 0x1234000000000000000000000000000000000000000000000000000000000000, 0x6162000000000000000000000000000000000000000000000000000000000000, 0x1234000000000000000000000000000000000000000000000000000000000000
# f2() -> 0x20, 0x40, 0x1234, 0x1234
