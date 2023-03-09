#! { "cases": [ {
#!     "name": "noSolution",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!                 "1", "1", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0", "0", "0"
#!     ]
#! }, {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!                 "2", "7", "4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1", "278", "71"
#!     ]
#! }, {
#!     "name": "second",
#!     "inputs": [
#!         {
#!             "method": "entry",
#!             "calldata": [
#!                 "17", "29", "12"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1", "100", "70"
#!     ]
#! } ] }

EPS: constant(uint256) = 10000000000
PRECISION: constant(uint256) = 100
MAX_U128_SQRT: constant(uint256) = 18446744073709551615

@internal
@pure
def sqrt(n: uint256) -> uint256:
    # binary search
    l: uint256 = 0
    r: uint256 = MAX_U128_SQRT
    for _ in range(64):
        if l == r:
            break
        m: uint256 = (l + r + 1) / 2
        if m*m <= n:
            l = m
        else:
            r = m - 1
    if n - l*l < (l+1)*(l+1) - n:
        return l
    else:
        return l + 1

# mb = -b
# returns roots * EPS
@internal
def main(a: uint256, mb: uint256, c: uint256) -> (bool, uint256, uint256):
    if mb*mb < 4*a*c:
        return (False, 0, 0)
    d: uint256 = (mb*mb - 4*a*c)*EPS*EPS
    sd: uint256 = self.sqrt(d)
    x1: uint256 = (mb*EPS + sd) / 2 / a
    x2: uint256 = (mb*EPS - sd) / 2 / a
    return (True, x1, x2)

@external
def entry(a: uint256, mb: uint256, c: uint256) -> (bool, uint256, uint256):
    p: bool = False
    x1: uint256 = 0
    x2: uint256 = 0
    p, x1, x2 = self.main(a, mb, c)
    x1 *= PRECISION
    x1 /= EPS
    x2 *= PRECISION
    x2 /= EPS
    return (p, x1, x2)
