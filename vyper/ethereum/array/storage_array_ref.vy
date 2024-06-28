interface Self:
    def __find(_data: uint256[8], begin: uint256, _len: uint256, _value: uint256) -> uint256: nonpayable

@external
def __find(_data: uint256[8], _begin: uint256, _len: uint256, _value: uint256) -> uint256:
    if _len == 0 or (_len == 1 and _data[_begin] != _value):
        return max_value(uint256)
    halfLen: uint256 = _len // 2
    v: uint256 = _data[_begin + halfLen]
    if _value < v:
        return extcall Self(self).__find(_data, _begin, halfLen, _value)
    elif _value > v:
        return extcall Self(self).__find(_data, _begin + halfLen + 1, halfLen - 1, _value)
    else:
        return _begin + halfLen

# Finds the position of _value in the sorted list _data.
# Note that "internal" is important here, because storage references only work for internal or private functions
@internal
def _find(_data: uint256[8], _length: uint256, _value: uint256) -> uint256:
    return extcall Self(self).__find(_data, 0, _length, _value)

data: uint256[8]
length: uint256

@external
def _add(v: uint256):
    self.length += 1
    self.data[self.length - 1] = v

@external
def find(v: uint256) -> uint256:
    return self._find(self.data, self.length, v)

# ----
# find(uint256): 7 -> -1
# _add(uint256): 7 ->
# find(uint256): 7 -> 0
# _add(uint256): 11 ->
# _add(uint256): 17 ->
# _add(uint256): 27 ->
# _add(uint256): 31 ->
# _add(uint256): 32 ->
# _add(uint256): 66 ->
# _add(uint256): 177 ->
# find(uint256): 7 -> 0
# find(uint256): 27 -> 3
# find(uint256): 32 -> 5
# find(uint256): 176 -> -1
# find(uint256): 0 -> -1
# find(uint256): 400 -> -1
