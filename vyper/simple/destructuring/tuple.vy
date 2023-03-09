#! { "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "55"
#!     ]
#! } ] }

@internal
@pure
def first(v: uint8[11]) -> (uint8, uint8, uint8, uint8):
    return (v[0], v[1], v[2], v[3])

@internal
@pure
def second(v: uint8[11]) -> (uint8, uint8, uint8, uint8):
    return (v[4], v[5], v[6], v[7])

@internal
@pure
def third(v: uint8[11]) -> (uint8, uint8, uint8):
    return (v[8], v[9], v[10])

@external
def main(v: uint8[11]) -> uint8:
    a: uint8 = 0
    b: uint8 = 0
    c: uint8 = 0
    d: uint8 = 0
    (a, b, c, d) = self.first(v)

    e: uint8 = 0
    f: uint8 = 0
    g: uint8 = 0
    h: uint8 = 0
    (e, f, g, h) = self.second(v)

    j: uint8 = 0
    i: uint8 = 0
    k: uint8 = 0
    (j, i, k) = self.third(v)

    a += b
    a += c
    a += d
    a += e
    a += f
    a += g
    a += h
    a += j
    a += i
    a += k

    return a
