struct MyStruct:
    a: uint256
    data: Bytes[100]
    b: uint256

data1: MyStruct
data2: MyStruct

@external
def set(_a: uint256, _data: Bytes[100], _b: uint256) -> bool:
    self.data1.a = _a
    self.data1.b = _b
    self.data1.data = _data
    return True

@external
def copy() -> bool:
    self.data1 = self.data2
    return True
    
@external
def del_() -> bool:
    self.data1 = empty(MyStruct)
    return True
    
@external
def test(i: uint256) -> bytes1:
    return convert(slice(self.data1.data, i, 1), bytes1)

# ----
# storageEmpty -> 1
# set(uint256,bytes,uint256): 12, 0x60, 13, 33, "12345678901234567890123456789012", "3" -> true
# gas irOptimized: 133752
# gas legacy: 134436
# gas legacyOptimized: 133879
# test(uint256): 32 -> "3"
# storageEmpty -> 0
# copy() -> true
# set(uint256,bytes,uint256): 12, 0x60, 13, 33, "12345678901234567890123456789012", "3" -> true
# storageEmpty -> 0
# del_() -> true
