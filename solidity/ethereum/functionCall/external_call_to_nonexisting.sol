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
// ----
// constructor(), 1 ether ->
// gas irOptimized: 88853
// gas irOptimized code: 164400
// gas legacy: 102721
// gas legacy code: 334400
// gas legacyOptimized: 91499
// gas legacyOptimized code: 196400
// f(uint256): 0 -> FAILURE
// f(uint256): 1 -> FAILURE
// f(uint256): 2 -> FAILURE
// f(uint256): 3 -> FAILURE
// f(uint256): 4 -> FAILURE
// f(uint256): 5 -> FAILURE
// f(uint256): 6 -> 7
