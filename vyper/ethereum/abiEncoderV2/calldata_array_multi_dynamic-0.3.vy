interface Self:
    def f(s: DynArray[DynArray[uint256, 5], 5]) -> Bytes[1184]: pure
    def h(s: DynArray[DynArray[uint8, 5], 5]) -> Bytes[1184]: pure
    def j(s: DynArray[Bytes[10], 5]) -> Bytes[544]: pure
@external
@pure
def f(s: DynArray[DynArray[uint256, 5], 5]) -> Bytes[1184]:
    return _abi_encode(s)
    
@external
@view
def g(s: DynArray[DynArray[uint256, 5], 5]) -> Bytes[1184]:
    return Self(self).f(s)
    
@external
@pure
def h(s: DynArray[DynArray[uint8, 5], 5]) -> Bytes[1184]:
    return _abi_encode(s)
    
@external
@view
def i(s: DynArray[DynArray[uint8, 5], 5]) -> Bytes[1184]:
    return Self(self).h(s)

@external
@pure
def j(s: DynArray[Bytes[10], 5]) -> Bytes[544]:
    return _abi_encode(s)

@external
@view
def k(s: DynArray[Bytes[10], 5]) -> Bytes[544]:
    return Self(self).j(s)
    
# ----
# f(uint256[][]): 0x20, 2, 0x40, 0xC0, 3, 13, 17, 23, 4, 27, 31, 37, 41 -> 32, 416, 32, 2, 64, 192, 3, 13, 17, 23, 4, 27, 31, 37, 41
# g(uint256[][]): 0x20, 2, 0x40, 0xC0, 3, 13, 17, 23, 4, 27, 31, 37, 41 -> 32, 416, 32, 2, 64, 192, 3, 13, 17, 23, 4, 27, 31, 37, 41
# h(uint8[][]): 0x20, 2, 0x40, 0xC0, 3, 13, 17, 23, 4, 27, 31, 37, 41 -> 32, 416, 32, 2, 64, 192, 3, 13, 17, 23, 4, 27, 31, 37, 41
# i(uint8[][]): 0x20, 2, 0x40, 0xC0, 3, 13, 17, 23, 4, 27, 31, 37, 41 -> 32, 416, 32, 2, 64, 192, 3, 13, 17, 23, 4, 27, 31, 37, 41
# j(bytes[]): 0x20, 2, 0x40, 0x63, 3, hex"131723", 4, hex"27313741" -> 32, 256, 32, 2, 64, 128, 3, left(0x131723), 4, left(0x27313741)
# k(bytes[]): 0x20, 2, 0x40, 0x63, 3, hex"131723", 4, hex"27313741" -> 32, 256, 32, 2, 64, 128, 3, left(0x131723), 4, left(0x27313741)
