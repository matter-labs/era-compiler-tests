contract C {
	function f() external {}
	function g() external {
		C c = C(address(0x0000000000000000000000000000000000000000000000000000000000000000));
		c.f();
	}
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// g() -> FAILURE
