struct Data:
    x: uint256
    y: uint256
    
data: DynArray[Data, 50]
ids: DynArray[uint256, 50]

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
    l1: uint256 = len(self.data)
    l2: uint256 = len(self.ids)
    return l1, l2
    
@external
def setLengths(l1: uint256, l2: uint256):
    for _: uint256 in range(100):
        if not len(self.data) < l1:
            break
        self.data.append(empty(Data))
    for _: uint256 in range(100):
        if not len(self.ids) < l2:
            break
        self.ids.append(empty(uint256))

# ----
# getLengths() -> 0, 0
# setLengths(uint256,uint256): 48, 49 ->
# gas irOptimized: 111450
# gas legacy: 108571
# gas legacyOptimized: 100417
# getLengths() -> 48, 49
# setIDStatic(uint256): 11 ->
# getID(uint256): 2 -> 11
# setID(uint256,uint256): 7, 8 ->
# getID(uint256): 7 -> 8
# setData(uint256,uint256,uint256): 7, 8, 9 ->
# setData(uint256,uint256,uint256): 8, 10, 11 ->
# getData(uint256): 7 -> 8, 9
# getData(uint256): 8 -> 10, 11
