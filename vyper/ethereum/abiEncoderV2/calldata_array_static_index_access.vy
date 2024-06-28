interface Self:
    def f(s: uint256[3]) -> Bytes[100]: pure
    def h(s: uint8[3]) -> Bytes[100]: pure

@external
@pure
def f(s: uint256[3]) -> Bytes[100]:
    return abi_encode(s)

@external
@view
def g(s: uint256[3][2], which: uint256) -> Bytes[100]:
    return staticcall Self(self).f(s[which])

@external
@pure
def h(s: uint8[3]) -> Bytes[100]:
    return abi_encode(s)

@external
@view
def i(s: uint8[3][2], which: uint256) -> Bytes[100]:
    return staticcall Self(self).h(s[which])

# ----
# f(uint256[3]): 23, 42, 87 -> 32, 96, 23, 42, 87
# g(uint256[3][2],uint256): 23, 42, 87, 123, 142, 187, 0 -> 32, 96, 23, 42, 87
# g(uint256[3][2],uint256): 23, 42, 87, 123, 142, 187, 1 -> 32, 96, 123, 142, 187
# h(uint8[3]): 23, 42, 87 -> 32, 96, 23, 42, 87
# i(uint8[3][2],uint256): 23, 42, 87, 123, 142, 187, 0 -> 32, 96, 23, 42, 87
# i(uint8[3][2],uint256): 23, 42, 87, 123, 142, 187, 1 -> 32, 96, 123, 142, 187
