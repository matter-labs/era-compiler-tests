contract C {
    function f() public returns (uint) {
        return block.chainid;
    }
}
// ====
// EVMVersion: >=istanbul
// ----
// f() -> 280
// f() -> 280
// f() -> 280
