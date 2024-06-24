#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "test",
#!     "inputs": [
#!         {
#!             "method": "verify",
#!             "calldata": [
#!                 "0x20",
#!                 "32",
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-450/vyper-extract32-exception-without-optimization

@external
def verify(sig: Bytes[32]) -> bytes32:
    return extract32(sig, 0)
