@external
def d():
    pass

@external
@payable
def e() -> uint256:
    return msg.value

@external
@pure
def f(a: uint256) -> (uint256, uint256):
    return (a, a)

@external
@pure
def g() -> (uint256, uint256):
    return (2, 3)

@external
@pure
def h(x: uint256, y: uint256) -> uint256:
    return unsafe_sub(x, y)

@external
@pure
def i(b: bool) -> bool:
    return not b

@external
@pure
def j(b: bytes32) -> (bytes32, bytes32):
    return (b, b)

@external
@view
def k() -> uint256:
    return len(msg.data)
    
@external
@pure
def l(a: uint256) -> uint256:
    return a * 7

# ====
# compileToEwasm: also
# ----
# d() ->
# e(), 1 wei -> 1
# e(), 1 ether -> 1000000000000000000
# f(uint256): 3 -> 3, 3
# g() -> 2, 3
# h(uint256,uint256): 1, -2 -> 3
# i(bool): true -> false
# j(bytes32): 0x10001 -> 0x10001, 0x10001
# k(): hex"4200efef" -> 8
# l(uint256): 99 -> 693
