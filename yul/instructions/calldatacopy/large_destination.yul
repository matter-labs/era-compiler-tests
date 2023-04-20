//! { "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "deadbeef",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

object "Test_29" {
    code {
        {
            return(0, 0)
        }
    }

    object "Test_29_deployed" {
        code {
            {
                calldatacopy(3334353453452342342354355544445321191012012, 122, 0)
                return(0, 32)
            }
        }
    }
}
