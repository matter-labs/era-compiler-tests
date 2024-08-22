//! { "targets": [ "eravm" ], "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!                 "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE"
//!     ]
//! } ],
//! "enable_eravm_extensions": true
//! }

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
                let x := calldataload(0)
                let y := calldataload(32)
                let result := staticcall(x, 0xFFE6, y, 0xFFFF, 0, 0)

                mstore(0, result)
                return(0, 32)
            }
        }
    }
}
