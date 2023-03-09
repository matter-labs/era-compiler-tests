//! { "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ],
//! "system_mode": true
//! }

// Report https://linear.app/matterlabs/issue/CPR-655/near-call-with-abi-returns-tuple-bug

object "Test" {
    code {
        {
            return(0, 0)
        }
    }
    object "Test_deployed" {
        code {
            {
                let result1, result2 := ZKSYNC_NEAR_CALL_tuple2(0)
                mstore(0, result1)
                return(0, 32)
            }

            function ZKSYNC_NEAR_CALL_tuple2(abi_data) -> result1, result2 {
                result1 := 1
                result2 := 0
            }
        }
    }
}
