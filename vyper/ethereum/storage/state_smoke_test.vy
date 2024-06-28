value1: uint256
value2: uint256

@external
def get(which: uint8) -> uint256:
    if which == 0:
        return self.value1
    else:
        return self.value2

@external
def set(which: uint8, _value: uint256):
    if which == 0:
        self.value1 = _value
    else:
        self.value2 = _value
        
# ----
# get(uint8): 0x00 -> 0
# get(uint8): 0x01 -> 0
# set(uint8,uint256): 0x00, 0x1234 ->
# set(uint8,uint256): 0x01, 0x8765 ->
# get(uint8): 0x00 -> 0x1234
# get(uint8): 0x01 -> 0x8765
# set(uint8,uint256): 0x00, 0x03 ->
# get(uint8): 0x00 -> 0x03
