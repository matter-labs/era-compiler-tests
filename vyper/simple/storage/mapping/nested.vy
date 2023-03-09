#! { "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "100500", "999999", "16"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "64"
#!     ]
#! } ] }

data: HashMap[address, HashMap[address, uint256]]

@external
def main(key1: address, key2: address, _value: uint256) -> uint256:
    self.data[key1][key2] = _value * 4
    return self.data[key1][key2]
