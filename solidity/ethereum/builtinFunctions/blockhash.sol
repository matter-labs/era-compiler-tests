contract C {
    function f() public returns(bytes32) {
        return blockhash(0);
    }
    function g() public returns(bytes32) {
        return blockhash(1);
    }
    function h() public returns(bytes32) {
        return blockhash(2);
    }
}
// ====
// compileToEwasm: also
// ----
// f() -> 0
// g() -> 0
// h() -> 0
