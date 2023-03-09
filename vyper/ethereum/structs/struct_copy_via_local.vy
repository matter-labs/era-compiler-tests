struct Struct:
    a: uint256
    b: uint256
    
r: uint256[75]
data1: Struct
data2: Struct

@external
def test() -> bool:
    self.data1.a = 1
    self.data1.b = 2
    x: Struct = self.data1
    self.data2 = x
    return self.data2.a == self.data1.a and self.data2.b == self.data1.b

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# test() -> true
# gas irOptimized: 110186
# gas legacy: 110627
# gas legacyOptimized: 109706
