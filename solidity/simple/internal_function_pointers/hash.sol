//! { "modes": [ "Y", "E" ], "cases": [ {
//!     "name": "complex",
//!     "inputs": [
//!         {
//!             "method": "complex",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    uint8 constant ARRAY_SIZE = 40;
    uint128 constant P = 257;
    uint128 constant MODULO = 1000000007;

    function hashRecursive(uint8[ARRAY_SIZE] memory array, uint8 i, uint8 end, uint128 h) private pure returns(uint128) {
        if (i >= end) {
            return h;
        }
        h = (h * P + array[i]) % MODULO;
        return hashRecursive(array, i + 1, end, h);
    }

    function hash(uint8[ARRAY_SIZE] memory array, uint8 begin, uint8 end) private pure returns(uint128) {
        return hashRecursive(array, begin, end, 0);
    }

    function compareRecursive(uint8[ARRAY_SIZE] memory array, uint8 i, bool result) private pure returns(bool) {
        if (i >= ARRAY_SIZE/2 || !result) {
            return result;
        }
        result = result && hash(array, 0, i + 1) == hash(array, ARRAY_SIZE/2, ARRAY_SIZE/2 + i + 1)
                        && hash(array, i, ARRAY_SIZE/2) == hash(array, i + ARRAY_SIZE/2, ARRAY_SIZE);
        return compareRecursive(array, i + 1, result);
    }

    function complex() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory array;
        // generate array where first half equals second
        for(uint8 i = 0; i < ARRAY_SIZE; i++) {
            array[i] = (i % (ARRAY_SIZE / 2)) * (255 / (ARRAY_SIZE / 2 - 1));
        }

        bool result = compareRecursive(array, 0, true);

        if (result) {
            return 1;
        } else {
            return 0;
        }
    }
}