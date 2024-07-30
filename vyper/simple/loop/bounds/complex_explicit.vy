#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "#deployer",
#!             "calldata": [
#!                 "0xdeadbeef01000000000000000000000000000000"
#!             ],
#!             "expected": [
#!                 "Test.address"
#!             ]
#!         },
#!         {
#!             "method": "add_fees",
#!             "calldata": [
#!                 "1"
#!             ],
#!             "value": "1 wei",
#!             "expected": []
#!         },
#!         {
#!             "method": "add_fees",
#!             "calldata": [
#!                 "2"
#!             ],
#!             "value": "1 wei",
#!             "expected": []
#!         },
#!         {
#!             "method": "add_fees",
#!             "calldata": [
#!                 "3"
#!             ],
#!             "value": "1 wei",
#!             "expected": []
#!         },
#!         {
#!             "method": "add_fees",
#!             "calldata": [
#!                 "4"
#!             ],
#!             "value": "1 wei",
#!             "expected": []
#!         },
#!         {
#!             "method": "claim_fees",
#!             "caller": "0xdeadbeef42000000000000000000000000000000",
#!             "calldata": [
#!                 "10"
#!             ],
#!             "expected": [
#!                 "1"
#!             ]
#!         },
#!         {
#!             "method": "claim_fees",
#!             "caller": "0xdeadbeef01000000000000000000000000000000",
#!             "calldata": [
#!                 "10"
#!             ],
#!             "expected": [
#!                 "4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "100"
#!     ]
#! } ] }

fees: uint256[10]
admin: address

@deploy
def __init__(admin: address):
    self.admin = admin

@external
def claim_fees(x: uint256) -> uint256:
    sum: uint256 = 0
    if msg.sender != self.admin:
        # Users can only call this function with x < 2 and claim the sum of 0 and 1.
        for i: uint256 in range(x, bound=2):
            sum += self.fees[i]
    else:
        # Admin can claim everything.
        for i: uint256 in range(x, bound=10):
            sum += self.fees[i]
    return sum

@external
@payable
def add_fees(slot: uint256):
    self.fees[slot] = msg.value