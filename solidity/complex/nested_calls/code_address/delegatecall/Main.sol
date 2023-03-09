// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

import "./TestContract.sol";

contract Main {
    function main(address testContract) external returns(address, address) {
        (bool success1, bytes memory returnData1) = testContract.delegatecall(abi.encodeWithSelector(TestContract.code_address.selector));
        (bool success2, bytes memory returnData2) = testContract.delegatecall(abi.encodeWithSelector(TestContract.code_source.selector));
        require(success1 && success2);
        return (abi.decode(returnData1, (address)), abi.decode(returnData2, (address)));
    }
}
