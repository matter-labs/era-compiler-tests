//! { "cases": [ {
//!     "name": "failure",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "777", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0",
//!         "666"
//!     ]
//! }, {
//!     "name": "success",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "777", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "777",
//!         "0"
//!     ]
//! } ],
//! "enable_eravm_extensions": true
//! }

object "Test" {
    code {
        {
            return(0, 0)
        }
    }
    object "Test_deployed" {
        code {
            {
                let arg := calldataload(0)

                let result := ZKSYNC_NEAR_CALL_test(555, arg)
                mstore(0, result)
                return(0, 64)
            }

            function ZKSYNC_NEAR_CALL_test(abi_data, arg) -> result {
                deeper()
                result := 777
            }

            function deeper() {
                if calldataload(32) {
                    verbatim_0i_0o("throw")
                }
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(32, 666)
            }
        }
    }
}
