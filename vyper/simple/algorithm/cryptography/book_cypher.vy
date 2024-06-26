#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "complex1",
#!     "inputs": [
#!         {
#!             "method": "complex",
#!             "calldata": [
#!                 "1", "12", "55", "53", "22", "34", "45", "21", "12", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1", "12", "55", "53", "22", "34", "45", "21", "12", "7"
#!     ]
#! }, {
#!     "name": "complex2",
#!     "inputs": [
#!         {
#!             "method": "complex",
#!             "calldata": [
#!                 "37", "11", "2", "59", "0", "63", "41", "27", "17", "9"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "37", "11", "2", "59", "0", "63", "41", "27", "17", "9"
#!     ]
#! } ] }

# @version >=0.4.0

KEY_SZ: constant(uint8) = 4
KEY: uint8[KEY_SZ][KEY_SZ][KEY_SZ]

SIZE: constant(uint8) = 10
ALPHABET: constant(uint8) = 64

@deploy
def __init__():
    self.KEY = [
        [
            [10, 33, 26, 15],
            [32, 62, 43, 58],
            [3, 8, 45, 23],
            [13, 55, 30, 21]
        ], [
            [11, 22, 9, 2],
            [28, 52, 38, 27],
            [61, 53, 56, 37],
            [5, 25, 39, 59]
        ], [
            [19, 36, 4, 48],
            [51, 0, 44, 35],
            [54, 46, 6, 60],
            [14, 31, 63, 29]
        ], [
            [40, 7, 20, 50],
            [41, 12, 49, 16],
            [18, 17, 57, 34],
            [42, 24, 1, 47]
        ]
    ]

@internal
@view
def encrypt(_data: uint8[SIZE]) -> uint8[SIZE]:
    data: uint8[SIZE] = _data
    for i: uint8 in range(0, SIZE):
        fl: bool = False
        for page: uint8 in range(0, KEY_SZ):
            for row: uint8 in range(0, KEY_SZ):
                for col: uint8 in range(0, KEY_SZ):
                    if self.KEY[page][row][col] == data[i]:
                        data[i] = page*KEY_SZ*KEY_SZ + row*KEY_SZ + col
                        fl = True
                        break
                if fl:
                    break
            if fl:
                break
    return data

@internal
@view
def decrypt(_data: uint8[SIZE]) -> uint8[SIZE]:
    data: uint8[SIZE] = _data
    for i: uint8 in range(0, SIZE):
        page: uint8 = data[i] // KEY_SZ // KEY_SZ
        ost: uint8 = data[i] % (KEY_SZ * KEY_SZ)
        row: uint8 = ost // KEY_SZ
        col: uint8 = ost % KEY_SZ
        data[i] = self.KEY[page][row][col]
    return data

@external
@view
def complex(message: uint8[SIZE]) -> uint8[SIZE]:
    return self.decrypt(self.encrypt(message))
