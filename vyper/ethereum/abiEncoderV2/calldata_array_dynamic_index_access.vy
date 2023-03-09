interface Self:
    def f(s: DynArray[uint256, 5]) -> Bytes[300]: pure
    def h(s: DynArray[uint8, 5]) -> Bytes[300]: pure
    def j(s: Bytes[100]) -> Bytes[300]: pure

@external
@pure
def f(s: DynArray[uint256, 5]) -> Bytes[300]:
    return _abi_encode(s)

@external
@view
def g(s: DynArray[uint256, 5][2], which: uint256) -> Bytes[300]:
    return Self(self).f(s[which])

@external
@pure
def h(s: DynArray[uint8, 5]) -> Bytes[300]:
    return _abi_encode(s)

@external
@view
def i(s: DynArray[uint8, 5][2], which: uint256) -> Bytes[300]:
    return Self(self).h(s[which])

@external
@pure
def j(s: Bytes[100]) -> Bytes[300]:
    return _abi_encode(s)

@external
@view
def k(s: Bytes[100][2], which: uint256) -> Bytes[300]:
    return Self(self).j(s[which])

# ====
# EVMVersion: >homestead
# ----
# f(uint256[]): 32, 3, 42, 23, 87 -> 32, 160, 32, 3, 42, 23, 87
# g(uint256[][2],uint256): 0x40, 0, 0x40, 0xC0, 3, 42, 23, 87, 4, 11, 13, 17 -> 32, 160, 32, 3, 42, 23, 87
# g(uint256[][2],uint256): 0x40, 1, 0x40, 0xC0, 3, 42, 23, 87, 4, 11, 13, 17, 27 -> 32, 192, 32, 4, 11, 13, 17, 27
# h(uint8[]): 32, 3, 42, 23, 87 -> 32, 160, 32, 3, 42, 23, 87
# i(uint8[][2],uint256): 0x40, 0, 0x40, 0xC0, 3, 42, 23, 87, 4, 11, 13, 17 -> 32, 160, 32, 3, 42, 23, 87
# i(uint8[][2],uint256): 0x40, 1, 0x40, 0xC0, 3, 42, 23, 87, 4, 11, 13, 17, 27 -> 32, 192, 32, 4, 11, 13, 17, 27
# j(bytes): 32, 3, hex"AB11FF" -> 32, 96, 32, 3, left(0xAB11FF)
# k(bytes[2],uint256): 0x40, 0, 0x40, 0x63, 3, hex"AB11FF", 4, hex"FF791432" -> 32, 96, 32, 3, left(0xAB11FF)
# k(bytes[2],uint256): 0x40, 1, 0x40, 0x63, 3, hex"AB11FF", 4, hex"FF791432" -> 32, 96, 32, 4, left(0xFF791432)
