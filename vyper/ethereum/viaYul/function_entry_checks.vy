@external
def f() -> uint256:
    return empty(uint256)

@external
def g(x: uint256, y: uint256) -> uint256:
    return empty(uint256)

@external
@payable
def h() -> uint256:
    return empty(uint256)

@external
def i(b: bytes32) -> bytes32:
    return empty(bytes32)

@external
def j(b: bool) -> bool:
    return empty(bool)

@external
def k(b: bytes32) -> bytes32:
    return empty(bytes32)

@external
def s() -> DynArray[uint256, 10]:
    return empty(DynArray[uint256, 10])

@external
@pure
def t(_: uint256):
    pass

# ====
# compileToEwasm: also
# ----
# f() -> 0
# g(uint256,uint256): 1, -2 -> 0
# h(), 1 ether -> 0
# i(bytes32), 1 ether: 2 -> FAILURE
# i(bytes32): 2 -> 0
# j(bool): true -> false
# k(bytes32): 0x31 -> 0x00
# s(): hex"4200ef" -> 0x20, 0
# t(uint256) -> FAILURE
