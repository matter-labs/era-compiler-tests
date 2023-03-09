@internal
def receiver(array: uint256[10], idx: uint256) -> uint256:
    for i in range(10):
        array[i] = i + 1

    return array[idx]

@external
def test(idx: uint256) -> uint256:
    array: uint256[10] = empty(uint256[10])
    result: uint256 = self.receiver(array, idx)
    
    for i in range(10):
        assert array[i] == i + 1
        
    return result

# ====
# compileViaYul: also
# ----
# test(uint256,uint256): 10, 5 -> 6
# test(uint256,uint256): 10, 50 -> FAILURE
