#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "oneWei",
#!     "inputs": [
#!         {
#!             "method": "oneWei",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "isOneWei",
#!     "inputs": [
#!         {
#!             "method": "isOneWei",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "oneEther",
#!     "inputs": [
#!         {
#!             "method": "oneEther",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1000000000000000000"
#!     ]
#! }, {
#!     "name": "isOneEther",
#!     "inputs": [
#!         {
#!             "method": "isOneEther",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

oneWei: public(uint256)
# 1 wei is equal to 1
isOneWei: public(bool)

oneEther: public(uint256)
# 1 ether is equal to 10^18 wei
isOneEther: public(bool)

@external
def __init__():
    self.oneWei = as_wei_value(1, "wei")
    self.isOneWei = as_wei_value(1, "wei") == 1
    self.oneEther = as_wei_value(1, "ether")
    self.isOneEther = as_wei_value(1, "ether") == convert(1e18, uint256)
