import storage as Storage

initial: uint256
_storage: Storage

@external
def __init__(_initial: uint256, __storage: address):
    self.initial = _initial
    self._storage = Storage(__storage)

@external
def main(key: uint256, _value: uint256) -> uint256:
    self._storage.set(key, _value)
    return self._storage.get(key) + self.initial
