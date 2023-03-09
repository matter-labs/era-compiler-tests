storageArray: DynArray[uint256, 1048575]

@external
def set_get_length(len_: uint256) -> uint256:
    for _ in range(1048575):
        if not len(self.storageArray) < len_:
            break
        self.storageArray.append(0)
    return len(self.storageArray)

# ----
# set_get_length(uint256): 0 -> 0
# set_get_length(uint256): 1 -> 1
# set_get_length(uint256): 10 -> 10
# set_get_length(uint256): 20 -> 20
# set_get_length(uint256): 0xFF -> 0xFF
# gas irOptimized: 96690
# gas legacy: 126722
# gas legacyOptimized: 107818
# set_get_length(uint256): 0xFFF -> 0xFFF
# gas irOptimized: 1217848
# gas legacy: 1702119
# gas legacyOptimized: 1398420
# set_get_length(uint256): 0xFFFFF -> FAILURE # Out-of-gas #
