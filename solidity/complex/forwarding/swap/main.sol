// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

import "./callable.sol";

contract Main {
    function main(address target) external view {
        Callable callable = Callable(target);
        callable.first();
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
                0,
                0xFFD9,
                1,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
        }
        callable.second();
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
                0,
                0xFFD9,
                2,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
        }
        callable.third();
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
                0,
                0xFFD9,
                3,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
            pop(staticcall(
                0,
                0xFFD9,
                1,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
            pop(staticcall(
                0xFFFF,
                0xFFDB,
                0xFFFF,
                0xFFFF,
                0xFFFF,
                0xFFFF
            ))
        }
    }
}
