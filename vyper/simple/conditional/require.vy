#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "condition_true",
#!     "inputs": [
#!         {
#!             "method": "without_message",
#!             "calldata": [
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "condition_false",
#!     "inputs": [
#!         {
#!             "method": "without_message",
#!             "calldata": [
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5"
#!     ]
#! }, {
#!     "name": "condition_true",
#!     "inputs": [
#!         {
#!             "method": "with_message",
#!             "calldata": [
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x08C379A000000000000000000000000000000000000000000000000000000000",
#!             "0x0000002000000000000000000000000000000000000000000000000000000000",
#!             "0x000000054572726F720000000000000000000000000000000000000000000000",
#!             "0x0000000000000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! }, {
#!     "name": "condition_false",
#!     "inputs": [
#!         {
#!             "method": "with_message",
#!             "calldata": [
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5"
#!     ]
#! } ] }

@external
@pure
def without_message(condition: bool) -> uint8:
    result: uint8 = 5

    if condition:
        assert result !=5
    
    return result

@external
@pure
def with_message(condition: bool) -> uint8:
    result: uint8 = 5

    if condition:
        assert result !=5, "Error"

    return result
