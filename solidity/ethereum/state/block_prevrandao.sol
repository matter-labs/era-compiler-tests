contract C {
    function f() public view returns (uint) {
        return block.prevrandao;
    }
}
// ====
// EVMVersion: >=paris
// ----
// f() -> 0x0000000000000000000000000000000000000000000000000008e1bc9bf04000
