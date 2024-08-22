//! { "targets": [ "eravm" ], "cases": [ {
//!     "name": "default",
//!     "inputs": [
//!         {
//!             "method": "deadbeef",
//!             "calldata": []
//!         }
//!     ],
//!     "expected": [
//!         "555",
//!         "666",
//!         "42",
//!         "84"
//!     ]
//! } ], "enable_eravm_extensions": true }

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
                let gate := calldataload(0)
                switch gate
                case 1 {
                    mstore(0, 42)
                    mstore(32, 84)
                    return(0, 64)
                }
                case 2 {
                    mstore(0, 555)
                    mstore(32, 666)
                    return(0, 64)
                }
                default {}

                mstore(0, 1)
                pop(staticcall(gas(), address(), 0, 32, 0, 0))
                pop(staticcall(0xFFFF, 0xFFEA, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))

                mstore(0, 2)
                pop(staticcall(gas(), address(), 0, 32, 0, 64))
                pop(staticcall(64, 0xFFE3, 0, 64, 0xFFFF, 0xFFFF))

                return(0, 128)
            }
        }
    }
}
