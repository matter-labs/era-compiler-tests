#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "test",
#!     "inputs": [
#!         {
#!             "method": "test",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "235", "1008", "0", "0", "0",
#!         "86", "4670", "0", "0", "0",
#!         "0", "0", "0", "0", "0",
#!         "0", "0", "0", "0", "0",
#!         "0", "0", "0", "0", "0",
#!         "2", "2"
#!     ]
#! }, {
#!     "name": "fibo",
#!     "inputs": [
#!         {
#!             "method": "fibo",
#!             "calldata": [
#!                 "87"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "679891637638612258"
#!     ]
#! } ] }

MAX_SIZE: constant(uint8) = 5

struct Matrix:
    a: uint256[MAX_SIZE][MAX_SIZE]
    n: uint8
    m: uint8

@internal
@pure
def mul(_self: Matrix, other: Matrix) -> Matrix:
    result: Matrix = empty(Matrix)
    result.n = _self.n
    result.m = other.m
    for i: uint8 in range(MAX_SIZE):
        if not i < _self.n:
            break
        for j: uint8 in range(MAX_SIZE):
            if not j < other.m:
                break
            for k: uint8 in range(MAX_SIZE):
                if not k < _self.m:
                    break
                result.a[i][j] += _self.a[i][k] * other.a[k][j]
    return result

@internal
@pure
def add(__self: Matrix, other: Matrix) -> Matrix:
    _self: Matrix = __self
    for i: uint8 in range(MAX_SIZE):
        if not i < _self.n:
            break
        for j: uint8 in range(MAX_SIZE):
            if not j < _self.m:
                break
            _self.a[i][j] += other.a[i][j]
    return _self

@internal
@pure
def scalar(__self: Matrix, n: uint256) -> Matrix:
    _self: Matrix = __self
    for i: uint8 in range(MAX_SIZE):
        if not i < _self.n:
            break
        for j: uint8 in range(MAX_SIZE):
            if not j < _self.m:
                break
            _self.a[i][j] *= n
    return _self

@internal
def pow(__self: Matrix, _n: uint256) -> Matrix:
    _self: Matrix = __self
    n: uint256 = _n
    result: Matrix = empty(Matrix)
    result.n = _self.n
    result.m = _self.m
    for i: uint8 in range(MAX_SIZE):
        if not i < _self.n:
            break
        result.a[i][i] = 1
    for _: uint256 in range(1000000000):
        if not n != 0:
            break
        if n & 1 != 0:
            result = self.mul(result, _self)
        _self = self.mul(_self, _self)
        n >>= 1
    return result

@external
def test() -> Matrix:
    a: Matrix = empty(Matrix)
    a.n = 2
    a.m = 3
    a.a[0][0] = 5
    a.a[0][1] = 2
    a.a[0][2] = 1

    a.a[1][0] = 4
    a.a[1][1] = 2
    a.a[1][2] = 9

    a = self.scalar(a, 2)

    b: Matrix = empty(Matrix)
    b.n = 3
    b.m = 2
    b.a[0][0] = 1
    b.a[0][1] = 52

    b.a[1][0] = 1
    b.a[1][1] = 2

    b.a[2][0] = 4
    b.a[2][1] = 234

    a = self.mul(a, b)

    c: Matrix = empty(Matrix)
    c.n = 2
    c.m = 2
    c.a[0][0] = 213
    c.a[0][1] = 12

    c.a[1][0] = 2
    c.a[1][1] = 34

    a = self.add(a, c)
    return a

@external
def fibo(n: uint256) -> uint256:
    matrix: Matrix = empty(Matrix)
    matrix.n = 2
    matrix.m = 2
    matrix.a[0][1] = 1
    matrix.a[1][0] = 1
    matrix.a[1][1] = 1
    matrix = self.pow(matrix, n - 2)
    return matrix.a[0][1] + matrix.a[1][1]
