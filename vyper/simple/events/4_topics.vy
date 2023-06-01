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
#!                     "0x5657a2ad92d6fdc766bbd2f2492fb87a89219bb1153e5f552d2466e46601ff05",
#!                     "8923892323892398",
#!                     "0x58ae9129f801e721b1bbf220c77ba8c48badd9b887f33def390a8120ed73c9cc",
#!                     "0x0f551aaa5c86ee8370a062ef34113b9589b1b5d8c4fd999217b22b5f6e4dc726"
#!                 ],
#!                 "values": []
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0xc339da287b2960b087500945943138570dd5cdc69d4aed877a0ff71f324e1286",
#!                     "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff80",
#!                     "0x000000000000000000000000000000000000000000000000000000ffffffffff",
#!                     "0xa9c584056064687e149968cbab758a3376d22aedc6a55823d1b3ecbee81b8fb9"
#!                 ],
#!                 "values": ["0xdeadbeef"]
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0x8c087ab10d7f59d23599ebb606cae6ed06ba6c557ca99b60817c7e2a72cc85bf",
#!                     "0xcc69885fda6bcc1a4ace058b4a62bf5e179ea78fd58a1ccd71c22cc9b688792f",
#!                     "-1",
#!                     "0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563"
#!                 ],
#!                 "values": ["-128", "-1"]
#!             },
#!             {
#!                 "address": "0xe594ae1d7205e8e92fb22c59d040c31e1fcd139d",
#!                 "topics": [
#!                     "0x4ba39e3c9aac72a44241ab884ff82865a2909d21baf5fee87cc271871cd383fe",
#!                     "1",
#!                     "0xdf0e45714bf256afe7c550b1150d0958439b34ae307888e184b747e3dd414a4a",
#!                     "0x46fff8a91b2a509b0003c20c325d2116ddb2f88f4c48fdebba3bfce2ed90bb2c"
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
#!                     "0x5c94fa66620115e82ceeb70115b05cfecd92a0b72e4bf8a52cf4bc7709601933",
#!                     "0xabcd000000000000000000000000000000000000000000000000000000000000",
#!                     "0xdeadbeef00000000000000000000000000000000000000000000000000000000",
#!                     "0x45030b51678974217968eeacdbef5b0ac42a4c6351c961a8a80591f1b70c14cc"
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
#!                     "0x17fa1d8aafbe9422bb621ea80a3ac41a212f1dbcc4862a5c4158f67176307818",
#!                     "0x3a56b02b60d4990074262f496ac34733f870e1b7815719b46ce155beac5e1a41",
#!                     "0x5bb661834c674f8f35aa5071b921a42aeae177c4b8bec3e41e2beb11cc404805",
#!                     "Test.address"
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
    dyn_str_ind: indexed(Bytes[200])

event OneWord:
    _: indexed(int8)
    x: uint256
    u40ind: indexed(uint40)
    uint_arr1_ind: indexed(Bytes[100])

event TwoWords:
    _: indexed(Bytes[100])
    __: indexed(int256)
    ___: indexed(Bytes[100])
    ____: Str

event ThreeWords:
    ei: indexed(uint8)
    dyn_arr_ind: indexed(Bytes[100])
    _: Str
    e: uint8
    __: indexed(Bytes[200])

event Dynamic:
    _: indexed(bytes2)
    __: indexed(bytes32)
    ___: indexed(Bytes[200])
    ____: String[100]

event Complex:
    bd: indexed(Bytes[100])
    _: indexed(Bytes[100])
    addr: indexed(address)
    s: Str
    __: Bytes[100]
    ___: uint256[1]
    e: DynArray[uint8, 10]

@external
def test(number_: uint256):
    arr_u8: uint8[2] = [255, 0]
    strs: DynArray[Str, 10] = [Str({a: -1, b: 1}), Str({a: 127, b: 123456789012345678901234567890})]
    log Empty(8923892323892398, _abi_encode(arr_u8), slice(_abi_encode(strs), 64, 128))
    uint_arr1_ind: uint256[1] = [MAX_UINT256]
    log OneWord(-128, CONST, 2**40-1, _abi_encode(uint_arr1_ind))
    u8_arr: uint8[1] = [0]
    log TwoWords(_abi_encode(Str({a: 1, b: 1})), -1, _abi_encode(u8_arr), Str({a: -128, b: MAX_UINT256}))
    ints: DynArray[int200, 10] = [-1, 131231231232134, 1]
    strs_st: Str[2] = [Str({a: 0, b: 0}), Str({a: 12, b: 6789983984983434348989348934934})]
    log ThreeWords(1, slice(_abi_encode(ints), 64, 96), Str({a: 127, b: number_}), 2, _abi_encode(strs_st))
    uint8_2_dim: uint8[2][2] = [[4, 3], [2, 1]]
    log Dynamic(0xabcd, convert(0xdeadbeef, bytes32), _abi_encode(uint8_2_dim), "abc")
    log Complex(b"\x12\x34\x56\x78\x90", b"\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x12\x34\x56\x78\x90\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x09\x87\x65\x43\x21\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00", self, Str({a: -1, b: IMMUTABLE_}), self.storage_var, [0], [0, 2, 1])
