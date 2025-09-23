contract C {
    function f() public returns (address) {
        return tx.origin;
    }
}
// ----
// f() -> 0xdeadbeef00000000000000000000000000000001
// f() -> 0xdeadbeef00000000000000000000000000000001
// f() -> 0xdeadbeef00000000000000000000000000000001
