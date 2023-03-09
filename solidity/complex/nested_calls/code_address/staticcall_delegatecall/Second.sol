// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

import "./Third.sol";

contract Second {
    function main(address third) external returns(address, address) {
        (bool success, bytes memory returnData) = third.delegatecall(abi.encodeWithSelector(Third.main.selector));
        require(success);
        return (abi.decode(returnData, (address, address)));
    }
}
