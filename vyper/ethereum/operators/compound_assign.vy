value1: uint256
value2: uint256

@external
def f(x: uint256, y: uint256) -> uint256:
    value3: uint256 = y
    self.value1 += x
    value3 *= x
    self.value2 *= value3 + self.value1
    self.value2 += 7
    return self.value2
    
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f(uint256,uint256): 0, 6 -> 7
# f(uint256,uint256): 1, 3 -> 0x23
# f(uint256,uint256): 2, 25 -> 0x0746
# f(uint256,uint256): 3, 69 -> 396613
# f(uint256,uint256): 4, 84 -> 137228105
# f(uint256,uint256): 5, 2 -> 0xcc7c5e28
# f(uint256,uint256): 6, 51 -> 1121839760671
# f(uint256,uint256): 7, 48 -> 408349672884251
