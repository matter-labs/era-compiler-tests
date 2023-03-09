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
#!                 "topics": [
#!                     "0xf2c6b74a4e42434bf406d1452c6d967321daaad79270822b1e44a42b0aa6aa1f",
#!                     "8923892323892398"
#!                 ],
#!                 "values": []
#!             },
#!             {
#!                 "topics": [
#!                     "0xd375ad4447ce145f0c0bc7b6812f104a5a7f36ed817acb678201996744d1f90f",
#!                     "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff80"
#!                 ],
#!                 "values": ["0xdeadbeef"]
#!             },
#!             {
#!                 "topics": [
#!                     "0xac1b2b27e9276508a24daed850569935a752bee82895f1eafc931385ff464472",
#!                     "0xcc69885fda6bcc1a4ace058b4a62bf5e179ea78fd58a1ccd71c22cc9b688792f"
#!                 ],
#!                 "values": ["-128", "-1"]
#!             },
#!             {
#!                 "topics": [
#!                     "0xec112c4347f79319b45baa137e38978bf34e893fffd566bb6eac424272d4bd45",
#!                     "1"
#!                 ],
#!                 "values": [
#!                     "127",
#!                     "0xdeadbeef2",
#!                     "2"
#!                 ]
#!             },
#!             {
#!                 "topics": [
#!                     "0xb003e25404531c83a6d0bdc419158b8c07c1a5f3e81ab387366c8b7e572c1ae5",
#!                     "0xabcd000000000000000000000000000000000000000000000000000000000000"
#!                 ],
#!                 "values": [
#!                     "0x20",
#!                     "3",
#!                     "0x6162630000000000000000000000000000000000000000000000000000000000"
#!                 ]
#!             },
#!             {
#!                 "topics": [
#!                     "0xcf3ebc0dada12385ab7c83ed0cbf88cb2a0fae271721947ab39af2fcc3b2df9c",
#!                     "0x3a56b02b60d4990074262f496ac34733f870e1b7815719b46ce155beac5e1a41"
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

event OneWord:
    _: indexed(int8)
    x: uint256

event TwoWords:
    _: indexed(Bytes[100])
    __: Str

event ThreeWords:
    ei: indexed(uint8)
    _: Str
    e: uint8

event Dynamic:
    _: indexed(bytes2)
    __: String[100]

event Complex:
    bd: indexed(Bytes[100])
    s: Str
    _: Bytes[100]
    __: uint256[1]
    e: DynArray[uint8, 10]

@external
def test(number_: uint256):
    log Empty(8923892323892398)
    log OneWord(-128, CONST)
    log TwoWords(_abi_encode(Str({a: 1, b: 1})), Str({a: -128, b: MAX_UINT256}))
    log ThreeWords(1, Str({a: 127, b: number_}), 2)
    log Dynamic(0xabcd, "abc")
    log Complex(b"\x12\x34\x56\x78\x90", Str({a: -1, b: IMMUTABLE_}), self.storage_var, [0], [0, 2, 1])
