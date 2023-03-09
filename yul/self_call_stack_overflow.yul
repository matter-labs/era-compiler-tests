//! { "cases": [ {
//!     "name": "10_failure",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "0", "1"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [ "0" ],
//!         "exception": true
//!     }
//! } ] }

// Report https://linear.app/matterlabs/issue/CPR-657/panic-is-lost-on-infinite-recursion

object "Test" {
    code {
        {
            return(0, 0)
        }
    }
    object "Test_deployed" {
        code {
            {
                let result := staticcall(0, address(), 0, 0, 0, 0)
                mstore(0, result)
                if result {
                    return(0, 32)
                }
                revert(0, 32)
            }
        }
    }
}
