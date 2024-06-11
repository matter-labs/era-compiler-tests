//! { "targets": [ "EraVM" ], "cases": [ {
//!     "name": "test",
//!     "inputs": [
//!         {
//!             "method": "f",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1", "*", "*", "*"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

contract Test {
    TestA testA;

    constructor() {
        testA = new TestA();
    }

    function f() public returns (bool, uint, uint, uint) {
        (, bytes memory data) = address(testA).call(
            abi.encodeWithSignature("fA()")
        );
        (uint sizeA, uint sizeB) = abi.decode(data, (uint256, uint256));
        TestC testC = new TestC();
        address predicted = address(
            uint160(
                uint256(
                    keccak256(
                        bytes.concat(
                            keccak256("zksyncCreate"),
                            bytes32(uint256(uint160(address(this)))),
                            bytes32(uint256(1))
                        )
                    )
                )
            )
        );
        uint sizeMain;
        assembly {
            sizeMain := codesize()
        }
        return (
            predicted == address(testC),
            sizeMain,
            sizeA,
            sizeB
        );
    }
}

contract TestA {
    TestB immutable testB;

    constructor() {
        testB = new TestB();
    }

    function fA() public returns (uint, uint) {
        (, bytes memory data) = address(testB).delegatecall(
            abi.encodeWithSignature("fB()")
        );
        uint sizeB = abi.decode(data, (uint256));
        uint sizeA;
        assembly {
            sizeA := codesize()
        }
        return (sizeA, sizeB);
    }
}

contract TestB {
    function fB() public returns (uint) {
        new TestC();
        uint sizeB;
        assembly {
            sizeB := codesize()
        }
        return sizeB;
    }
}

contract TestC {}
