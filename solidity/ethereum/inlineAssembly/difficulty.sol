contract C {
    function f() public view returns (uint ret) {
        assembly {
            ret := difficulty()
        }
    }
}
// ====
// compileToEwasm: also
// EVMVersion: <paris
// ----
// f() -> 2500000000000000
