struct Nested:
    x: uint256
    y: uint256
    
struct MyStruct:
    a: uint256
    nested: Nested
    c: uint256

data: HashMap[uint256, MyStruct]

@external
def set(k: uint256) -> bool:
    self.data[k].a = 1
    self.data[k].nested.x = 3
    self.data[k].nested.y = 4
    self.data[k].c = 2
    return True

@external
def copy(_from: uint256, to: uint256) -> bool:
    self.data[to] = self.data[_from]
    return True

@external
def retrieve(k: uint256) -> (uint256, uint256, uint256, uint256):
    return self.data[k].a, self.data[k].nested.x, self.data[k].nested.y, self.data[k].c

# ====
# compileViaYul: also
# ----
# set(uint256): 7 -> true
# gas irOptimized: 110119
# gas legacy: 110616
# gas legacyOptimized: 110006
# retrieve(uint256): 7 -> 1, 3, 4, 2
# copy(uint256,uint256): 7, 8 -> true
# gas irOptimized: 118698
# gas legacy: 119166
# gas legacyOptimized: 118622
# retrieve(uint256): 7 -> 1, 3, 4, 2
# retrieve(uint256): 8 -> 1, 3, 4, 2
# copy(uint256,uint256): 0, 7 -> true
# retrieve(uint256): 7 -> 0, 0, 0, 0
# retrieve(uint256): 8 -> 1, 3, 4, 2
# copy(uint256,uint256): 7, 8 -> true
# retrieve(uint256): 8 -> 0, 0, 0, 0
