@external
def or_(x: uint256) -> (bool, uint256):
    t: bool = x == 0
    x = 8
    t = (t or ((x) > 0))
    y: uint256 = x
    return t, y
    
@external
def and_(x: uint256) -> (bool, uint256):
    t: bool = x == 0
    x = 8
    t = (t and ((x) > 0))
    y: uint256 = x
    return t, y
    
# ----
# or_(uint256): 0 -> true, 0
# and_(uint256): 0 -> true, 8
# or_(uint256): 1 -> true, 8
# and_(uint256): 1 -> false, 1
