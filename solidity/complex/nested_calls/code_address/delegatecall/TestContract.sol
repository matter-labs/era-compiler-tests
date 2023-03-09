// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

contract TestContract {
    address constant CODE_SOURCE_CALL_ADDRESS = 0x000000000000000000000000000000000000FFFE;

    function code_address() public view returns(address) {
        return address(this);
    }

    function code_source() public view returns(address) {
        address code_source;
        assembly {
            code_source := staticcall(0, CODE_SOURCE_CALL_ADDRESS, 0, 0, 0, 0)
        }
        return code_source;
    }
}
