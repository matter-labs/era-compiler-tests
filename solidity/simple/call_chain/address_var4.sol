//! { "cases": [ {
//!     "name": "test",
//!     "inputs": [
//!         {
//!             "method": "f",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "3", "9", "48", "1",  "1", "1"
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

    function f() public returns (uint, uint, uint, bool, bool, bool) {
        (, bytes memory data) = address(testA).delegatecall(
            abi.encodeWithSignature("fA()")
        );
        (uint imYy, uint imZz, address addrA, address addrB) = abi.decode(
            data,
            (uint256, uint256, address, address)
        );

        return (
            ImX + x,
            imYy,
            imZz,
            address(this) == addrA,
            address(this) != addrB,
            addrA != addrB
        );
    }
}

contract TestA {
    uint public y;
    uint immutable ImY;
    TestB immutable testB;

    constructor() {
        y = 4;
        ImY = 8;
        testB = new TestB();
    }

    function fA() public returns (uint, uint, address, address) {
        (, bytes memory data) = address(testB).call(
            abi.encodeWithSignature("fB()")
        );
        (uint imZz, address addrB) = abi.decode(data, (uint256, address));

        return (ImY + y, imZz, this.fA.address, addrB);
    }
}

contract TestB {
    uint public z;
    uint immutable ImZ;

    constructor() {
        z = 16;
        ImZ = 32;
    }

    function fB() public returns (uint, address) {
        new TestC();
        return (ImZ + z, this.fB.address);
    }
}

contract TestC {}
