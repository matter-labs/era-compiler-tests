//! { "cases": [ {
//!     "name": "zero_equals_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "0", "0xd1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "zero_len_plus_one",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "1", "0x01"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x0100000000000000000000000000000000000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "zero_len_plus_ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "17", "0x44"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x4444444444444444444444444444444444000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "zero_len_plus_31",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "31", "0x00"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "zero_len_plus_32",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "32", "0xee"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
//!     ]
//! }, {
//!     "name": "zero_bigger_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0", "2048", "0xff"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!     ]
//! }, {
//!     "name": "one_smaller_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "0", "0xab"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "one_equals_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "1", "0xd1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "one_len_plus_one",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "2", "0x01"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x0100000000000000000000000000000000000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "one_len_plus_ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "18", "0x44"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x4444444444444444444444444444444444000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "one_len_plus_31",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "32", "0x00"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "one_len_plus_32",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "33", "0xee"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
//!     ]
//! }, {
//!     "name": "one_bigger_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "1", "34", "0xff"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!     ]
//! }, {
//!     "name": "small_ordinar_smaller_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "19", "15", "0xab"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "small_ordinar_equals_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "19", "19", "0xd1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "small_ordinar_len_plus_one",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "19", "20", "0x01"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x0100000000000000000000000000000000000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "small_ordinar_len_plus_ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "19", "36", "0x44"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x4444444444444444444444444444444444000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "small_ordinar_len_plus_31",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "19", "50", "0x00"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "small_ordinar_len_plus_32",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "19", "51", "0xee"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
//!     ]
//! }, {
//!     "name": "small_ordinar_bigger_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "19", "777", "0xff"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!     ]
//! }, {
//!     "name": "word_smaller_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "1", "0xab"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "word_equals_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "32", "0xd1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "word_len_plus_one",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "33", "0x01"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x0100000000000000000000000000000000000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "word_len_plus_ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "49", "0x44"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x4444444444444444444444444444444444000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "word_len_plus_31",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "63", "0x00"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "word_len_plus_32",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "64", "0xee"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
//!     ]
//! }, {
//!     "name": "word_bigger_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "32", "1000", "0xff"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!     ]
//! }, {
//!     "name": "ordinar_smaller_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "2383", "1223", "0xab"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_equals_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "2383", "2383", "0xd1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_len_plus_one",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "2383", "2384", "0x01"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x0100000000000000000000000000000000000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "ordinar_len_plus_ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "2383", "2400", "0x44"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x4444444444444444444444444444444444000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "ordinar_len_plus_31",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "2383", "2414", "0x00"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_len_plus_32",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "2383", "2415", "0xee"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
//!     ]
//! }, {
//!     "name": "ordinar_bigger_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "2383", "5000", "0xff"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!     ]
//! }, {
//!     "name": "ordinar_words_smaller_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xF100", "32", "0xab"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_words_equals_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xF100", "0xF100", "0xd1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_words_len_plus_one",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xF100", "0xF101", "0x01"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x0100000000000000000000000000000000000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "ordinar_words_len_plus_ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xF100", "0xF111", "0x44"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0x4444444444444444444444444444444444000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "ordinar_words_len_plus_31",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xF100", "0xF11F", "0x00"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_words_len_plus_32",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xF100", "0xF120", "0xee"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
//!     ]
//! }, {
//!     "name": "ordinar_words_bigger_len",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xF100", "0xF200", "0xff"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!     ]
//! }, {
//!     "name": "big_ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFAA", "0", "0xff"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_64",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFC0", "15", "0xAB"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_63",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFC1", "15", "0xAB"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_ordinar_between_32_64",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFCF", "1", "0xFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_33",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFDF", "100", "0xBA"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1",
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_32",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFE0", "121", "0xAA"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_31",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFE1", "23", "0xBC"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFEF", "32", "0xFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32_minus_one",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFFF", "128", "0x55"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "2_in_32",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0x100000000", "100", "0xE8"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_bigger_2_in_32",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "3334353453452342342354355544445321191012012", "50", "0xAB"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "max",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF", "233", "0xFF"
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
    function main(uint256 index, uint256 len, uint8 val) external {
        assembly {
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(i, val)
            }
            sstore(0, index)
            let result := call(gas(), address(), 0, 0, len, 32, 32)
            mstore(0, result)
            return(0, add(returndatasize(), 32))
        }
    }

    fallback() external {
        assembly {
            let index := sload(0)
            mstore(0, calldataload(index))
            return(0, 32)
        }
    }
}
