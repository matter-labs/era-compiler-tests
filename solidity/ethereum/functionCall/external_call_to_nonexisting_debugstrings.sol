// This tests skipping the extcodesize check.

interface I {
    function a() external pure;
    function b() external;
    function c() external payable;
    function x() external returns (uint);
    function y() external returns (string memory);
}
contract C {
    I i = I(address(0xcafecafe));
    constructor() payable {}
    function f(uint c) external returns (uint) {
        if (c == 0) i.a();
        else if (c == 1) i.b();
        else if (c == 2) i.c();
        else if (c == 3) i.c{value: 1}();
        else if (c == 4) i.x();
        else if (c == 5) i.y();
        return 1 + c;
    }
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// bytecodeFormat: legacy
// ----
// constructor(), 1 ether ->
// gas irOptimized: 98698
// gas irOptimized code: 284200
// gas legacy: 123258
// gas legacy code: 682400
// gas legacyOptimized: 106969
// gas legacyOptimized code: 386400
// f(uint256): 0 -> FAILURE
// f(uint256): 1 -> FAILURE
// f(uint256): 2 -> FAILURE
// f(uint256): 3 -> FAILURE
// f(uint256): 4 -> FAILURE
// f(uint256): 5 -> FAILURE
// f(uint256): 6 -> 7
