table: HashMap[uint8, uint8]

@external
def get(k: uint8) -> uint8:
    return self.table[k]
    
@external
def set(k: uint8, v: uint8):
    self.table[k] = v
    
# ----
# get(uint8): 0 -> 0
# get(uint8): 0x01 -> 0
# get(uint8): 0xa7 -> 0
# set(uint8,uint8): 0x01, 0xa1 ->
# get(uint8): 0 -> 0
# get(uint8): 0x01 -> 0xa1
# get(uint8): 0xa7 -> 0
# set(uint8,uint8): 0x00, 0xef ->
# get(uint8): 0 -> 0xef
# get(uint8): 0x01 -> 0xa1
# get(uint8): 0xa7 -> 0
# set(uint8,uint8): 0x01, 0x05 ->
# get(uint8): 0 -> 0xef
# get(uint8): 0x01 -> 0x05
# get(uint8): 0xa7 -> 0
