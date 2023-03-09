contract C {
    function f() public returns (uint) {
        return block.gaslimit;
    }
}
// ====
// compileToEwasm: also
// ----
// f() -> 0x40000000
// f() -> 0x40000000
// f() -> 0x40000000
