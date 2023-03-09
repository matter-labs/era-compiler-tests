//! { "cases": [ {
//!     "name": "zero_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "17", "233", "300", "0xAA", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "one_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "32", "128", "64", "0xFF", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "small_ordinar_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "19", "0", "32", "1", "0", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "word_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "272", "17", "17", "0xDE", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "ordinar_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "2383", "122", "2383", "32", "0x44", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "ordinar_words_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xF100", "64", "100", "100", "0xFF", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "big_ordinar_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFAA", "32", "32", "0", "0", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_64_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFC0", "322", "333", "10", "0xFF", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_63_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFC1", "0", "512", "4", "0xBB", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_ordinar_between_32_64_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFCF", "1", "1", "52", "52", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_33_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFDF", "0", "1", "48", "0xC8", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_32_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFE0", "55", "64", "32", "0", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_31_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFE1", "1", "17", "3", "3", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_ordinar_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFEF", "5", "1", "128", "0xFF", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_one_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFFF", "17", "55", "222", "0xAA", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0x100000000", "256", "32", "256", "12", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_bigger_2_in_32_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "3334353453452342342354355544445321191012012", "32", "1", "1", "0x55", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "max_to",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF", "100", "96", "0", "0", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "zero_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "17", "0", "233", "300", "0xAA", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "one_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "1", "128", "64", "0xFF", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "small_ordinar_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "19", "32", "1", "0", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "word_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "272", "32", "17", "17", "0xDE", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "ordinar_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "122", "2383", "2383", "32", "0x44", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "ordinar_words_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "64", "0xF100", "100", "100", "0xFF", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "big_ordinar_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "0xFFFFFFAA", "32", "0", "0", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_64_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "322", "0xFFFFFFC0", "333", "10", "0xFF", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_63_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "0xFFFFFFC1", "512", "4", "0xBB", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_ordinar_between_32_64_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "0xFFFFFFCF", "1", "52", "52", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_33_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "0xFFFFFFDF", "1", "48", "0xC8", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_32_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "55", "0xFFFFFFE0", "64", "32", "0", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_31_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "0xFFFFFFE1", "17", "3", "3", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_ordinar_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "5", "0xFFFFFFEF", "1", "128", "0xFF", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_one_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "17", "0xFFFFFFFF", "55", "222", "0xAA", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "256", "0x100000000", "32", "256", "12", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_bigger_2_in_32_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "3334353453452342342354355544445321191012012", "1", "1", "0x55", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "max_from",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "100", "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF", "96", "0", "0", "0",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "zero_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "17", "233", "0", "300", "0xAA", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "one_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "128", "32", "64", "0xFF", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "small_ordinar_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "32", "19", "1", "0", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "word_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "272", "17", "32", "17", "0xDE", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "ordinar_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "122", "2383", "2383", "32", "0x44", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "ordinar_words_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "64", "100", "0xF100", "100", "0xFF", "1",
//!                 "0xFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "1"
//!     ]
//! }, {
//!     "name": "big_ordinar_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "32", "0xFFFFFFAA", "0", "0", "0",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_64_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "322", "333", "0xFFFFFFC0", "10", "0xFF", "0",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_63_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "512", "0xFFFFFFC1", "4", "0xBB", "0",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_ordinar_between_32_64_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "1", "0xFFFFFFCF", "52", "52", "1",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_33_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "1", "0xFFFFFFDF", "48", "0xC8", "1",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_32_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "55", "64", "0xFFFFFFE0", "32", "0", "0",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_31_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "17", "0xFFFFFFE1", "3", "3", "0",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_ordinar_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "5", "1", "0xFFFFFFEF", "128", "0xFF", "0",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_one_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "17", "55", "0xFFFFFFFF", "222", "0xAA", "0",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "256", "32", "0x100000000", "256", "12", "0",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_bigger_2_in_32_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "1", "3334353453452342342354355544445321191012012", "1", "0x55", "0",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "max_size",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "100", "96", "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF", "0", "0", "0",
//!                 "0xFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main(uint256 to, uint256 from, uint256 len, uint256 calldata_len, uint8 val, bool check, uint256 ergs) external returns(uint256, uint256, uint256) {
        assembly {
            for { let i := 0 } lt(i, calldata_len) { i := add(i, 1) }
            {
                mstore8(i, val)
            }
            sstore(0, to)
            sstore(1, from)
            sstore(2, len)
            sstore(3, check)
            let result := call(ergs, address(), 0, 0, calldata_len, 32, 32)
            mstore(0, result)
            return(0, add(returndatasize(), 32))
        }
    }

    fallback() external {
        assembly {
            let to := sload(0)
            let from := sload(1)
            let len := sload(2)
            let check := sload(3)
            calldatacopy(to, from, len)

            if gt(check, 0) {
                for { let i := 0 } lt(i, len) { i := add(i, 1) }
                {
                    if iszero(eq(
                    shr(248, mload(add(to, i))),
                    shr(248, calldataload(add(from, i)))
                    )) {
                        mstore(0, 0)
                        return(0, 32)
                    }
                }
            }

            mstore(0, 1)
            return(0, 32)
        }
    }
}