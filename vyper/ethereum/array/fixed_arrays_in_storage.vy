struct Data:
    x: uint256
    y: uint256

data: Data[2**10]
ids: uint256[2**10 + 3]

@external
def setIDStatic(id: uint256):
    self.ids[2] = id

@external
def setID(index: uint256, id: uint256):
    self.ids[index] = id

@external
def setData(index: uint256, x: uint256, y: uint256):
    self.data[index].x = x
    self.data[index].y = y

@external
def getID(index: uint256) -> uint256:
    return self.ids[index]

@external
def getData(index: uint256) -> (uint256, uint256):
    return (self.data[index].x, self.data[index].y)

@external
def getLengths() -> (uint256, uint256):
    return (2**10, 2**10 + 3)
# ----
# setIDStatic(uint256): 0xb ->
# getID(uint256): 0x2 -> 0xb
# setID(uint256,uint256): 0x7, 0x8 ->
# getID(uint256): 0x7 -> 0x8
# setData(uint256,uint256,uint256): 0x7, 0x8, 0x9 ->
# setData(uint256,uint256,uint256): 0x8, 0xa, 0xb ->
# getData(uint256): 0x7 -> 0x8, 0x9
# getData(uint256): 0x8 -> 0xa, 0xb
# getLengths() -> 0x400, 0x403
