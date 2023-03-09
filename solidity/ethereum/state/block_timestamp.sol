contract C {
    constructor() {}
    function f() public returns (uint) {
        return block.timestamp;
    }
}
// ====
// compileToEwasm: also
// ----
// constructor()
// f() -> 0xdeadbeef
// f() -> 0xdeadbeef
