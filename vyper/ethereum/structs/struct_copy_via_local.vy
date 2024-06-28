struct MyStruct:
    a: uint256
    b: uint256
    
r: uint256[75]
data1: MyStruct
data2: MyStruct

@external
def test() -> bool:
    self.data1.a = 1
    self.data1.b = 2
    x: MyStruct = self.data1
    self.data2 = x
    return self.data2.a == self.data1.a and self.data2.b == self.data1.b

# ----
# test() -> true
# gas irOptimized: 110186
# gas legacy: 110627
# gas legacyOptimized: 109706
