// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

import "./Second.sol";

contract First {
    function main(address second, address third) external returns(address, address) {
        (bool success, bytes memory returnData) = second.delegatecall(abi.encodeWithSelector(Second.main.selector, third));
        require(success);
        return (abi.decode(returnData, (address, address)));
    }
}
