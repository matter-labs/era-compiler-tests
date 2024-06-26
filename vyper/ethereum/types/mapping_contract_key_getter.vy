interface A:
    def _(): pure

interface Self:
    def table(k: A) -> uint8: nonpayable

table: public(HashMap[A, uint8])
    
@external
def set(k: A, v: uint8):
    self.table[k] = v
    
@external
def get(k: A) -> uint8:
    return extcall Self(self).table(k)

# ====
# compileViaYul: also
# ----
# table(address): 0 -> 0
# table(address): 0x01 -> 0
# table(address): 0xa7 -> 0
# get(address): 0 -> 0
# get(address): 0x01 -> 0
# get(address): 0xa7 -> 0
# set(address,uint8): 0x01, 0xa1 ->
# table(address): 0 -> 0
# table(address): 0x01 -> 0xa1
# table(address): 0xa7 -> 0
# get(address): 0 -> 0
# get(address): 0x01 -> 0xa1
# get(address): 0xa7 -> 0
# set(address,uint8): 0x00, 0xef ->
# table(address): 0 -> 0xef
# table(address): 0x01 -> 0xa1
# table(address): 0xa7 -> 0
# get(address): 0 -> 0xef
# get(address): 0x01 -> 0xa1
# get(address): 0xa7 -> 0
# set(address,uint8): 0x01, 0x05 ->
# table(address): 0 -> 0xef
# table(address): 0x01 -> 0x05
# table(address): 0xa7 -> 0
# get(address): 0 -> 0xef
# get(address): 0x01 -> 0x05
# get(address): 0xa7 -> 0
