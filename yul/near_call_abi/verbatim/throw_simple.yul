//! { "targets": [ "eravm" ], "cases": [ {
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
            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
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
                if calldataload(32) {
                    verbatim_0i_0o("throw")
                }
                result := 777
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(32, 666)
            }
        }
    }
}
