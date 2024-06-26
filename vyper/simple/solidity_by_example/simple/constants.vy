#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "address",
#!     "inputs": [
#!         {
#!             "method": "GET_MY_ADDRESS",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc"
#!     ]
#! }, {
#!     "name": "uint",
#!     "inputs": [
#!         {
#!             "method": "GET_MY_UINT",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "123"
#!     ]
#! } ] }

MY_ADDRESS: constant(address) = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc
MY_UINT: constant(uint256) = 123

@external
def GET_MY_ADDRESS() -> address:
    return MY_ADDRESS

@external
def GET_MY_UINT() -> uint256:
    return MY_UINT
