==== Source: A ====
pragma abicoder v2;

struct Data {
    uint a;
    uint[2] b;
    uint c;
}

contract A {
    function get() public view returns (Data memory) {
        return Data(5, [uint(66), 77], 8);
    }
}

contract B {
    function foo(A _a) public returns (uint) {
        return _a.get().b[1];
    }
}
==== Source: B ====
pragma abicoder v1;

import "A";

contract C is B {
    function test() public returns (uint) {
        return foo(new A());
    }
}
// ----
// test() -> 77
// gas irOptimized: 55117
// gas irOptimized code: 56800
// gas legacy: 57266
// gas legacy code: 94600
// gas legacyOptimized: 55195
// gas legacyOptimized code: 55000
