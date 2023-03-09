contract C {
	function f() public {}
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// f(), 1 ether -> FAILURE
// () -> FAILURE
