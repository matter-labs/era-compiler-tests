#! { "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "test",
#!             "calldata": [
#!                 "0xdeadbeef2"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!         ],
#!         "events": [
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0x3db2a12a1fcfb6e2e0de8666c64b3244166edb7b25b200204a8d0cca9b65cf37"
#!                 ],
#!                 "values": []
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0xff0604e164e758d4372a33e32e8220788be26a00dfd8adebc4bf965ba88217a7"
#!                 ],
#!                 "values": ["0xdeadbeef"]
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0xca3f9448a573966265a425c911e248f5d76acd7ab4f9b31f3ec2440038c63561"
#!                 ],
#!                 "values": ["-128", "-1"]
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0xee10da440848b216618cdc497a9ed8ffdfa08f5efc3ad1f18822f727f7ff48ce"
#!                 ],
#!                 "values": [
#!                     "127",
#!                     "0xdeadbeef2",
#!                     "2"
#!                 ]
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0x6a10ac5d5f69030d7fc69d2e2d9fa31c998637f1be5ca8a27b95e9f87372b7e4"
#!                 ],
#!                 "values": [
#!                     "0x20",
#!                     "3",
#!                     "0x6162630000000000000000000000000000000000000000000000000000000000"
#!                 ]
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0x7c75ddea4da4ca5925a023b36d01f6fed2e9e4da87b02ba2a6c733f600959cd6"
#!                 ],
#!                 "values": [
#!                     "-1",
#!                     "0xdeadbeef3",
#!                     "0xa0",
#!                     "0",
#!                     "0xe0",
#!                     "5",
#!                     "0xdeadbeef4000000000000000000000000000000000000000000000000000000",
#!                     "3",
#!                     "0",
#!                     "2",
#!                     "1"
#!                 ]
#!             }
#!         ]
#!     }
#! } ] }

CONST: constant(uint256) = 3735928559 # 0xdeadbeef
IMMUTABLE_: immutable(uint256)
storage_var: Bytes[100]

@external
def __init__():
    IMMUTABLE_ = convert(0x0deadbeef3, uint256)
    self.storage_var = b"\x0d\xea\xdb\xee\xf4"

struct Str:
    a: int8
    b: uint256

event Empty:
    pass

event OneWord:
    x: uint256

event TwoWords:
    _: Str

event ThreeWords:
    _: Str
    e: uint8

event Dynamic:
    _: String[100]

event Complex:
    s: Str
    _: Bytes[100]
    __: uint256[1]
    e: DynArray[uint8, 10]

@external
def test(number_: uint256):
    log Empty()
    log OneWord(CONST)
    log TwoWords(Str({a: -128, b: MAX_UINT256}))
    log ThreeWords(Str({a: 127, b: number_}), 2)
    log Dynamic("abc")
    log Complex(Str({a: -1, b: IMMUTABLE_}), self.storage_var, [0], [0, 2, 1])
