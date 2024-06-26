data: Bytes[100]
otherData: Bytes[100]

@external
def fromMemory() -> bytes1:
    t: Bytes[100] = empty(Bytes[100])
    x: uint256[2] = empty(uint256[2])
    x[0] = max_value(uint256)
    self.data = t
    self.data = b"\x00"
    return convert(slice(self.data, 0, 1), bytes1)
    
@external
def fromCalldata(x: Bytes[100]) -> bytes1:
    self.data = x
    self.data = b"\x00"
    return convert(slice(self.data, 0, 1), bytes1)
    
@external
def fromStorage() -> bytes1:
    self.otherData = empty(Bytes[100])
    self.data = self.otherData
    self.data = b"\x00"
    return convert(slice(self.data, 0, 1), bytes1)
    
# ====
# compileViaYul: also
# ----
# fromMemory() -> 0x00
# fromCalldata(bytes): 0x40, 0x60, 0x00, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff -> 0x00
# fromStorage() -> 0x00
