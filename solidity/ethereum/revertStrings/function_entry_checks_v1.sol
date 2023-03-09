pragma abicoder v1;
contract C {
    function t(uint) public pure {}
}
// ====
// EVMVersion: >=byzantium
// ABIEncoderV1Only: true
// revertStrings: debug
// compileViaYul: false
// ----
// t(uint256) -> FAILURE
