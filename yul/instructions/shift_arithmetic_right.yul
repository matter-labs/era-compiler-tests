//! { "cases": [ {
//!     "name": "zero",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "-1000", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-1000"
//!     ]
//! }, {
//!     "name": "one",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "-1000", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-500"
//!     ]
//! } ] }

object "Test" {
    code {
        {
            return(0, 0)
        }
    }
    object "Test_deployed" {
        code {
            {
                let value := calldataload(0)
                let offset := calldataload(32)

                mstore(0, sar(offset, value))
                return(0, 32)
            }
        }
    }
}

