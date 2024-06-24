#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "caller": "0x0000000000000000000000000000000000000099",
#!             "calldata": [],
#!             "expected": [
#!                 "Test.address"
#!             ]
#!         },
#!         {
#!             "method": "DOMAIN_SEPARATOR_0",
#!             "calldata": [],
#!             "expected": [
#!                 "0x19ed957342c0dd93f726a54a983583a4ccd3ae9b41e0f15c834de372bc5955b6"
#!             ]
#!         },
#!         {
#!             "method": "DOMAIN_SEPARATOR_0A",
#!             "calldata": [],
#!             "expected": [
#!                 "0x19ed957342c0dd93f726a54a983583a4ccd3ae9b41e0f15c834de372bc5955b6"
#!             ]
#!         }
#!     ],
#!     "expected": [ "0x19ed957342c0dd93f726a54a983583a4ccd3ae9b41e0f15c834de372bc5955b6" ]
#! } ] }

EIP712_TYPEHASH: public(constant(bytes32)) = keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)")
DOMAIN_SEPARATOR_0: public(immutable(bytes32))
DOMAIN_SEPARATOR_0A: public(immutable(bytes32))
DOMAIN_SEPARATOR_1: public(immutable(bytes32))
CHAIN_ID: public(immutable(uint256))
NAME: public(immutable(String[64]))
NAME_HASH: public(immutable(bytes32))
VERSION_HASH: public(immutable(bytes32))
SELF: public(immutable(address))
ABI_ENCODED_0: public(immutable(Bytes[4096]))
ABI_ENCODED_1: public(immutable(Bytes[4096]))

@deploy
def __init__():
    name: String[64] = "Test"
    version: String[8] = "v1.0.0"

    NAME = name
    CHAIN_ID = chain.id

    NAME_HASH = keccak256(name)
    VERSION_HASH = keccak256(version)
    SELF = self

    ABI_ENCODED_0 = abi_encode(EIP712_TYPEHASH, keccak256(name), keccak256(version), chain.id, self)
    ABI_ENCODED_1 = abi_encode(EIP712_TYPEHASH, keccak256(name), keccak256(version), convert(280, uint256), self)

    DOMAIN_SEPARATOR_0 = keccak256(abi_encode(EIP712_TYPEHASH, keccak256(name), keccak256(version), chain.id, self))
    DOMAIN_SEPARATOR_0A = keccak256(abi_encode(EIP712_TYPEHASH, keccak256(name), keccak256(version), chain.id, self))
    DOMAIN_SEPARATOR_1 = keccak256(abi_encode(EIP712_TYPEHASH, keccak256(name), keccak256(version), convert(280, uint256), self))
