@external
def index() -> bool:
    array: uint256[10] = empty(uint256[10])
    
    for i: uint256 in range(10):
        array[i] = i + 1
        
    for i: uint256 in range(10):
        assert array[i] == i + 1, "Unexpected value in array!"
        
    return True
    
@external
def accessIndex(idx: int256) -> uint256:
    array: uint256[10] = empty(uint256[10])
    
    for i: uint256 in range(10):
        array[i] = i + 1
        
    return array[convert(idx, uint256)]
    
# ====
# compileViaYul: also
# ----
# index(): 10 -> true
# accessIndex(int256): 1 -> 2
# accessIndex(int256): 0 -> 1
# accessIndex(int256): 11 -> FAILURE
# accessIndex(int256): 10 -> FAILURE
# accessIndex(int256): -1 -> FAILURE
