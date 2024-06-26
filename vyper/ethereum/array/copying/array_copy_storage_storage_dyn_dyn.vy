data1: DynArray[uint256, 10]
data2: DynArray[uint256, 10]

@external
def setData1(length: uint256, index: uint256, value_: uint256):
    self.data1 = []
    for i: uint256 in range(10):
        if not i < length:
            break
        self.data1.append(0)
    if index < length:
        self.data1[index] = value_
        
@external
def copyStorageStorage():
    self.data2 = self.data1
    
@external
def getData2(index: uint256) -> (uint256, uint256):
    len_: uint256 = len(self.data2)
    val: uint256 = 0
    if index < len_:
        val = self.data2[index]
    return len_, val
        
# ----
# setData1(uint256,uint256,uint256): 10, 5, 4 ->
# copyStorageStorage() ->
# gas irOptimized: 111374
# gas legacy: 109278
# gas legacyOptimized: 109268
# getData2(uint256): 5 -> 10, 4
# setData1(uint256,uint256,uint256): 0, 0, 0 ->
# copyStorageStorage() ->
# getData2(uint256): 0 -> 0, 0
