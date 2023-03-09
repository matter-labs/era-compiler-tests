interface Self:
    def f(s: DynArray[uint8[1], 1][1]) -> Bytes[300]: pure
    def f2(s: DynArray[uint256[2], 1][2]) -> Bytes[300]: pure
    def reenc_f(s: DynArray[uint8[1], 1][1]) -> Bytes[300]: view
    def reenc_f2(s: DynArray[uint256[2], 1][2]) -> Bytes[300]: view

@external
@pure
def f(s: DynArray[uint8[1], 1][1]) -> Bytes[300]:
    return slice(msg.data, 0, 132)

@external
@pure
def f2(s: DynArray[uint256[2], 1][2]) -> Bytes[300]:
    return slice(msg.data, 0, 292)

@external
@view
def reenc_f(s: DynArray[uint8[1], 1][1]) -> Bytes[300]:
    return Self(self).f(s)

@external
@view
def reenc_f2(s: DynArray[uint256[2], 1][2]) -> Bytes[300]:
    return Self(self).f2(s)

@external
def g() -> Bytes[300]:
    m: DynArray[uint8[1], 1][1] = [[[42]]]
    return Self(self).f(m)
    
@external
def h() -> Bytes[300]:
    m: DynArray[uint8[1], 1][1] = [[[42]]]
    return Self(self).reenc_f(m)
    
@external
def i() -> Bytes[300]:
    m: DynArray[uint256[2], 1][2] = [[[convert(0x000042, uint256), convert(0x000142)]],[[convert(0x010042, uint256), convert(0x010142, uint256)]]]
    return Self(self).f2(m)
    
@external
def j() -> Bytes[300]:
    m: DynArray[uint256[2], 1][2] = [[[convert(0x000042, uint256), convert(0x000142)]],[[convert(0x010042, uint256), convert(0x010142, uint256)]]]
    return Self(self).reenc_f2(m)

# ====
# EVMVersion: >homestead
# ----
# g() -> 32, 132, hex"15cfcc01", 32, 32, 1, 42, hex"00000000000000000000000000000000000000000000000000000000"
# h() -> 32, 132, hex"15cfcc01", 32, 32, 1, 42, hex"00000000000000000000000000000000000000000000000000000000"
# i() -> 32, 292, hex"dc0ee233", 32, 64, 160, 1, 0x42, 0x000142, 1, 0x010042, 0x010142, hex"00000000000000000000000000000000000000000000000000000000"
# j() -> 32, 292, hex"dc0ee233", 32, 64, 160, 1, 0x42, 0x000142, 1, 0x010042, 0x010142, hex"00000000000000000000000000000000000000000000000000000000"
