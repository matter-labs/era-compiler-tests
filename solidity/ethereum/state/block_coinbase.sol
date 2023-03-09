contract C {
    function f() public returns (address payable) {
        return block.coinbase;
    }
}
// ====
// compileToEwasm: also
// ----
// f() -> 0x0000000000000000000000000000000000008001
// f() -> 0x0000000000000000000000000000000000008001
// f() -> 0x0000000000000000000000000000000000008001
