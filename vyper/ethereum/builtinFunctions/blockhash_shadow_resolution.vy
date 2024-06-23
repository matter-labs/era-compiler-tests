@internal
def blockhash(blockNumber: uint256) -> bytes32:
    x: bytes32 = empty(bytes32)
    return x
    
@external
def f() -> bytes32:
    return self.blockhash(3)

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0
