interface Self:
    def f(s: uint256[3]) -> Bytes[100]: pure
    def h(s: uint8[3]) -> Bytes[100]: pure

@external
@pure
def f(s: uint256[3]) -> Bytes[100]:
    return abi_encode(s)

@external
@view
def g(s: uint256[3]) -> Bytes[100]:
    return staticcall Self(self).f(s)

@external
@pure
def h(s: uint8[3]) -> Bytes[100]:
    return abi_encode(s)

@external
@view
def i(s: uint8[3]) -> Bytes[100]:
    return staticcall Self(self).h(s)

# ----
# f(uint256[3]): 23, 42, 87 -> 32, 96, 23, 42, 87
# g(uint256[3]): 23, 42, 87 -> 32, 96, 23, 42, 87
# h(uint8[3]): 23, 42, 87 -> 32, 96, 23, 42, 87
# i(uint8[3]): 23, 42, 87 -> 32, 96, 23, 42, 87
# h(uint8[3]): 0xFF23, 0x1242, 0xAB87 -> FAILURE
# i(uint8[3]): 0xAB23, 0x1242, 0xFF87 -> FAILURE
