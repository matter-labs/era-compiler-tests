#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "complex1",
#!     "inputs": [
#!         {
#!             "method": "complex",
#!             "calldata": [
#!                 "1", "231", "55", "221", "22", "34", "118", "21", "89", "7",
#!                 "12", "255", "0", "12"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1", "231", "55", "221", "22", "34", "118", "21", "89", "7"
#!     ]
#! }, {
#!     "name": "complex2",
#!     "inputs": [
#!         {
#!             "method": "complex",
#!             "calldata": [
#!                 "12", "128", "255", "0", "123", "12", "68", "192", "2", "19",
#!                 "17", "181", "64", "243"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "12", "128", "255", "0", "123", "12", "68", "192", "2", "19"
#!     ]
#! } ] }

@internal
@pure
def encryptSym(sym: uint8, keySym: uint8) -> uint8:
    return convert((convert(sym, uint256) + convert(keySym, uint256)) % 256, uint8)

@internal
@pure
def decryptSym(sym: uint8, keySym: uint8) -> uint8:
    symbol: uint256 = convert(sym, uint256)
    if symbol < convert(keySym, uint256):
        symbol += 256
    return convert(symbol - convert(keySym, uint256), uint8)

SIZE: constant(uint8) = 10
KEY_SIZE: constant(uint8) = 4

@internal
def encrypt(_data: uint8[SIZE], key: uint8[KEY_SIZE]) -> uint8[SIZE]:
    data: uint8[SIZE] = _data
    for i: uint8 in range(SIZE):
        data[i] = self.encryptSym(data[i], key[i % KEY_SIZE])
    return data

@internal
def decrypt(_data: uint8[SIZE], key: uint8[KEY_SIZE]) -> uint8[SIZE]:
    data: uint8[SIZE] = _data
    for i: uint8 in range(SIZE):
        data[i] = self.decryptSym(data[i], key[i % KEY_SIZE])
    return data

@external
def complex(message: uint8[SIZE], key: uint8[KEY_SIZE]) -> uint8[SIZE]:
    return self.decrypt(self.encrypt(message, key), key)
