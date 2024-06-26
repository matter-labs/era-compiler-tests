#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "without_argument",
#!     "inputs": [
#!         {
#!             "method": "main()",
#!             "caller": "0xdeadbeef00000000000000000000000000000042",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xdeadbeef00000000000000000000000000000042"
#!     ]
#! }, {
#!     "name": "with_argument",
#!     "inputs": [
#!         {
#!             "method": "main(address)",
#!             "calldata": [
#!                 "0xdeadbeef00000000000000000000000000000042"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xdeadbeef00000000000000000000000000000042"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-500/floating-bug-with-a-default-value-for-the-parameter-as-msgsender

@external
def main(
    a: address = msg.sender,
) -> address:
    return a