#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "encrypt",
#!     "inputs": [
#!         {
#!             "method": "encrypt",
#!             "calldata": [
#!                 "12", "143", "213", "43", "85", "42", "98", "111", "224", "76", "117"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "129", "4", "74", "160", "202", "159", "215", "228", "85", "193"
#!     ]
#! }, {
#!     "name": "decrypt",
#!     "inputs": [
#!         {
#!             "method": "decrypt",
#!             "calldata": [
#!                 "129", "4", "74", "160", "202", "159", "215", "228", "85", "193", "117"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "12", "143", "213", "43", "85", "42", "98", "111", "224", "76"
#!     ]
#! }, {
#!     "name": "complex",
#!     "inputs": [
#!         {
#!             "method": "complex",
#!             "calldata": [
#!                 "1", "12", "55", "53", "213", "123", "45", "21", "12", "92"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

SIZE: constant(uint8) = 10

@internal
@pure
def encryptInternal(_data: uint8[SIZE], key: uint8) -> uint8[SIZE]:
    data: uint8[SIZE] = _data
    for i: uint8 in range(SIZE):
        data[i] = convert((convert(data[i], uint256) + convert(key, uint256)) % 256, uint8)
    return data

@external
def encrypt(data: uint8[SIZE], key: uint8) -> uint8[SIZE]:
    return self.encryptInternal(data, key)

@internal
def decryptInternal(data: uint8[SIZE], key: uint8) -> uint8[SIZE]:
    return self.encryptInternal(data, convert((256 - convert(key, uint256)) % 256, uint8))

@external
def decrypt(data: uint8[SIZE], key: uint8) -> uint8[SIZE]:
    return self.decryptInternal(data, key)

@external
def complex(message: uint8[SIZE]) -> uint256:
    result: bool = True
    for key: uint256 in range(20):
        output: uint8[SIZE] = self.decryptInternal(self.encryptInternal(message, key), key)
        for i: uint8 in range(SIZE):
            result = result and message[i] == output[i]
    if result:
        return 1
    else:
        return 0
