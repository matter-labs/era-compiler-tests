contract C {
    function f() public returns (uint) {
        return block.difficulty;
    }
}
// ====
// compileToEwasm: also
// EVMVersion: >=paris
// ----
// f() -> 2500000000000000
// f() -> 2500000000000000
// f() -> 2500000000000000
