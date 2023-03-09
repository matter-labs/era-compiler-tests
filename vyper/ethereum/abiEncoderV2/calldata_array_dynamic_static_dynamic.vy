interface Self:
    def f(s: DynArray[DynArray[uint8, 5][1],5]) -> Bytes[300]: pure
    def f2(s: DynArray[DynArray[uint8, 5][2],5]) -> Bytes[300]: pure
    def reenc_f(s: DynArray[DynArray[uint8, 5][1],5]) -> Bytes[300]: view
    def reenc_f2(s: DynArray[DynArray[uint256, 5][1],5]) -> Bytes[300]: view

@external
@pure
def f(s: DynArray[DynArray[uint8, 5][1],5]) -> Bytes[300]:
    return slice(msg.data, 0, 196)

@external
@pure
def f2(s: DynArray[DynArray[uint8, 5][2],5]) -> Bytes[300]:
    return slice(msg.data, 0, 328)

@external
@view
def reenc_f(s: DynArray[DynArray[uint8, 5][1],5]) -> Bytes[300]:
    return Self(self).f(s)

@external
@view
def reenc_f2(s: DynArray[DynArray[uint256, 5][1],5]) -> Bytes[300]:
    return Self(self).f2(s)

@external
def g() -> Bytes[300]:
    m: DynArray[DynArray[uint8, 5][1],5] = [[[]]]
    m[0][0] = [42]
    return Self(self).f(m)

@external
def h() -> Bytes[300]:
    m: DynArray[DynArray[uint8, 5][1],5] = [[[]]]
    m[0][0] = [42]
    return Self(self).reenc_f(m)

@external
def i() -> Bytes[300]:
    m: DynArray[DynArray[uint256, 5][2],5] = [[[],[]]]
    m[0][0] = [42]
    m[0][1] = [42]
    return Self(self).f2(m)

@external
def j() -> Bytes[300]:
    m: DynArray[DynArray[uint256, 5][2],5] = [[[],[]]]
    m[0][0] = [42]
    m[0][1] = [42]
    return Self(self).reenc_f2(m)

# ====
# EVMVersion: >homestead
# ----
# g() -> 32, 196, hex"eccb829a", 32, 1, 32, 32, 1, 42, hex"00000000000000000000000000000000000000000000000000000000"
# h() -> 32, 196, hex"eccb829a", 32, 1, 32, 32, 1, 42, hex"00000000000000000000000000000000000000000000000000000000"
