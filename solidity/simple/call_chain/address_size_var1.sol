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
//!         "1", "*", "*", "*", "3", "12", "3"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

contract Test {
    uint public x;
    uint immutable ImX;
    TestA testA;

    constructor() {
        x = 1;
        ImX = 2;
        testA = new TestA();
    }

    function f() public returns (bool, uint, uint, uint, uint, uint, uint) {
        (, bytes memory data) = address(testA).call(
            abi.encodeWithSignature("fA()")
        );
        (uint sizeA, uint sizeMain, uint imYy, uint imXx) = abi.decode(
            data,
            (uint256, uint256, uint256, uint256)
        );
        TestC testC = new TestC();
        address predicted = address(
            uint160(
                uint256(
                    keccak256(
                        bytes.concat(
                            keccak256("zksyncCreate"),
                            bytes32(uint256(uint160(address(this)))),
                            bytes32(uint256(2))
                        )
                    )
                )
            )
        );
        uint sizeMainMain;
        assembly {
            sizeMainMain := codesize()
        }
        return (
            predicted == address(testC),
            sizeMainMain,
            sizeMain,
            sizeA,
            ImX + x,
            imYy,
            imXx
        );
    }

    function f2() public returns (uint, uint) {
        new TestC();
        uint sizeMain;
        assembly {
            sizeMain := codesize()
        }
        return (sizeMain, ImX + x);
    }
}

contract TestA {
    uint public y;
    uint immutable ImY;
    address immutable sender;

    constructor() {
        y = 4;
        ImY = 8;
        sender = msg.sender;
    }

    function fA() public returns (uint, uint, uint, uint) {
        (, bytes memory data) = address(sender).call(
            abi.encodeWithSignature("f2()")
        );
        (uint sizeMain, uint imXx) = abi.decode(data, (uint256, uint256));
        uint sizeA;
        assembly {
            sizeA := codesize()
        }
        return (sizeA, sizeMain, ImY + y, imXx);
    }
}

contract TestC {}
