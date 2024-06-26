@external
@pure
def require_short():
    assert False, "short"

@external
@pure
def wrong_number_of_params(one: uint256, two: uint256) -> uint256:
    return one + two
