contract C {
    function f() public view returns (uint) {
        return block.prevrandao;
    }
}
// ====
// EVMVersion: >=paris
// ----
// f() -> 2500000000000000
