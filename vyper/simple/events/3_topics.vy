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
#!                     "0x0c5b4f36f8745c9db21282c9894b75174f0a8eedb32b243986263bfc37423006",
#!                     "8923892323892398",
#!                     "0x58ae9129f801e721b1bbf220c77ba8c48badd9b887f33def390a8120ed73c9cc"
#!                 ],
#!                 "values": []
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0xbe85b4ebd8e836631317dea26b2fecda32ab2ca5905447e4af0679ed1ee740c1",
#!                     "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff80",
#!                     "0x000000000000000000000000000000000000000000000000000000ffffffffff"
#!                 ],
#!                 "values": ["0xdeadbeef"]
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0xc99cd386e37ac9867d36011c2a04b8781b453eaba2b930457cefe962680e7356",
#!                     "0xcc69885fda6bcc1a4ace058b4a62bf5e179ea78fd58a1ccd71c22cc9b688792f",
#!                     "-1"
#!                 ],
#!                 "values": ["-128", "-1"]
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0xe2bb4728120d1154c04e4dc7219c8d627cb8234b817f23f34de5468b6f0a8455",
#!                     "1",
#!                     "0xdf0e45714bf256afe7c550b1150d0958439b34ae307888e184b747e3dd414a4a"
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
#!                     "0xf20f5ffcb271503e510c980b74d44f6628d621d291d150a564d6e1e261862374",
#!                     "0xabcd000000000000000000000000000000000000000000000000000000000000",
#!                     "0xdeadbeef00000000000000000000000000000000000000000000000000000000"
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
#!                     "0x5b03996195c2a3d6c7f367a1aa8a3de816ca971102b6d28044fe4074186ea7d1",
#!                     "0x3a56b02b60d4990074262f496ac34733f870e1b7815719b46ce155beac5e1a41",
#!                     "0x5bb661834c674f8f35aa5071b921a42aeae177c4b8bec3e41e2beb11cc404805"
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
    a: indexed(uint256)
    _: indexed(Bytes[100])

event OneWord:
    _: indexed(int8)
    x: uint256
    u40ind: indexed(uint40)

event TwoWords:
    _: indexed(Bytes[100])
    __: indexed(int256)
    ___: Str

event ThreeWords:
    ei: indexed(uint8)
    dyn_arr_ind: indexed(Bytes[100])
    _: Str
    e: uint8

event Dynamic:
    _: indexed(bytes2)
    __: indexed(bytes32)
    ___: String[100]

event Complex:
    bd: indexed(Bytes[100])
    _: indexed(Bytes[100])
    s: Str
    __: Bytes[100]
    ___: uint256[1]
    e: DynArray[uint8, 10]

@external
def test(number_: uint256):
    arr_u8: uint8[2] = [255, 0]
    log Empty(8923892323892398, _abi_encode(arr_u8))
    log OneWord(-128, CONST, 2**40-1)
    log TwoWords(_abi_encode(Str({a: 1, b: 1})), -1, Str({a: -128, b: MAX_UINT256}))
    ints: DynArray[int200, 10] = [-1, 131231231232134, 1]
    log ThreeWords(1, slice(_abi_encode(ints), 64, 96), Str({a: 127, b: number_}), 2)
    log Dynamic(0xabcd, convert(0xdeadbeef, bytes32), "abc")
    log Complex(b"\x12\x34\x56\x78\x90", b"\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x09\x87\x65\x43\x21\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00", Str({a: -1, b: IMMUTABLE_}), self.storage_var, [0], [0, 2, 1])
