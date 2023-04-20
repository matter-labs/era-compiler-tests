//! { "system_mode": true, "cases": [ {
//!     "name": "500_gas",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "500"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!     ]
//! }, {
//!     "name": "1000_gas",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "1000"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!     ]
//! }, {
//!     "name": "1500_gas",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "1500"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!     ]
//! }, {
//!     "name": "2000_gas",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "2000"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!     ]
//! }, {
//!     "name": "2500_gas",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [
//!                 "2500"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!     ]
//! } ] }

// A really basic test that only sets one memory cell to 1.
object "Bootloader" {
    code {
        return(0, 0)
    }
    object "Bootloader_deployed" {
        code {
            let gas_to_pass := calldataload(0)

            function BOOTLOADER_FORMAL_ADDR() -> ret {
                ret := 0x0000000000000000000000000000000000008001
            }

            function ZKSYNC_NEAR_CALL_tryTmp(abi) {
                let tmp := balance(BOOTLOADER_FORMAL_ADDR())
                mstore(0, tmp)
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(0, 13)
            }

            ZKSYNC_NEAR_CALL_tryTmp(gas_to_pass)
        }
    }
}