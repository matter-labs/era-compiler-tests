//! { "enable_eravm_extensions": true, "targets": [ "EraVM" ], "cases": [ {
//!     "name": "500_gas",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": []
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "1000_gas",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": []
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "1500_gas",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": []
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2000_gas",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": []
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2500_gas",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": []
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

object "Bootloader" {
    code {
        {
            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
        }
    }
    object "Bootloader_deployed" {
        code {
            function ZKSYNC_NEAR_CALL_getBalance(abi) -> ret {
                ret := balance(0)
            }

            // Making sure that nearCalls never panic
            function ZKSYNC_CATCH_NEAR_CALL() {}

            for { let i := 1 } lt(i, 10000) { i := add(i, 1) } {
                // It is okay is the value is zero if the near call panics,
                // it is here to prevent optimizing out
                let balanceZero := ZKSYNC_NEAR_CALL_getBalance(i)
                mstore(0, balanceZero)
            }

            // Need to return. Otherwise, the compiler will optimize out
            // the mstore
            return(0, 32)
        }
    }
}
