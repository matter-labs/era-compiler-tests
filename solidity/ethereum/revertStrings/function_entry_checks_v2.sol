pragma abicoder v2;
contract C {
    function t(uint) public pure {}
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// t(uint256) -> FAILURE
