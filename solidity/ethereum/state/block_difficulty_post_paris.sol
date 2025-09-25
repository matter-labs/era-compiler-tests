contract C {
    function f() public returns (uint) {
        return block.difficulty;
    }
}
// ====
// EVMVersion: >=paris
// ----
// f() -> 0xbebc200
// f() -> 0xbebc200
// f() -> 0xbebc200
