// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

import "./callable.sol";

contract Main {
    fallback() external {
        Callable callable = abi.decode(msg.data, (Callable));
        (bool success, bytes memory data) = address(callable).call(msg.data);
        assembly {
            pop(staticcall(
                0xFFFF,
                0xFFEA,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
            pop(staticcall(
                0xFFFF,
                0xFFDA,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
        }
    }
}
