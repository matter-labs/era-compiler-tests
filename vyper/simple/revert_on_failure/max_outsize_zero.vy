#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "default",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [ {
#!         "compiler_version": "=0.3.3",
#!         "return_data": [
#!             "0"
#!         ]
#!     }, {
#!         "compiler_version": ">=0.3.9",
#!         "return_data": [
#!             "1"
#!         ]
#!     } ]
#! } ] }

@external
def a(x: uint256) -> uint256:
    return x

@external
def main(a: uint256) -> bool:
    success: bool = False
    success = raw_call(
        self,
        abi_encode(a, method_id=method_id("a(uint256)")),
        revert_on_failure=False,
        )
    return success
