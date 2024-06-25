#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "complex",
#!     "inputs": [
#!         {
#!             "method": "complex",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

ARRAY_SIZE: constant(uint8) = 40
P: constant(uint256) = 257
MODULO: constant(uint256) = 1000000007

@internal
@pure
def hash(array: uint8[ARRAY_SIZE], begin: uint8, end: uint8) -> uint256:
    h: uint256 = 0
    for i: uint8 in range(begin, begin + ARRAY_SIZE, bound=ARRAY_SIZE):
        if not i < end:
            break
        h = (h * P + convert(array[i], uint256)) % MODULO
    return h

@external
def complex() -> uint256:
    array: uint8[ARRAY_SIZE] = empty(uint8[ARRAY_SIZE])
    # generate array where first half equals second
    for i: uint8 in range(ARRAY_SIZE):
        array[i] = (i % (ARRAY_SIZE // 2)) * (255 // (ARRAY_SIZE // 2 - 1))

    result: bool = True
    for i: uint8 in range(ARRAY_SIZE // 2):
        result = result and self.hash(array, 0, i + 1) == self.hash(array, ARRAY_SIZE // 2, ARRAY_SIZE // 2 + i + 1) and self.hash(array, i, ARRAY_SIZE // 2) == self.hash(array, i + ARRAY_SIZE // 2, ARRAY_SIZE)
    if result:
        return 1
    else:
        return 0
