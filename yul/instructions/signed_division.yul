//! { "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "deadbeef",
//!             "calldata": [
//!                 "127", "-3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-42"
//!     ]
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
                mstore(256, sdiv(calldataload(4), calldataload(36)))
                return(256, 32)
            }
        }
    }
}
