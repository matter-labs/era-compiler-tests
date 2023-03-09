# This tests the optimizer rule
# byte(A, shl(B, X))
# ->
# byte(A + B / 8, X)
# given A <= 32 && B % 8 == 0 && B <= 256
#
# and the respective rule about shr
@external
def f(a: uint256) -> (uint256, uint256, uint256):
    x: uint256 = shift(a, 256 - 8)
    x = convert(convert(slice(convert(x, bytes32), 0, 1), bytes1), uint256)
    y: uint256 = shift(a, 8)
    y = convert(convert(slice(convert(y, bytes32), 30, 1), bytes1), uint256)
    z: uint256 = shift(a, 16)
    z = convert(convert(slice(convert(z, bytes32), 1, 1), bytes1), uint256)
    return (x, y, z)

@external
def g(a: uint256) -> (uint256, uint256, uint256):
    x: uint256 = shift(a, -(256 - 16))
    x = convert(convert(slice(convert(x, bytes32), 31, 1), bytes1), uint256)
    y: uint256 = shift(a, -8)
    y = convert(convert(slice(convert(y, bytes32), 4, 1), bytes1), uint256)
    z: uint256 = shift(a, -16)
    z = convert(convert(slice(convert(z, bytes32), 7, 1), bytes1), uint256)
    return (x, y, z)

# ====
# compileViaYul: also
# compileToEwasm: also
# ----
# f(uint256): 0x0102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f -> 0x1f, 0x1f, 3
# g(uint256): 0x0102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f -> 1, 3, 5
