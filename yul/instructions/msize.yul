//! { "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "deadbeef",
//!             "calldata": []
//!         }
//!     ],
//!     "expected": [
//!         "128"
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
                mstore(0, 1)
                mstore(32, 1)
                mstore(64, 1)
                mstore(96, 1)
                mstore(128, msize())
                return(128, 32)
            }
        }
    }
}
