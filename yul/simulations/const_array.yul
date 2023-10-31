//! { "cases": [ {
//!     "name": "init",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [ "0" ]
//!         }
//!     ],
//!     "expected": []
//! }, {
//!     "name": "get",
//!     "inputs": [
//!         {
//!             "method": "#fallback",
//!             "calldata": [ "1", "4" ]
//!         }
//!     ],
//!     "expected": [
//!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb"
//!     ]
//! } ],
//! "system_mode": true
//! }

object "Test_16" {
    code {
        {
            return(0, 0)
        }
    }
    object "Test_16_deployed" {
        code {
            {
                let method := calldataload(0)

                if eq(method, 0) {
                    pop(staticcall(0, 0xFFE1, 4, 0xFFFF, 0, 0))
                    pop(staticcall(0, 0xFFE0, 0, 0xFFFF, 1, 0))
                    pop(staticcall(0, 0xFFE0, 1, 0xFFFF, 2, 0))
                    pop(staticcall(0, 0xFFE0, 2, 0xFFFF, 3, 0))
                    pop(staticcall(0, 0xFFE0, 3, 0xFFFF, 4, 0))
                    pop(staticcall(0, 0xFFDF, 0, 0xFFFF, 0, 0))
    
                    pop(staticcall(1, 0xFFE1, 2, 0xFFFF, 0, 0))
                    pop(staticcall(1, 0xFFE0, 0, 0xFFFF, 42, 0))
                    pop(staticcall(1, 0xFFE0, 1, 0xFFFF, 88, 0))
                    pop(staticcall(1, 0xFFDF, 0, 0xFFFF, 0, 0))
    
                    pop(staticcall(2, 0xFFE1, 8, 0xFFFF, 0, 0))
                    pop(staticcall(2, 0xFFE0, 0, 0xFFFF, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0))
                    pop(staticcall(2, 0xFFE0, 1, 0xFFFF, 2, 0))
                    pop(staticcall(2, 0xFFE0, 2, 0xFFFF, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd, 0))
                    pop(staticcall(2, 0xFFE0, 3, 0xFFFF, 4, 0))
                    pop(staticcall(2, 0xFFE0, 4, 0xFFFF, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb, 0))
                    pop(staticcall(2, 0xFFE0, 5, 0xFFFF, 6, 0))
                    pop(staticcall(2, 0xFFE0, 6, 0xFFFF, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9, 0))
                    pop(staticcall(2, 0xFFE0, 7, 0xFFFF, 8, 0))
                    pop(staticcall(2, 0xFFDF, 0, 0xFFFF, 0, 0))

                    return(0, 0)
                }

                if eq(method, 1) {
                    let offset := calldataload(32)
                    let result := staticcall(2, 0xFFDE, offset, 0xFFFF, 0, 0)
                    mstore(0, result)
                    return(0, 32)
                }
            }
        }
    }
}
