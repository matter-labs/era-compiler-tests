// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24;

// "storage": {
//     "0x0000000000000000000000000000000000008006": {
//         "0x690612583382f3685b8ce5ac83aadb738903652422c990d64b61d18c89c8a9fa": "0x602A60005260006020F3",
//         "0xbbf8b90d99e7c5d9e58b371467da43114f57564687a98b46cbc2a76bf21e3e90": "0x602A602A60005260006020F3"
//     }
// }

contract Main {
    fallback() external payable {
        assembly {
            calldatacopy(0, 0, calldatasize())
            let success := call(shl(24, 1), 0xE594Ae1D7205E8e92fB22c59d040c31E1FcD139F, 0, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            if iszero(success) {
                revert(0, returndatasize())
            }
            return(0, returndatasize())
        }
    }
}
