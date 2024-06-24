#! { "modes": [ "V <=0.3.10" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "234234234234235345",
#!                 "54678987654356789765467"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "54679221888591024000812"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "23423423345345345123123123123123123345545344353453453478387258235834234235345",
#!                 "94234122112121212124231231231231231233244155453453453478387258235834234235345"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1865456220150361823783369345666446725519515141266342917316932463755338830754"
#!     ]
#! } ] }

@external
@pure
def main(a: uint256, b: uint256) -> uint256:
    return unsafe_add(a, b)
