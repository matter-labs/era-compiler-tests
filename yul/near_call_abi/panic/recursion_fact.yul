//! { "targets": [ "eravm" ], "cases": [ {
//!     "name": "10_failure",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "10", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "12345678901234567890"
//!     ]
//! }, {
//!     "name": "5_success",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "5", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "120"
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
                let n := calldataload(0)

                let go_static := calldataload(32)
                if eq(go_static, 1) {
                    calldatacopy(0, 0, 32)
                    pop(staticcall(gas(), address(), 0, 32, 0, 32))
                    return(0, 32)
                }

                let result := ZKSYNC_NEAR_CALL_fact(gas(), n)
                mstore(0, result)
                return(0, 32)
            }

            function ZKSYNC_NEAR_CALL_fact(abi_data, n) -> result {
                switch n
                case 0 {
                    result := 1
                    sstore(0, 0)
                }
                default {
                    result := mul(ZKSYNC_NEAR_CALL_fact(gas(), sub(n, 1)), n)
                }
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(0, 12345678901234567890)
                return(0, 32)
            }
        }
    }
}
