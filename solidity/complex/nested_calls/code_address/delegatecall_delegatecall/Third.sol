// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

contract Third {
    address constant CODE_SOURCE_CALL_ADDRESS = 0x000000000000000000000000000000000000FFFE;

    function main() public view returns(address, address) {
        address code_source;
        assembly {
            code_source := staticcall(0, CODE_SOURCE_CALL_ADDRESS, 0, 0, 0, 0)
        }
        return (address(this), code_source);
    }
}
