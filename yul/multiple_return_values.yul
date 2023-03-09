//! { "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "deadbeef",
//!             "calldata": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "84",
//!         "126"
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
                let x := calldataload(4)
                let double, triple := double_triple(x)
                mstore(0, double)
                mstore(32, triple)
                return(0, 64)
            }

            function double_triple(x) -> double, triple {
                double := mul(x, 2)
                triple := mul(x, 3)
            }
        }
    }
}
