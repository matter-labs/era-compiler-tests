#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "text",
#!     "inputs": [
#!         {
#!             "method": "doSomething",
#!             "calldata": [
#!             ]
#!         }, {
#!             "method": "text",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0x20",
#!         "5",
#!         "0x48656c6c6f000000000000000000000000000000000000000000000000000000"
#!     ]
#! }, {
#!     "name": "num",
#!     "inputs": [
#!         {
#!             "method": "doSomething",
#!             "calldata": [
#!             ]
#!         }, {
#!             "method": "num",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "123"
#!     ]
#! } ] }

# State variables are stored on the blockchain.
text: public(String[5])
num: public(uint256)

@deploy
def __init__():
    self.text = "Hello"
    self.num = 123

@external
def doSomething():
    # Local variables are not saved to the blockchain.
    i: uint256 = 456

    # Here are some global variables
    _timestamp: uint256 = block.timestamp # Current block timestamp
    sender: address = msg.sender # address of the caller
