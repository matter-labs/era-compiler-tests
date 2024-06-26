#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "ok",
#!     "inputs": [
#!         {
#!             "method": "deposit",
#!             "calldata": [
#!                 "20"
#!             ]
#!         },
#!         {
#!             "method": "withdraw",
#!             "calldata": [
#!                 "10"
#!             ]
#!         },
#!         {
#!             "method": "balance_",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10"
#!     ]
#! }, {
#!     "name": "MAX_UINT",
#!     "inputs": [
#!         {
#!             "method": "GET_MAX_UINT",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "inputs": [
#!         {
#!             "method": "deposit",
#!             "calldata": [
#!                 "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!             ]
#!         },
#!         {
#!             "method": "deposit",
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
#!     "name": "underflow",
#!     "inputs": [
#!         {
#!             "method": "deposit",
#!             "calldata": [
#!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe"
#!             ]
#!         },
#!         {
#!             "method": "withdraw",
#!             "calldata": [
#!                 "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x08c379a000000000000000000000000000000000000000000000000000000000",
#!             "0x0000002000000000000000000000000000000000000000000000000000000000",
#!             "0x00000009556e646572666c6f7700000000000000000000000000000000000000",
#!             "0x0000000000000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! } ] }

balance_: public(uint256)
MAX_UINT: constant(uint256) = max_value(uint256)

@external
def GET_MAX_UINT() -> uint256:
    return MAX_UINT

@external
def deposit(_amount: uint256):
    oldBalance: uint256 = self.balance_
    newBalance: uint256 = self.balance_ + _amount

    # balance + _amount does not overflow if balance + _amount >= balance
    assert newBalance >= oldBalance, "Overflow"

    self.balance_ = newBalance

    assert self.balance_ >= oldBalance


@external
def withdraw(_amount: uint256):
    oldBalance: uint256 = self.balance_

    # balance - _amount does not underflow if balance >= _amount
    assert self.balance_ >= _amount, "Underflow"

    if self.balance_ < _amount:
        raise "Underflow"

    self.balance_ -= _amount

    assert self.balance_ <= oldBalance
