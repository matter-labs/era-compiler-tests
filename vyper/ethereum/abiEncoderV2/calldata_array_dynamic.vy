interface Self:
    def f(s: DynArray[uint256, 3]) -> Bytes[200]: pure
    def h(s: DynArray[uint8, 3]) -> Bytes[200]: pure
    def j(s: Bytes[3]) -> Bytes[200]: pure

@external
@pure
def f(s: DynArray[uint256, 3]) -> Bytes[200]:
    return abi_encode(s)

@external
@view
def g(s: DynArray[uint256, 3]) -> Bytes[200]:
    return staticcall Self(self).f(s)

@external
@pure
def h(s: DynArray[uint8, 3]) -> Bytes[200]:
    return abi_encode(s)

@external
@view
def i(s: DynArray[uint8, 3]) -> Bytes[200]:
    return staticcall Self(self).h(s)

@external
@pure
def j(s: Bytes[3]) -> Bytes[200]:
    return abi_encode(s)

@external
@view
def k(s: Bytes[3]) -> Bytes[200]:
    return staticcall Self(self).j(s)

# ====
# EVMVersion: >homestead
# ----
# f(uint256[]): 32, 3, 23, 42, 87 -> 32, 160, 32, 3, 23, 42, 87
# g(uint256[]): 32, 3, 23, 42, 87 -> 32, 160, 32, 3, 23, 42, 87
# h(uint8[]): 32, 3, 23, 42, 87 -> 32, 160, 32, 3, 23, 42, 87
# i(uint8[]): 32, 3, 23, 42, 87 -> 32, 160, 32, 3, 23, 42, 87
# h(uint8[]): 32, 3, 0xFF23, 0x1242, 0xAB87 -> FAILURE
# i(uint8[]): 32, 3, 0xAB23, 0x1242, 0xFF87 -> FAILURE
# j(bytes): 32, 3, hex"123456" -> 32, 96, 32, 3, left(0x123456)
# k(bytes): 32, 3, hex"AB33FF" -> 32, 96, 32, 3, left(0xAB33FF)
