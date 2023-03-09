// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

import "./Second.sol";

contract First {
    function main(address second, address third) external view returns(address, address) {
        (bool success, bytes memory returnData) = second.staticcall(abi.encodeWithSelector(Second.main.selector, third));
        require(success);
        return (abi.decode(returnData, (address, address)));
    }
}
