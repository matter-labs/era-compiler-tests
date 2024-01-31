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
//!          "1",
//!          "0x0000000000000000000000000000000000000000000000000000000000000d48",
//!          "0x0000000000000000000000000000000000000000000004070000000000000d48",
//!          "0x0"
//!     ]
//! } ] }

object "Test" {
    code {
        {
            return(0, 0)
        }
    }

    // This test fails if `meta` value was cached and `mload` did not kill it.
    // The value of `before` encodes the heap size.
    // The instruction `mload(999)` grows the heap, so the value `after` should
    // encode the heap size after growth.
    // The value may be cached if the intrinsic `meta` is marked with incorrect
    // attributes in file IntrinsicsEraVM.td (backend)
    object "Test_deployed" {
        code {
            {
                let before := verbatim_0i_1o("meta")

                // we assign the value of `mload` to `p` and copy it to
                // returndata to prevent compiler from optimizing the load out,
                // therefore preventing heap growth

                let p := mload(999)

                let after := verbatim_0i_1o("meta")

                let cmp := not(eq(before, after))
                mstore(0, cmp)
                mstore(32, before)
                mstore(64, after)
                mstore(mul(32,3), p)

                return(0, mul(32,4))
            }
        }
    }
}
