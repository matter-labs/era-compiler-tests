data: HashMap[uint256, Bytes[100]]

@external
def set(key: uint256) -> bool:
    self.data[key] = slice(msg.data, 0, 68)
    return True

@external
def copy(_from: uint256, to: uint256) -> bool:
    self.data[to] = self.data[_from]
    return True
# ----
# set(uint256): 1, 2 -> true
# gas irOptimized: 110699
# gas legacy: 111091
# gas legacyOptimized: 110736
# set(uint256): 2, 2, 3, 4, 5 -> true
# gas irOptimized: 177659
# gas legacy: 178021
# gas legacyOptimized: 177666
# storageEmpty -> 0
# copy(uint256,uint256): 1, 2 -> true
# storageEmpty -> 0
# copy(uint256,uint256): 99, 1 -> true
# storageEmpty -> 0
# copy(uint256,uint256): 99, 2 -> true
