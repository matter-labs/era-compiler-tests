#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "first",
#!     "inputs": [
#!         {
#!             "method": "set",
#!             "calldata": [
#!                 "1",
#!                 "1",
#!                 "1"
#!             ]
#!         }, {
#!             "method": "get",
#!             "calldata": [
#!                 "1",
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "second",
#!     "inputs": [
#!         {
#!             "method": "set",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
#!                 "784563478547835256342389483254",
#!                 "1"
#!             ]
#!         }, {
#!             "method": "remove",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
#!                 "784563478547835256342389483254"
#!             ]
#!         }, {
#!             "method": "get",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
#!                 "784563478547835256342389483254"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "third",
#!     "inputs": [
#!         {
#!             "method": "set",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!                 "453453453464564564564500",
#!                 "1"
#!             ]
#!         }, {
#!             "method": "set",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!                 "453453453464564564564501",
#!                 "1"
#!             ]
#!         }, {
#!             "method": "remove",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!                 "453453453464564564564500"
#!             ]
#!         }, {
#!             "method": "get",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!                 "453453453464564564564501"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

# Nested mapping (mapping from address to another mapping)
nested: public(HashMap[address, HashMap[uint256, bool]])

@external
@view
def get(_addr1: address, _i: uint256) -> bool:
    # You can get values from a nested mapping
    # even when it is not initialized
    return self.nested[_addr1][_i]

@external
def set(_addr1: address, _i: uint256, _boo: bool):
    self.nested[_addr1][_i] = _boo

@external
def remove(_addr1: address, _i: uint256):
    self.nested[_addr1][_i] = empty(bool)
