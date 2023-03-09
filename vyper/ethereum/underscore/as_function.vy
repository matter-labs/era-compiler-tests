@external
@pure
def _() -> uint256:
    return 88

@internal
@pure
def __() -> uint256:
    return 88

@external
@view
def g() -> uint256:
    return self.__()

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# _() -> 88
# g() -> 88
