contract C {
    constructor() {}
    function f() public returns (uint) {
        return block.number;
    }
}
// ====
// compileToEwasm: also
// ----
// constructor()
// f() -> 300
// f() -> 300
