m1: public(HashMap[uint256, uint256])
m2: public(HashMap[uint256, HashMap[uint256, uint256]])

@external
def set(k: uint256, v: uint256):
    self.m1[k] = v
    
@external
def set_(k1: uint256, k2: uint256, v: uint256):
    self.m2[k1][k2] = v
    
# ----
# m1(uint256): 0 -> 0
# m1(uint256): 0x01 -> 0
# m1(uint256): 0xa7 -> 0
# set(uint256,uint256): 0x01, 0xa1 ->
# m1(uint256): 0 -> 0
# m1(uint256): 0x01 -> 0xa1
# m1(uint256): 0xa7 -> 0
# set(uint256,uint256): 0x00, 0xef ->
# m1(uint256): 0 -> 0xef
# m1(uint256): 0x01 -> 0xa1
# m1(uint256): 0xa7 -> 0
# set(uint256,uint256): 0x01, 0x05 ->
# m1(uint256): 0 -> 0xef
# m1(uint256): 0x01 -> 0x05
# m1(uint256): 0xa7 -> 0
# m2(uint256,uint256): 0, 0 -> 0
# m2(uint256,uint256): 0, 0x01 -> 0
# m2(uint256,uint256): 0xa7, 0 -> 0
# m2(uint256,uint256): 0xa7, 0x01 -> 0
# set_(uint256,uint256,uint256): 0xa7, 0x01, 0x23
# m2(uint256,uint256): 0, 0x01 -> 0
# m2(uint256,uint256): 0xa7, 0 -> 0
# m2(uint256,uint256): 0xa7, 0x01 -> 0x23
# set_(uint256,uint256,uint256): 0, 0x01, 0xef
# m2(uint256,uint256): 0, 0x01 -> 0xef
# m2(uint256,uint256): 0xa7, 0 -> 0
# m2(uint256,uint256): 0xa7, 0x01 -> 0x23
