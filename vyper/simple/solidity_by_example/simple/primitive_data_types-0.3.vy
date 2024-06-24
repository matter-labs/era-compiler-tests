#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "boo",
#!     "inputs": [
#!         {
#!             "method": "boo",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "u8",
#!     "inputs": [
#!         {
#!             "method": "u8",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "u256",
#!     "inputs": [
#!         {
#!             "method": "u256",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "456"
#!     ]
#! }, {
#!     "name": "i128",
#!     "inputs": [
#!         {
#!             "method": "i128",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-1"
#!     ]
#! }, {
#!     "name": "i256",
#!     "inputs": [
#!         {
#!             "method": "i256",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "456"
#!     ]
#! }, {
#!     "name": "minInt128",
#!     "inputs": [
#!         {
#!             "method": "minInt128",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xffffffffffffffffffffffffffffffff80000000000000000000000000000000"
#!     ]
#! }, {
#!     "name": "maxInt128",
#!     "inputs": [
#!         {
#!             "method": "maxInt128",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0x7fffffffffffffffffffffffffffffff"
#!     ]
#! }, {
#!     "name": "addr",
#!     "inputs": [
#!         {
#!             "method": "addr",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c"
#!     ]
#! }, {
#!     "name": "defaultBoo",
#!     "inputs": [
#!         {
#!             "method": "defaultBoo",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "defaultUint",
#!     "inputs": [
#!         {
#!             "method": "defaultUint",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "defaultInt",
#!     "inputs": [
#!         {
#!             "method": "defaultInt",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "defaultAddr",
#!     "inputs": [
#!         {
#!             "method": "defaultAddr",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

boo: public(bool)

# uint stands for unsigned integer, meaning non negative integers
# different sizes are available
#     uint8   ranges from 0 to 2 ** 8 - 1
#     uint256 ranges from 0 to 2 ** 256 - 1
u8: public(uint8)
u256: public(uint256)

# Negative numbers are allowed for int types.
# Like uint, different ranges are available int128 and int256
#
# int256 ranges from -2 ** 255 to 2 ** 255 - 1
# int128 ranges from -2 ** 127 to 2 ** 127 - 1
i128: public(int128)
i256: public(int256)

# minimum and maximum of int
minInt128: public(int128)
maxInt128: public(int128)

addr: public(address)

# Default values
# Unassigned variables have a default value
defaultBoo: public(bool) # false
defaultUint: public(uint256) # 0
defaultInt: public(int256) # 0
defaultAddr: public(address) # 0x0000000000000000000000000000000000000000

@external
def __init__():
    self.boo = True
    self.u8 = 1
    self.u256 = 456
    self.i128 = -1
    self.i256 = 456
    self.minInt128 = MIN_INT128
    self.maxInt128 = MAX_INT128
    self.addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c