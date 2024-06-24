#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "address",
#!     "inputs": [
#!         {
#!             "method": "MY_ADDRESS",
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
#!             "method": "MY_UINT",
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
def MY_ADDRESS() -> address:
    return MY_ADDRESS

@external
def MY_UINT() -> uint256:
    return MY_UINT
