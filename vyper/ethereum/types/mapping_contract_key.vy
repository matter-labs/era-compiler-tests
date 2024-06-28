interface A:
    def _(): pure

table: HashMap[A, uint8]

@external
def get(k: A) -> uint8:
    return self.table[k]
    
@external
def set(k: A, v: uint8):
    self.table[k] = v
    
# ----
# get(address): 0 -> 0
# get(address): 0x01 -> 0
# get(address): 0xa7 -> 0
# set(address,uint8): 0x01, 0xa1 ->
# get(address): 0 -> 0
# get(address): 0x01 -> 0xa1
# get(address): 0xa7 -> 0
# set(address,uint8): 0x00, 0xef ->
# get(address): 0 -> 0xef
# get(address): 0x01 -> 0xa1
# get(address): 0xa7 -> 0
# set(address,uint8): 0x01, 0x05 ->
# get(address): 0 -> 0xef
# get(address): 0x01 -> 0x05
# get(address): 0xa7 -> 0
