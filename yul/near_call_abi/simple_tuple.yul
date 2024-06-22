//! { "targets": [ "EraVM" ], "cases": [ {
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
//! "enable_eravm_extensions": true
//! }

// Report https://linear.app/matterlabs/issue/CPR-655/near-call-with-abi-returns-tuple-bug

object "Test" {
    code {
        {
            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
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
