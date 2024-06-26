@external
def _div(a: uint256, b: uint256) -> uint256:
    return a // b

@external
def _mod(a: uint256, b: uint256) -> uint256:
    return a % b

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# _div(uint256,uint256): 7, 2 -> 3
# _div(uint256,uint256): 7, 0 -> FAILURE # throws #
# _mod(uint256,uint256): 7, 2 -> 1
# _mod(uint256,uint256): 7, 0 -> FAILURE # throws #
