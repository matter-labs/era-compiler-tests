contract C {
    // To avoid dependency on exact length.
    function f() public view returns (bool) { return address(this).code.length > 0; }
    function g() public view returns (uint) { return address(0).code.length; }
    function h() public view returns (uint) { return address(1).code.length; }
}
// ----
// constructor() ->
// gas irOptimized: 70351
// gas irOptimized code: 95800
// gas legacy: 82380
// gas legacy code: 153800
// gas legacyOptimized: 69496
// gas legacyOptimized code: 79200
// f() -> true
// g() -> 0
// h() -> 0
