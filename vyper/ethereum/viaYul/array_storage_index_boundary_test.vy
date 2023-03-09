storageArray: uint256[10]

@external
def test_boundary_check(access: uint256) -> uint256:
    return self.storageArray[access]
    
# ====
# compileViaYul: also
# ----
# test_boundary_check(uint256): 11 -> FAILURE
# test_boundary_check(uint256): 9 -> 0
# test_boundary_check(uint256): 10 -> FAILURE
