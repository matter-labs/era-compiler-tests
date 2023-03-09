# A long time ago, some opcodes were renamed, which involved the opcodes
# "iszero" and "not".
@external
def f() -> bool:
    x: bytes32 = convert(convert(1, uint256), bytes32)
    x = convert(bitwise_not(convert(x, uint256)), bytes32)
    if x != convert(bitwise_not(convert(convert(convert(1, uint256), bytes32), uint256)), bytes32):
        return False
    x = convert(x == convert(0, bytes32), bytes32)
    if x != convert(0, bytes32):
        return False
    return True

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> true
