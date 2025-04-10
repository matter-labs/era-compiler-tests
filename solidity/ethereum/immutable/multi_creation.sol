contract A {
	uint immutable a;
	constructor() {
		a = 7;
	}
	function f() public view returns (uint) { return a; }
}
contract B {
	uint immutable a;
	constructor() {
		a = 5;
	}
	function f() public view returns (uint) { return a; }
}
contract C {
	uint immutable a;
	uint public x;
	uint public y;
	constructor() {
		a = 3;
		x = (new A{salt: hex"00"}()).f();
		y = (new B{salt: hex"00"}()).f();
	}
	function f() public returns (uint256, uint, uint) {
		return (a, (new A{salt: hex"01"}()).f(), (new B{salt: hex"01"}()).f());
	}
}
// ====
// EVMVersion: >=constantinople
// ----
// f() -> 3, 7, 5
// gas irOptimized: 86892
// gas irOptimized code: 37200
// gas legacy: 87839
// gas legacy code: 60800
// gas legacyOptimized: 86870
// gas legacyOptimized code: 37200
// x() -> 7
// y() -> 5
