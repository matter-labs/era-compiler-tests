#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "test1",
#!     "inputs": [
#!         {
#!             "method": "test1",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1260830800381296"
#!     ]
#! }, {
#!     "name": "test2",
#!     "inputs": [
#!         {
#!             "method": "test2",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "781327317812"
#!     ]
#! }, {
#!     "name": "test3",
#!     "inputs": [
#!         {
#!             "method": "test3",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

BASE: constant(uint256) = 1000000000
LEN: constant(uint8) = 12

struct BigUint:
    digits: uint256[LEN]
    _len: uint8

@internal
@pure
def _new() -> BigUint:
    bigUint: BigUint = empty(BigUint)
    bigUint._len = 1
    return bigUint

@internal
@pure
def fromUint(_n: uint256) -> BigUint:
    n: uint256 = _n
    _number: BigUint = empty(BigUint)
    for _: uint256 in range(1000000000):
        if not n > 0:
            break
        _number.digits[_number._len] = n % BASE
        n //= BASE
        _number._len += 1
    if _number._len == 0:
        _number._len = 1
    return _number

@internal
@pure
def asUint(_self: BigUint) -> uint256:
    n: uint256 = 0
    i: uint8 = _self._len - 1
    for _: uint256 in range(1000000000):
        n = n * BASE + _self.digits[i]
        if i == 0:
            break
        i -= 1
    return n

@internal
@pure
def less(_self: BigUint, other: BigUint) -> bool:
    if _self._len != other._len:
        return _self._len < other._len
    i: uint8 = _self._len - 1
    for _: uint256 in range(1000000000):
        if _self.digits[i] != other.digits[i]:
            return _self.digits[i] < other.digits[i]
        if i == 0:
            break
        i -= 1
    return False

@internal
def greater(_self: BigUint, other: BigUint) -> bool:
    return self.less(other, _self)

@internal
def equals(_self: BigUint, other: BigUint) -> bool:
    return not self.less(_self, other) and not self.less(other, _self)

@internal
@pure
def add(_self: BigUint, other: BigUint) -> BigUint:
    _len: uint8 = _self._len
    if other._len > _len:
        _len = other._len
    result: BigUint = empty(BigUint)
    result._len = _len
    carry: uint256 = 0
    for i: uint8 in range(LEN):
        if not i < _len:
            break
        result.digits[i] += carry
        if i < _self._len:
            result.digits[i] += _self.digits[i]
        if i < other._len:
            result.digits[i] += other.digits[i]
        carry = result.digits[i] // BASE
        result.digits[i] %= BASE
    if carry > 0:
        result.digits[result._len] = carry
        result._len += 1
    return result

@internal
# if second greater - 0
def sub(_self: BigUint, other: BigUint) -> BigUint:
    if self.less(_self, other):
        return self._new()
    result: BigUint = empty(BigUint)
    result._len = _self._len
    carry: uint256 = 0
    for i: uint8 in range(LEN):
        if not i < _self._len:
            break
        d: uint256 = carry
        if i < other._len:
            d += other.digits[i]
        if _self.digits[i] < d:
            carry = 1
            result.digits[i] = _self.digits[i] + BASE - d
        else:
            carry = 0
            result.digits[i] = _self.digits[i] - d
    for _: uint8 in range(LEN):
        if not (result._len > 1 and result.digits[result._len - 1] == 0):
            break
        result._len -= 1
    return result

@internal
@pure
def mul(_self: BigUint, other: BigUint) -> BigUint:
    result: BigUint = empty(BigUint)
    result._len = _self._len + other._len
    for i: uint8 in range(LEN):
        if not i < _self._len:
            break
        carry: uint256 = 0
        j: uint8 = 0
        for _: uint8 in range(LEN):
            if not (j < other._len or carry != 0):
                break
            b: uint256 = 0
            if j < other._len:
                b = other.digits[j]
            curr: uint256 = result.digits[i + j] + _self.digits[i] * b + carry
            result.digits[i + j] = curr % BASE
            carry = curr // BASE
            j += 1
    for _: uint8 in range(LEN):
        if not (result._len > 1 and result.digits[result._len - 1] == 0):
            break
        result._len -= 1
    return result

@internal
@pure
def div(_self: BigUint, other: uint256) -> BigUint:
    result: BigUint = empty(BigUint)
    result._len = _self._len
    carry: uint256 = 0
    i: uint8 = _self._len - 1
    for _: uint8 in range(LEN):
        curr: uint256 = _self.digits[i] + carry * BASE
        result.digits[i] = curr // other
        carry = curr % other
        if i == 0:
            break
        i -= 1
    for _: uint8 in range(LEN):
        if not (result._len > 1 and result.digits[result._len - 1] == 0):
            break
        result._len -= 1
    return result

@internal
def pow(__self: BigUint, _n: uint256) -> BigUint:
    n: uint256 = _n
    _self: BigUint = __self
    result: BigUint = empty(BigUint)
    result._len = 1
    result.digits[0] = 1
    for _: uint256 in range(1000000000):
        if not (n != 0):
            break
        if n % 2 != 0:
            result = self.mul(result, _self)
        _self = self.mul(_self, _self)
        n = n // 2
    return result

@external
def test1() -> uint256:
    _number: BigUint = self.fromUint(9124712378731)
    _number = self.add(_number, self.fromUint(129213344)) # 9 124 841 592 075
    _number = self.pow(_number, 5) # 63 259 633 147 891 755 508 903 200 605 498 033 555 974 923 078 789 924 986 748 046 875
    _number = self.div(_number, 987659234) # 64 050 059 950 020 935 569 872 068 452 202 648 627 264 211 938 497 326 889
    _number = self.add(_number, self.fromUint(12332455)) # 64 050 059 950 020 935 569 872 068 452 202 648 627 264 211 938 509 659 344
    _number = self.div(_number, 100000000) # 640 500 599 500 209 355 698 720 684 522 026 486 272 642 119 385
    _number = self.sub(_number, self.mul(self.pow(self.fromUint(794121), 7), self.fromUint(3215975))) # 163 633 183 869 615 894 606 020 115 919 720 373 594 410
    _number = self.sub(_number, self.mul(self.fromUint(46971696617), self.pow(self.fromUint(123123), 6))) # 1 307 733 141 469 273 444 912 310 500 297
    _number = self.div(_number, 92348823) # 14 160 799 228 261 668 748 201
    _number = self.div(_number, 11231324) # 1 260 830 800 381 296
    return self.asUint(_number)

@external
def test2() -> uint256:
    _number: BigUint = self.fromUint(781327317812)
    _number = self.mul(_number, self.fromUint(8712712))
    _number = self.div(_number, 8712712)
    return self.asUint(_number)

@external
def test3() -> uint256:
    _number: BigUint = self.fromUint(13123121)
    _number = self.sub(_number, self.fromUint(13123122))
    return self.asUint(_number)
