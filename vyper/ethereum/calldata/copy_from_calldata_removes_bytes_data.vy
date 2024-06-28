@external
def set() -> bool:
    self.data = slice(msg.data, 0, 4)
    return True

@external
def length() -> uint256:
    return len(self.data)

@external
def sendMessage() -> (bool, Bytes[20]):
    emptyData: Bytes[20] = b"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
    return (True, raw_call(self, emptyData, max_outsize = 20))
    
@external
def __default__():
    self.data = slice(msg.data, 0, 5)

data: Bytes[10]

# ----
# set() -> true
# length() -> 4
# (): 1, 2, 3, 4, 5 ->
# length() -> 5
# sendMessage() -> true, 0x40, 0
# length() -> 5
