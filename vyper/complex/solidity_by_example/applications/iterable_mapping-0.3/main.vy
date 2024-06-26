# Iterable mapping from address to uint;
map_keys: DynArray[address, 10]
map_values: HashMap[address, uint256]
map_indexOf: HashMap[address, uint256]
map_inserted: HashMap[address, bool]

@internal
@view
def get(key: address) -> uint256:
    return self.map_values[key]

@internal
@view
def getKeyAtIndex(index: uint256) -> address:
    return self.map_keys[index]

@internal
@view
def size() -> uint256:
    return len(self.map_keys)

@internal
def set(key: address, val: uint256):
    if self.map_inserted[key]:
        self.map_values[key] = val
    else:
        self.map_inserted[key] = True
        self.map_values[key] = val
        self.map_indexOf[key] = len(self.map_keys)
        self.map_keys.append(key)

@internal
def remove(key: address):
    if not self.map_inserted[key]:
        return

    self.map_inserted[key] = empty(bool)
    self.map_values[key] = empty(uint256)

    index: uint256 = self.map_indexOf[key]
    lastIndex: uint256 = len(self.map_keys) - 1
    lastKey: address = self.map_keys[lastIndex]

    self.map_indexOf[lastKey] = index
    self.map_indexOf[key] = empty(uint256)

    self.map_keys[index] = lastKey
    self.map_keys.pop()

@external
def testIterableMap():
    self.set(convert(0, address), 0)
    self.set(convert(1, address), 100)
    self.set(convert(2, address), 200) # insert
    self.set(convert(2, address), 200) # update
    self.set(convert(3, address), 300)

    for i in range(10):
        if not i < self.size():
            break
        key: address = self.getKeyAtIndex(i)

        assert self.get(key) == i * 100

    self.remove(convert(1, address))

    # keys = [address(0), address(3), address(2)]
    assert self.size() == 3
    assert self.getKeyAtIndex(0) == convert(0, address)
    assert self.getKeyAtIndex(1) == convert(3, address)
    assert self.getKeyAtIndex(2) == convert(2, address)
