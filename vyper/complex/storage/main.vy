interface Storage:
    def get(key: uint256) -> uint256: view
    def set(key: uint256, _value: uint256): nonpayable

initial: uint256
_storage: Storage

@deploy
def __init__(_initial: uint256, __storage: address):
    self.initial = _initial
    self._storage = Storage(__storage)

@external
def main(key: uint256, _value: uint256) -> uint256:
    extcall self._storage.set(key, _value)
    return staticcall self._storage.get(key) + self.initial
