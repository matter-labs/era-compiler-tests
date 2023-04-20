//! { "system_mode": true,
//!     "modes": [ "Y >=0.8.4" ],
//!     "cases": [ {
//!     "name": "case",
//!     "inputs": [
//!         {
//!             "method": "testPointers",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!     ]
//! }  ] }

// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity >=0.8.0;

/// @notice An example of a contract that uses pointer arithmetic to optimize memory
/// copying.
/// @dev It is not used anywhere except for testing
contract Test {
    bytes expectedCalldata;

    function loadCalldataPtrIntoActivePtr() internal view {
        // Compiler hach to load the current calldata pointer into the
        // active pointer for future use.
        assembly {
            pop(staticcall(0, 0xFFEB, 0, 0xFFFF, 0, 0))
        }
    }

    function loadReturndataPtrIntoActivePtr() internal view {
        // Compiler hach to load the latest returndata pointer into the
        // active pointer for future use.
        assembly {
            pop(staticcall(0, 0xFFEA, 0, 0xFFFF, 0, 0))
        }
    }

    function getCalldataPtr() external view returns (uint256 res) {
        assembly {
            res := staticcall(0, 0xFFF0, 0, 0xFFFF, 0, 0)
        }
    }

    // Simple raw `call` (without any special flags) that uses the active pointer as
    // the calldata.
    function rawFarCallByRef(
        address callee
    ) internal returns (bool success, bytes memory returndata) {
        uint256 returndataLength = 0;
        assembly {
            pop(staticcall(or(shl(192, gas()), shl(224, 1)), 0xFFE7, 0, 0xFFFF, 0, 0))
            success := call(callee, 0xFFF6, 0, 0, 0xFFFF, 0, 0)
            returndataLength := returndatasize()
        }
        returndata = new bytes(returndataLength);

        assembly {
            returndatacopy(add(returndata, 0x20), 0, returndataLength)
        }
    }

    function testPointers() external {
        bytes memory expectedReturndata = hex"1212";

        {
            // Loading the pointer to the current calldata into the active pointer
            loadCalldataPtrIntoActivePtr();
            AssertCalldata ptrCalldataTest = new AssertCalldata(bytes.concat(Test.testPointers.selector));
            (bool success, bytes memory returndata) = rawFarCallByRef(address(ptrCalldataTest));
            require(success, "Test for calldata pointer failed");
            require(keccak256(returndata) == keccak256(expectedReturndata), "The returndata is incorrect");
        }

        {
            loadReturndataPtrIntoActivePtr();
            AssertCalldata ptrReturndataTest = new AssertCalldata(expectedReturndata);
            (bool success, ) = rawFarCallByRef(address(ptrReturndataTest));
            require(success, "Test for returndata pointer failed");
        }
    }
}

contract AssertCalldata {
    bytes32 expectedCalldataHash;
    constructor(bytes memory _expectedCalldata) {
        expectedCalldataHash = keccak256(_expectedCalldata);
    }

    fallback(bytes calldata data) external payable returns (bytes memory returndata) {
        require(keccak256(data) == expectedCalldataHash, "Calldata is incorrect");
        returndata = hex"1212";
    }
}
