//! { "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "deadbeef",
//!             "calldata": [
//!                 "69"
//!             ]
//!         }
//!     ],
//!     "expected": [ "42" ]
//! } ] }

object "Test_16" {
    code {
        {
            return(0, 0)
        }
    }
    object "Test_16_deployed" {
        code {
            {
                mstore(256, 42)
                return(256, 32)
            }
        }
    }
}
